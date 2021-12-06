export const handler = async (event: any = {}): Promise<any> => {
  try {
    return { statusCode: 200 }
  } catch (err) {
    return { err }
  }
}
