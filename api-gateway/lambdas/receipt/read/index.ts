import {
  APIGatewayProxyEvent,
  APIGatewayProxyResult
} from "aws-lambda";

export const handler = async (
  event: APIGatewayProxyEvent
): Promise<APIGatewayProxyResult> => {
  const ev = JSON.stringify(event);
  return {
    statusCode: 200,
    body: `Ev: ${ev}`
}
