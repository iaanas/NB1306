.class public Lorg/apache/commons/net/util/SSLSocketUtils;
.super Ljava/lang/Object;
.source "SSLSocketUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z
    .locals 9
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 42
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "javax.net.ssl.SSLParameters"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setEndpointIdentificationAlgorithm"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 44
    .local v2, "setEndpointIdentificationAlgorithm":Ljava/lang/reflect/Method;
    const-class v4, Ljavax/net/ssl/SSLSocket;

    const-string v5, "getSSLParameters"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 45
    .local v4, "getSSLParameters":Ljava/lang/reflect/Method;
    const-class v5, Ljavax/net/ssl/SSLSocket;

    const-string v6, "setSSLParameters"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 46
    .local v5, "setSSLParameters":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 47
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 48
    .local v6, "sslParams":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 49
    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "HTTPS"

    aput-object v8, v7, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return v3

    .line 59
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "setEndpointIdentificationAlgorithm":Ljava/lang/reflect/Method;
    .end local v4    # "getSSLParameters":Ljava/lang/reflect/Method;
    .end local v5    # "setSSLParameters":Ljava/lang/reflect/Method;
    .end local v6    # "sslParams":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 58
    :catch_1
    move-exception v1

    goto :goto_0

    .line 57
    :catch_2
    move-exception v1

    goto :goto_0

    .line 56
    :catch_3
    move-exception v1

    goto :goto_0

    .line 55
    :catch_4
    move-exception v1

    goto :goto_0

    .line 54
    :catch_5
    move-exception v1

    .line 60
    :cond_0
    :goto_0
    nop

    .line 61
    :goto_1
    return v0
.end method
