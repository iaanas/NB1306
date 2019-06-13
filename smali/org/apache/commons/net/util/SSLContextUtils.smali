.class public Lorg/apache/commons/net/util/SSLContextUtils;
.super Ljava/lang/Object;
.source "SSLContextUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "keyManager"    # Ljavax/net/ssl/KeyManager;
    .param p2, "trustManager"    # Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-array v3, v2, [Ljavax/net/ssl/KeyManager;

    aput-object p1, v3, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljavax/net/ssl/TrustManager;

    aput-object p2, v0, v1

    :goto_1
    invoke-static {p0, v3, v0}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public static createSSLContext(Ljava/lang/String;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .locals 5
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "trustManagers"    # [Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    :try_start_1
    invoke-virtual {v1, p1, p2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    nop

    .line 71
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 67
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    :goto_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not initialize SSL context"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 69
    throw v2
.end method
