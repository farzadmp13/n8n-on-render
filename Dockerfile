FROM n8nio/n8n:latest

# Ensure .n8n directory exists with correct permissions
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

USER node

# Expose internal n8n port (Render replaces this with $PORT automatically)
EXPOSE 5678

# Run n8n dynamically using Render PORT
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start", "--host=0.0.0.0", "--port=$PORT"]
