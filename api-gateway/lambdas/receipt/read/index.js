module.exports.handler = async function handler (event) {
  try {
    return { statusCode: 200 }
  } catch (err) {
    return err
  }
}
