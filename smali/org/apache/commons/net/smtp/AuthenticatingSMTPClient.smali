.class public Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;
.super Lorg/apache/commons/net/smtp/SMTPSClient;
.source "AuthenticatingSMTPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "implicit"    # Z

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "implicit"    # Z
    .param p3, "encoding"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 0
    .param p1, "implicit"    # Z
    .param p2, "ctx"    # Ljavax/net/ssl/SSLContext;

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    .line 89
    return-void
.end method

.method private _convertToHexString([B)Ljava/lang/String;
    .locals 7
    .param p1, "a"    # [B

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
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

    .line 282
    .local v4, "element":B
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0xf

    if-gt v5, v6, :cond_0

    .line 283
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .end local v4    # "element":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "arr$":[B
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public auth(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "method"    # Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
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

    .line 218
    invoke-static {p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->getAuthName(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    return v1

    .line 223
    :cond_0
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0

    .line 230
    :cond_1
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 235
    .local v0, "serverChallenge":[B
    const-string v2, "HmacMD5"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 236
    .local v3, "hmac_md5":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 238
    invoke-virtual {v3, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->_convertToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 240
    .local v2, "hmacResult":[B
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 241
    .local v4, "usernameBytes":[B
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    array-length v6, v2

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 242
    .local v5, "toEncode":[B
    array-length v6, v4

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v6, v4

    const/16 v7, 0x20

    aput-byte v7, v5, v6

    .line 244
    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    array-length v7, v2

    invoke-static {v2, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-static {v5}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v1

    return v1

    .line 249
    .end local v0    # "serverChallenge":[B
    .end local v2    # "hmacResult":[B
    .end local v3    # "hmac_md5":Ljavax/crypto/Mac;
    .end local v4    # "usernameBytes":[B
    .end local v5    # "toEncode":[B
    :cond_2
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 255
    return v1

    .line 257
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0

    .line 260
    :cond_4
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    return v0

    .line 266
    :cond_5
    return v1
.end method

.method public ehlo(Ljava/lang/String;)I
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public elogin()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 161
    .local v0, "host":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 164
    const/4 v2, 0x0

    return v2

    .line 167
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v2

    return v2
.end method

.method public elogin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->ehlo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public getEnhancedReplyCode()[I
    .locals 5

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "reply":Ljava/lang/String;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    .line 180
    .local v2, "res":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 182
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method
