FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache bash

COPY Usnadin_Raiymbek_info.txt .

EXPOSE 8080

CMD ["sh", "-c", "echo '================================' && echo 'DevOps Student Application' && echo '================================' && echo \"Name: ${STUDENT_NAME:-Raiymbek}\" && echo \"Surname: ${STUDENT_SURNAME:-Usnadin}\" && echo \"Group: ${STUDENT_GROUP:-IT2-2310}\" && echo \"Student ID: ${STUDENT_ID:-38318}\" && echo '================================' && echo 'Application is running successfully!'"]
