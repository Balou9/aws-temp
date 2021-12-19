shopping_basket="sb412429"

test_receipt_upsert_204() {
  printf "test_receipt_upsert_204\n"
  resp_head="$(mktemp)"
  resp_body="$(mktemp)"

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

test_receipt_upsert_400_no_body() {
  printf "test_receipt_upsert_400_no_body/n"
  resp_head="$(mktemp)"

  lurc \
    -X "PUT" \
    -H "content-type: application/json" \
    -D "$resp_head" \
    "$_BASE_URL/receipt/$shopping_basket"

  assert_status "$resp_head" 400
}

test_receipt_upsert_415_no_content_type() {
  printf "test_receipt_upsert_415_no_content_type/n"
  resp_head="$(mktemp)"

  lurc \
    -X "PUT" \
    --data @./api-gateway/lambdas/test/fixtures/shopping_basket.json \
    -D "$resp_head" \
    "$_BASE_URL/receipt/$shopping_basket"

  assert_status "$resp_head" 415
}

test_receipt_upsert_415_unexpected_content_type() {
  printf "test_receipt_upsert_415_unexpected_content_type/n"
  resp_head="$(mktemp)"

  lurc \
    -X "PUT" \
    -H "content-type: application/xml" \
    --data @./api-gateway/lambdas/test/fixtures/shopping_basket.json \
    -D "$resp_head" \
    "$_BASE_URL/receipt/$shopping_basket"

  assert_status "$resp_head" 415
}
