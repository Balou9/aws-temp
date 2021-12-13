test_receipt_upsert_204() {
  printf "test_receipt_upsert_204\n"
  resp_head="$(mktemp)"
  resp_body="$(mktemp)"

  lurc \
  -X "PUT" \
  -H "content-type: application/json" \
  --data @./test/fixtures/shopping_basket.json \
  -D "$resp_head" \
  "$_BASE_URL/receipt"
  > "$resp_body"

  cat "$resp_body"
  assert_status "$resp_head" 204

}
