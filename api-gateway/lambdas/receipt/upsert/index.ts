import {
  APIGatewayProxyEvent,
  APIGatewayProxyResult
} from "aws-lambda";

export const handler = async (
  event: APIGatewayProxyEvent
): Promise<APIGatewayProxyResult> => {
  const params = JSON.stringify(event.queryStringParameters);
  return {
    statusCode: 204,
    body: `Params: ${params}`
  }
}
