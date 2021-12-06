export const handler = async function (event: any = {}): Promise<any> => {
  try {
    return { statusCode: 200 }
  } catch (err) {
    return err
  }
}
