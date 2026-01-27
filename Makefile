# Name of the PM2 process
APP_NAME = bookshelf-api

# Command to run the app (usually npm)
CMD = npm

# Arguments for the command
ARGS = run start

.PHONY: start stop restart delete logs list setup

# Start the application
start:
	pm2 start $(CMD) --name "$(APP_NAME)" -- $(ARGS)

# Stop the application
stop:
	pm2 stop $(APP_NAME)

# Restart the application
restart:
	pm2 restart $(APP_NAME)

# Delete the process from PM2
delete:
	pm2 delete $(APP_NAME)

# View real-time logs
logs:
	pm2 logs $(APP_NAME)

# List all PM2 processes
list:
	pm2 list

# Kill all PM2 processes (Use with caution)
kill:
	pm2 kill

# Setup PM2 Startup script (Run once on server)
startup:
	pm2 startup
	pm2 save