import {
  APIGatewayProxyEvent,
  APIGatewayProxyResult
} from "aws-lambda";

export const handler = async (
  event: APIGatewayProxyEvent
): Promise<APIGatewayProxyResult> => {

  const e : APIGatewayProxyEvent = event
  return new Promise<APIGatewayProxyResult>((resolve: (arg0: { event: APIGatewayProxyEvent; statusCode: number; }) => void, reject: (arg0: any) => void) => {
    if (!e) {
      reject("Error!")
    } else {
      resolve({ event: e, statusCode: 200 })
    }
  })
}
