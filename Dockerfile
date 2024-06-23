#Build the angular app Using the production config

FROM node:latest as build
#Setting working directory
WORKDIR /app
#Copy the package.json and package-lock.json to the working directory
COPY . .
#Install the dependencies
RUN npm ci
RUN npm install -g @angular/cli
#Copy the source code to the working directory

#Build the angular app
RUN npm run build --configuration=production

# We use the nginx image to serve the content
FROM nginx:latest
COPY  ./nginx.conf /etc/nginx/conf.d/default.conf
#Copy the build output to replace the default nginx contents.
COPY --from=build /app/dist/landing-page/browser /usr/share/nginx/html
EXPOSE 80
