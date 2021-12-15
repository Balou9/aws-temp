test_receipt_upsert_204() {
  printf "test_receipt_upsert_204\n"
  resp_head="$(mktemp)"
  resp_body="$(mktemp)"

  shopping_basket="sb412429"

  lurc \
  -X "PUT" \
  -H "content-type: application/json" \
  --data @./api-gateway/lambdas/test/fixtures/shopping_basket.json \
  -D "$resp_head" \
  "$_BASE_URL/receipt/$shopping_basket"
  > "$resp_body"

  cat "$resp_body"
  assert_status "$resp_head" 204

}
