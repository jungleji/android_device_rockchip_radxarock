#ifndef __HDCP_H__

/* HDCP sysfs node */
#define HDCP_FIRMWARE_LOADING	"/sys/class/firmware/hdcp/loading"
#define HDCP_FIRMWARE_DATA		"/sys/class/firmware/hdcp/data"
#define HDCP_ENABLE				"/sys/class/misc/hdcp/enable"
#define HDCP_TRYTIMES			"/sys/class/misc/hdcp/trytimes"

/* HDCP Key file path */
#define KEY_FILE "/system/vendor/firmware/hdcp.keys"
/* HDCP SRM file path */
#define SRM_FILE "/system/vendor/firmware/hdcp.srm"

/* HDCP key size */
#define HDCP_KEY_SIZE	308

/* HDCP authentication size */
#define HDCP_AUTH_RETRY_TIMES	20

//#define HDCP_KEY_READ_FROM_FILE

#define HDCP_KEY_READ_FROM_IDB
#define HDCP_KEY_IDB_OFFSET		32

// If key is encrypted, set true. default is false.
#define HDCP_KEY_ENCRYPTED		0

extern void Hdcp_init(void);

#endif /*__HDCP_H__*/