# Discord Bot

This open-source Discord bot is written in Ruby and uses the Discordrb gem, Active Record, and PostgreSQL. It is designed to be easily maintainable and scalable, following best practices for structuring a Ruby project.

## Features status | development [0] - currently working [1] - needs attention [2]

- [0] Role-based commands for super_admins, admins, and regular members.
- [1] Dockerized application for easy setup and deployment.
- [1] PostgreSQL database for data storage and management.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Discord Configuration

1. Go to the [Discord Developer Portal](https://discord.com/developers/applications) and sign in.
2. Click on the "New Application" button and enter a name for your bot.
3. On the application's page, you'll find the `Application ID`. Copy it and save it for later.
4. Click on the "Bot" tab on the left sidebar, then click on the "Add Bot" button.
5. You'll now see the `Bot Token`. Click the "Copy" button to save it for later.

## Setup

1. Clone the repository:

```sh
git clone git@github.com:gxolivei/ruby-discord-bot.git
cd ruby-discord-bot
```

2. Copy the `.env.example` file and rename it as `.env`. You will find the file in the project root with the following variables:

```
BOT_TOKEN=your_bot_token
APPLICATION_ID=your_application_id
POSTGRES_USER=your_postgres_username
POSTGRES_PASSWORD=your_postgres_password
POSTGRES_DB=your_postgres_db
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
```

Replace the placeholders with your actual bot token, application ID, and desired PostgreSQL credentials.

3. Run the following command to start the services:

```sh
docker-compose up
```

This will build your Discord bot image, start the bot service, and set up a PostgreSQL container.

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change. Please ensure that you follow the code style and structure used in the project.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).