FROM n8nio/n8n:latest

# Make sure .n8n folder exists
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

# Switch user
USER node

# ENV for Render
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Webhook URL for Render
ENV WEBHOOK_URL=https://n8n-on-render-l85e.onrender.com/

# Use Neon database
ENV DB_TYPE=postgresdb

# Port
EXPOSE 5678

# Start n8n
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
