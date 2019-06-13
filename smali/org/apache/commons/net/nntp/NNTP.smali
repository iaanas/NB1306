.class public Lorg/apache/commons/net/nntp/NNTP;
.super Lorg/apache/commons/net/SocketClient;
.source "NNTP.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x77

.field private static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field _isAllowedToPost:Z

.field protected _reader_:Ljava/io/BufferedReader;

.field _replyCode:I

.field _replyString:Ljava/lang/String;

.field protected _writer_:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 121
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->setDefaultPort(I)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 124
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    .line 126
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 127
    return-void
.end method

.method private __getReply()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    nop

    .line 155
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->fireReplyReceived(ILjava/lang/String;)V

    .line 157
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    .line 161
    return-void

    .line 158
    :cond_0
    new-instance v0, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;

    const-string v1, "NNTP response 400 received.  Server closed connection."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated server reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    new-instance v0, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 173
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_input_:Ljava/io/InputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 176
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 179
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;->__getReply()V

    .line 181
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    .line 182
    return-void
.end method

.method public article()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public article(I)I
    .locals 2
    .param p1, "a"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->article(J)I

    move-result v0

    return v0
.end method

.method public article(J)I
    .locals 2
    .param p1, "articleNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public article(Ljava/lang/String;)I
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public authinfoPass(Ljava/lang/String;)I
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "passParameter":Ljava/lang/String;
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public authinfoUser(Ljava/lang/String;)I
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "userParameter":Ljava/lang/String;
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public body()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public body(I)I
    .locals 2
    .param p1, "a"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 997
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->body(J)I

    move-result v0

    return v0
.end method

.method public body(J)I
    .locals 2
    .param p1, "articleNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public body(Ljava/lang/String;)I
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    .line 197
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    .line 198
    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    .line 200
    return-void
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 1017
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getReply()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;->__getReply()V

    .line 367
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    return v0
.end method

.method public getReplyCode()I
    .locals 1

    .line 344
    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyString:Ljava/lang/String;

    return-object v0
.end method

.method public group(Ljava/lang/String;)I
    .locals 1
    .param p1, "newsgroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public head()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public head(I)I
    .locals 2
    .param p1, "a"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1003
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->head(J)I

    move-result v0

    return v0
.end method

.method public head(J)I
    .locals 2
    .param p1, "articleNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public head(Ljava/lang/String;)I
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public help()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public ihave(Ljava/lang/String;)I
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAllowedToPost()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    return v0
.end method

.method public last()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public list()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public listActive(Ljava/lang/String;)I
    .locals 3
    .param p1, "wildmat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTIVE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 3
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "GMT"    # Z
    .param p4, "distributions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    if-eqz p3, :cond_0

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_0
    if-eqz p4, :cond_1

    .line 778
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 3
    .param p1, "newsgroups"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "GMT"    # Z
    .param p5, "distributions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    if-eqz p4, :cond_0

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_0
    if-eqz p5, :cond_1

    .line 828
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :cond_1
    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public post()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 853
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public quit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public sendCommand(I)I
    .locals 1
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 1
    .param p1, "command"    # I
    .param p2, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "__commandBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    if-eqz p2, :cond_0

    .line 242
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_0
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 251
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/net/nntp/NNTP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;->__getReply()V

    .line 254
    iget v1, p0, Lorg/apache/commons/net/nntp/NNTP;->_replyCode:I

    return v1
.end method

.method public stat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public stat(I)I
    .locals 2
    .param p1, "a"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1009
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->stat(J)I

    move-result v0

    return v0
.end method

.method public stat(J)I
    .locals 2
    .param p1, "articleNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stat(Ljava/lang/String;)I
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public xhdr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "selectedArticles"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    .local v0, "command":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public xover(Ljava/lang/String;)I
    .locals 1
    .param p1, "selectedArticles"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
