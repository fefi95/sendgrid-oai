FROM node

ADD https://github.com/stoplightio/prism/releases/download/v4.3.0/prism-cli-linux prism
RUN chmod +x prism

EXPOSE 4010

CMD ["./prism", "mock", "https://raw.githubusercontent.com/sendgrid/sendgrid-oai/HEAD/oai_stoplight.json", "--port", "4010", "-h", "0.0.0.0"]
