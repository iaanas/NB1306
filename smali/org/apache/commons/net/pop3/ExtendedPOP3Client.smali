.class public Lorg/apache/commons/net/pop3/ExtendedPOP3Client;
.super Lorg/apache/commons/net/pop3/POP3SClient;
.source "ExtendedPOP3Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3SClient;-><init>()V

    .line 46
    return-void
.end method

.method private _convertToHexString([B)Ljava/lang/String;
    .locals 7
    .param p1, "a"    # [B

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .local v0, "result":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "arr$":[B
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3

    .line 116
    .local v4, "element":B
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0xf

    if-gt v5, v6, :cond_0

    .line 117
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .end local v4    # "element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "arr$":[B
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "method"    # Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->getAuthName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 72
    return v2

    .line 75
    :cond_0
    sget-object v0, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$1;->$SwitchMap$org$apache$commons$net$pop3$ExtendedPOP3Client$AUTH_METHOD:[I

    invoke-virtual {p1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client$AUTH_METHOD;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .local v1, "serverChallenge":[B
    move-object v3, v0

    .local v3, "hmac_md5":Ljavax/crypto/Mac;
    move-object v4, v0

    .local v4, "hmacResult":[B
    move-object v5, v0

    .line 100
    .local v0, "toEncode":[B
    .local v5, "usernameBytes":[B
    return v2

    .line 85
    .end local v0    # "toEncode":[B
    .end local v1    # "serverChallenge":[B
    .end local v3    # "hmac_md5":Ljavax/crypto/Mac;
    .end local v4    # "hmacResult":[B
    .end local v5    # "usernameBytes":[B
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 87
    .local v0, "serverChallenge":[B
    const-string v1, "HmacMD5"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 88
    .local v4, "hmac_md5":Ljavax/crypto/Mac;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 90
    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 92
    .local v1, "hmacResult":[B
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 93
    .restart local v5    # "usernameBytes":[B
    array-length v6, v5

    add-int/2addr v6, v3

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 94
    .local v6, "toEncode":[B
    array-length v7, v5

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length v7, v5

    const/16 v8, 0x20

    aput-byte v8, v6, v7

    .line 96
    array-length v7, v5

    add-int/2addr v7, v3

    array-length v8, v1

    invoke-static {v1, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-static {v6}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 78
    .end local v0    # "serverChallenge":[B
    .end local v1    # "hmacResult":[B
    .end local v4    # "hmac_md5":Ljavax/crypto/Mac;
    .end local v5    # "usernameBytes":[B
    .end local v6    # "toEncode":[B
    :cond_3
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0000"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/ExtendedPOP3Client;->sendCommand(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method
