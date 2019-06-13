.class public Lorg/apache/commons/net/tftp/TFTPPacketException;
.super Ljava/lang/Exception;
.source "TFTPPacketException.java"


# static fields
.field private static final serialVersionUID:J = -0x709d33fb07200fefL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
