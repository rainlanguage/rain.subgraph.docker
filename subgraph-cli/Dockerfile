# Use the official Node.js image as the base image
FROM node

# Set the working directory in the container
WORKDIR /app

RUN npm install -g @graphprotocol/graph-cli

# Expose the necessary port for Hardhat node (default is 8545)
EXPOSE 8545

# Run Hardhat node at localhost
CMD ["npm", "run", "start"]