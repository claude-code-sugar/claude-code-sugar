#!/bin/bash

set -e

install_nodejs() {
    local platform=$(uname -s)
    
    case "$platform" in
        Linux|Darwin)
            # Check if Command Line Tools is installed in Mac
            if [ "$platform" = "Darwin" ]; then
                if ! xcode-select --print-path &> /dev/null; then
                    echo "❌ Xcode Command Line Tools not found on macOS"
                    echo "📝 Please install it first by running:"
                    echo "   xcode-select --install"
                    echo ""
                    echo "🔄 After installation completes, please run this script again."
                    exit 1
                fi
                echo "✅ Xcode Command Line Tools found"
            fi
            
            echo "🚀 Installing Node.js on Unix/Linux/macOS..."
            
            echo "📥 Downloading and installing nvm..."
            curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
            
            echo "🔄 Loading nvm environment..."
            \. "$HOME/.nvm/nvm.sh"
            
            echo "📦 Downloading and installing Node.js v22..."
            nvm install 22
            
            echo -n "✅ Node.js installation completed! Version: "
            node -v # Should print "v22.17.0".
            echo -n "✅ Current nvm version: "
            nvm current # Should print "v22.17.0".
            echo -n "✅ npm version: "
            npm -v # Should print "10.9.2".
            ;;
        *)
            echo "Unsupported platform: $platform"
            exit 1
            ;;
    esac
}

# Check if Node.js is already installed and version is >= 18
if command -v node >/dev/null 2>&1; then
    current_version=$(node -v | sed 's/v//')
    major_version=$(echo $current_version | cut -d. -f1)
    
    if [ "$major_version" -ge 18 ]; then
        echo "Node.js is already installed: v$current_version"
    else
        echo "Node.js v$current_version is installed but version < 18. Upgrading..."
        install_nodejs
    fi
else
    echo "Node.js not found. Installing..."
    install_nodejs
fi

# Check if Claude Code is already installed
if command -v claude >/dev/null 2>&1; then
    echo "✅ Claude Code is already installed, your have to remove original claude code first: $(claude --version)"
    echo "💡 If you want to reinstall, please uninstall first with:"
    echo "   npm uninstall -g @anthropic-ai/claude-code"
    echo ""
    echo "🚪 Installation script exiting..."
    exit 0
else
    echo "Claude Code not found. Installing..."
    npm i -g claude-code-sugar --registry=https://registry.npmmirror.com
    
    # Get npm global bin directory
    echo "🔍 Detecting npm global bin directory..."
    npm_prefix=$(tnpm config get prefix 2>/dev/null || npm config get prefix 2>/dev/null)
    if [ -n "$npm_prefix" ]; then
        npm_bin_dir="$npm_prefix/bin"
        echo "📁 npm global bin directory: $npm_bin_dir"
    else
        echo "⚠️  Could not detect npm global bin directory"
        npm_bin_dir=""
    fi
fi

# Configure Claude Code to skip onboarding and search key.
echo "Configuring Claude Code by using iflow key..."
node --eval '
    const homeDir = os.homedir(); 
    const filePath = path.join(homeDir, ".claude.json");
    if (fs.existsSync(filePath)) {
        const content = JSON.parse(fs.readFileSync(filePath, "utf-8"));
        fs.writeFileSync(filePath,JSON.stringify({ ...content, hasCompletedOnboarding: true }, 2), "utf-8");
    } else {
        fs.writeFileSync(filePath,JSON.stringify({ hasCompletedOnboarding: true }), "utf-8");
    }'

# Prompt user for API key
echo "🔑 Please enter your iflow API key:"
echo "   You can get your API key from: https://iflow.cn/?open=setting"
echo "   Note: The input is hidden for security. Please paste your API key directly."
echo ""
read -s api_key
echo ""

if [ -z "$api_key" ]; then
    echo "⚠️  API key cannot be empty. Please run the script again."
    exit 1
fi

# Generate default proxy config for user
echo "📄 Creating proxy configuration file..."
proxy_config_dir="$HOME/.config/claude-code-sugar"
proxy_config_file="$proxy_config_dir/config.json"

# Create directory if it doesn't exist
mkdir -p "$proxy_config_dir"

# Create proxy config JSON with user's API key
# Default to use Qwen3-Coder
cat > "$proxy_config_file" << EOF
{
  "baseURL": "https://apis.iflow.cn/v1/",
  "apiKey": "$api_key",
  "modelMapping": {
    "claude-3-5-haiku-20241022": "DeepSeek-V3",
    "claude-3-7-sonnet-20250219": "DeepSeek-V3",
    "claude-opus-4-20250514": "Qwen3-Coder",
    "claude-sonnet-4-20250514": "Qwen3-Coder"
  },
  "searchApiKey": "$api_key"
}
EOF

echo "✅ Proxy configuration created at $proxy_config_file, you can change model by modifying this config later."

# Detect current shell and determine rc file
current_shell=$(basename "$SHELL")
case "$current_shell" in
    bash)
        rc_file="$HOME/.bashrc"
        ;;
    zsh)
        rc_file="$HOME/.zshrc"
        ;;
    fish)
        rc_file="$HOME/.config/fish/config.fish"
        ;;
    *)
        rc_file="$HOME/.profile"
        ;;
esac

# Ensure rc_file exists, create if not
if [ ! -f "$rc_file" ]; then
    echo "📄 Creating $rc_file..."
    touch "$rc_file"
    echo "✅ Created $rc_file"
fi

# Check if claude command is available after installation
if ! command -v claude >/dev/null 2>&1 && [ -n "$npm_bin_dir" ]; then
    echo "🔧 claude command not found in PATH, adding npm global bin to PATH..."
    need_path_update=true
else
    need_path_update=false
fi

# Add environment variables and PATH to rc file
echo ""
echo "📝 Adding environment variables to $rc_file..."

# Check if variables already exist to avoid duplicates
path_exists=false

if [ -f "$rc_file" ]; then
    if [ -n "$npm_bin_dir" ] && grep -q "$npm_bin_dir" "$rc_file"; then
        path_exists=true
    fi
fi

# Add PATH configuration if needed and not already present
if [ "$need_path_update" = true ] && [ "$path_exists" = false ]; then
    echo "" >> "$rc_file"
    echo "# Add npm global bin to PATH for Claude Code" >> "$rc_file"
    echo "export PATH=\"$npm_bin_dir:\$PATH\"" >> "$rc_file"
    echo "✅ Added $npm_bin_dir to PATH in $rc_file"
elif [ "$need_path_update" = true ] && [ "$path_exists" = true ]; then
    echo "⚠️ PATH already contains $npm_bin_dir in $rc_file. Skipping..."
fi

echo ""
echo "🎉 Installation completed successfully!"
echo ""

# Provide restart instructions
echo "🔄 Please restart your terminal or run:"
echo "   source $rc_file"
echo ""

# Final verification attempt
echo "🔍 Verifying claude installation..."
if command -v claude >/dev/null 2>&1; then
    echo "✅ claude command is available: $(claude --version)"
    echo ""
    echo "🚀 You can start using Claude Code with:"
    echo "   claude"
else
    echo "⚠️  claude command not found. Please restart your terminal and run:"
    echo "   source $rc_file"
    echo "   claude --version"
    echo ""
    echo "🚀 If still not working, try:"
    if [ -n "$npm_bin_dir" ]; then
        echo "   export PATH=\"$npm_bin_dir:\$PATH\""
    fi
    echo "   claude"
fi
