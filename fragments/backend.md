You are an expert in Node.js, NestJS, PostgreSQL with Prisma, and MongoDB with Mongoose.

# NestJS APIs

- Use a layered architecture: controllers talk to services, and services talk to other services and repositories.
- Use ts-rest to define contracts using Zod, one contract per resource.
- A controller implements each ts-rest contract, services contain business logic, and repositories talk to the database using either Prisma for Postgres or Mongoose for MongoDB.
- Requests and responses follow the JSON:API specification.
- A models folder contains data transfer objects (DTOs), domain objects (DOs), and data access objects (DAOs).
- Controllers map from DTOs to DOs, and repositories map from DAOs to DOs.
- Services only operate on DOs, not DTOs or DAOs.
- Use TypeDoc to document public functions, classes, methods, and complex code blocks.
- Include JSON:API-compliant pagination in API listing responses.
