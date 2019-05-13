/*
 * Copyright information
 */

#include "viewer_file.h"

/* Private structure definition. */
typedef struct {
  gchar *filename;
  /* stuff */
} ViewerFilePrivate;

/* 
 * forward definitions
 */

struct _ViewerFile {
    GObject parent_instance;

    /* Other members, including private data. */
};

G_DEFINE_TYPE_WITH_PRIVATE (ViewerFile, viewer_file, G_TYPE_OBJECT)
