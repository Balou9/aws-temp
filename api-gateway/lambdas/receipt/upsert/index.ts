import {
  APIGatewayProxyEventV2,
  APIGatewayProxyResult
} from "aws-lambda";

export const handler = async (
  event: APIGatewayProxyEventV2
): Promise<APIGatewayProxyResult> => {

  if (!event.body || !event.body.length) {
    return { statusCode: 400 }
  }

  const contentType = event.headers["content-type"];

  if (!contentType || !contentType.startsWith("application/json")) {
    return { statusCode: 415 }
  }

  return {
    statusCode: 204,
    body: `Event: ${JSON.stringify(event)}`
  }
}
