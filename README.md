# React + Vite Docker Template

A beginner-friendly example showing how to containerize a React application built with **Vite** and run it using Docker.
This project uses a simple multi-stage Dockerfile and Vite’s built-in preview server inside the container.

---

## 🚀 Features

* ⚛️ React + Vite setup
* 🐳 Fully containerized with Docker
* 🏗️ Multi-stage Docker build
* 🔥 Uses `vite preview` in production mode (no Nginx required)
* 📦 Small and fast production image
* 👶 Beginner-friendly and easy to follow

---

## 📁 Project Structure

```
react-docker-template/
│── src/
│── public/
│── Dockerfile
│── .dockerignore
│── package.json
│── vite.config.js
└── README.md
```

---

## 🐳 Docker Setup

### 1️⃣ Build the Docker image

Run this inside the project folder:

```bash
docker build -t react-docker-template .
```

### 2️⃣ Run the container

```bash
docker run -d -p 8080:4173 react-docker-template
```

Vite’s preview server runs on port **4173**, so we map it to **8080** on your system.

Now open:

👉 **[http://localhost:8080](http://localhost:8080)**

---

## 🧱 Dockerfile (for reference)

```dockerfile
# Build stage
FROM node:20-alpine AS build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Production stage
FROM node:20-alpine AS prod
WORKDIR /app

COPY --from=build /app ./

EXPOSE 4173

CMD [ "npm", "run", "preview" ]
```

---

## 🧪 Run Locally (Without Docker)

```bash
npm install
npm run dev
```

---

## 📦 Production Build

```bash
npm run build
npm run preview
```

---

## 🛠️ Customize Vite Preview Port

If you want to change the port from **4173**, edit your `vite.config.js`:

```js
export default defineConfig({
  preview: {
    port: 4173, // change this if needed
  },
});
```

---


If you want, I can include screenshots, a project banner, or add step-by-step Docker explanation inside the README.

