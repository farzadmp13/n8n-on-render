FROM n8nio/n8n:latest

# Force correct home directory ownership
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

# Switch back
USER node

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-on-render-l85e.onrender.com/

EXPOSE 5678

# Correct command
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]