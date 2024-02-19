# Makefile
export PORT=:8080

# Setup installs templ and air for development
setup:
	@echo "Installing templ and air..."
	@go install github.com/a-h/templ/cmd/templ@latest
	@go install github.com/cosmtrek/air@latest
	@echo "Installation complete."

# Tailwind setup (assuming you have Node.js and npm/yarn installed)
tailwind-setup:
	@echo "Setting up Tailwind CSS..."
	@npm init -y
	@npm install -D tailwindcss
	@npx tailwindcss init
	@echo "Tailwind CSS setup complete."

# Convenience command to start the development server with air
dev:
	@echo "Starting the development server with air..."
	@air
