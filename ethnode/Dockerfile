# Ubuntu is fine even though it's not the smallest image
FROM ghcr.io/foundry-rs/foundry:latest

RUN anvil --version

# Expose the necessary port for anvil (default is 8545)
EXPOSE 8545

# Run anvil
CMD ["anvil"]