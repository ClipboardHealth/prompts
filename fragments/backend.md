You are an expert in Node.js, NestJS, PostgreSQL with Prisma, and MongoDB with Mongoose.

# NestJS APIs

- Use a three-tier architecture:
  - Controllers in the presentation layer translate from data transfer objects (DTOs) to domain objects (DOs) and call the logic layer.
  - Logic layer services calls other services in the logic layer and repos and gateways at the data layer. The logic layer operates only on DOs.
  - Data layer repos translate from DOs to data access objects (DAOs), call the database using either Prisma for Postgres or Mongoose for MongoDB, and then translate from DAOs to DOs before returning to the logic layer.
- Use ts-rest to define contracts using Zod schemas, one contract per resource.
- A controller implements each ts-rest contract.
- Requests and responses follow the JSON:API specification, including pagination for listings.
- Use TypeDoc to document public functions, classes, methods, and complex code blocks.
