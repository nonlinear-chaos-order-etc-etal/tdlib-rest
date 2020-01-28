#pragma once

#include "td/telegram/tdjson_export.h"

#ifdef __cplusplus
extern "C" {
#endif

TDJSON_EXPORT void *td_json_client_create();

TDJSON_EXPORT void td_json_client_send(void *client, const char *request);

TDJSON_EXPORT const char *td_json_client_receive(void *client, double timeout);

TDJSON_EXPORT const char *td_json_client_execute(void *client, const char *request);

TDJSON_EXPORT void td_json_client_destroy(void *client);

#ifdef __cplusplus
}  // extern "C"
#endif

