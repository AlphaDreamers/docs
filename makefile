procedure:
	@echo "Starting procedure..."
	@git add .
	@git commit -m "Commit Changes"
	@git pull origin main
	@git push origin main
	@echo "Procedure completed."
