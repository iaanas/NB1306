.class public Lorg/apache/commons/net/pop3/POP3Client;
.super Lorg/apache/commons/net/pop3/POP3;
.source "POP3Client.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;-><init>()V

    return-void
.end method

.method private static __parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 62
    return-object v2

    .line 65
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 69
    .local v1, "num":I
    .local v3, "size":I
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 71
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    return-object v2

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v3    # "size":I
    .local v2, "size":I
    nop

    .line 82
    new-instance v3, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(II)V

    return-object v3

    .line 77
    .end local v2    # "size":I
    .restart local v3    # "size":I
    :catch_0
    move-exception v4

    .line 79
    .local v4, "e":Ljava/lang/NumberFormatException;
    return-object v2
.end method

.method private static __parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 93
    return-object v2

    .line 96
    :cond_0
    const/4 v1, 0x0

    .line 100
    .local v1, "num":I
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 102
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    return-object v2

    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    .line 111
    nop

    .line 113
    new-instance v2, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v2, v1, p0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 108
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/NumberFormatException;
    return-object v2
.end method


# virtual methods
.method public capa()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMessage(I)Z
    .locals 4
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 307
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 310
    :cond_1
    return v1
.end method

.method public listMessage(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 380
    return-object v1

    .line 382
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    return-object v1

    .line 386
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public listMessages()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 410
    return-object v1

    .line 412
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    return-object v1

    .line 415
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 418
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 420
    .local v0, "messages":[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 423
    .local v1, "en":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "line":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 424
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v3

    aput-object v3, v0, v2

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "line":I
    :cond_2
    return-object v0
.end method

.method public listUniqueIdentifier(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 451
    return-object v1

    .line 453
    :cond_0
    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    return-object v1

    .line 457
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public listUniqueIdentifiers()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 481
    return-object v1

    .line 483
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    return-object v1

    .line 486
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 489
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 491
    .local v0, "messages":[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyLines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 494
    .local v1, "en":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "line":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 495
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/net/pop3/POP3Client;->__parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v3

    aput-object v3, v0, v2

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "line":I
    :cond_2
    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    return v1

    .line 156
    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    return v1

    .line 160
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    return v1

    .line 164
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 166
    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    return v1

    .line 215
    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 216
    .local v0, "md5":Ljava/security/MessageDigest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 218
    .local v2, "digest":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v3, "digestBuffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 221
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    .line 222
    .local v5, "digit":I
    const/16 v6, 0xf

    if-gt v5, v6, :cond_1

    .line 223
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .end local v5    # "digit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    .local v5, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v6, 0x9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    return v1

    .line 237
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 239
    return v1
.end method

.method public logout()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 261
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 263
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    .line 264
    iget v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->_replyCode:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public noop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 283
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 285
    :cond_1
    return v1
.end method

.method public reset()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 328
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 330
    :cond_1
    return v1
.end method

.method public retrieveMessage(I)Ljava/io/Reader;
    .locals 3
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 530
    return-object v1

    .line 532
    :cond_0
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    return-object v1

    .line 536
    :cond_1
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public retrieveMessageTop(II)Ljava/io/Reader;
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "numLines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    return-object v0

    .line 579
    :cond_1
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_reader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object v0

    .line 572
    :cond_2
    :goto_0
    return-object v0
.end method

.method public status()Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 351
    return-object v1

    .line 353
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    return-object v1

    .line 356
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->_lastReplyLine:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->__parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method
