FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-on-render-l85e.onrender.com/
ENV N8N_BASIC_AUTH_ACTIVE=true

EXPOSE 5678

CMD ["n8n"]
