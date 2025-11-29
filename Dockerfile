FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

USER node

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-on-render-l85e.onrender.com/

# استفاده از دیتابیس خارجی (Neon)
ENV DB_TYPE=postgresdb

EXPOSE 5678

ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
