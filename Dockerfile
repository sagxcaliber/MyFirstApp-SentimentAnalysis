FROM node:18 AS frontend
WORKDIR /app/frontend
COPY SentimentOfMovieReviewsApp/sentiment-analyzer/ ./

RUN npm install && npm run build

FROM python:3.10-slim

WORKDIR /app
COPY SentimentOfMovieReviews./ ./backend
COPY SentimentOfMovieReviews./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt uvicorn

RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && npm install -g serve

COPY --from=frontend /app/frontend/dist ./frontend/dist

COPY start.sh .

EXPOSE 3000 8000

CMD ["./start.sh"]

