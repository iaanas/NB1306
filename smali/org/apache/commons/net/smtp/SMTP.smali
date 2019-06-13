.class public Lorg/apache/commons/net/smtp/SMTP;
.super Lorg/apache/commons/net/SocketClient;
.source "SMTP.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x19

.field private static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field private _newReplyString:Z

.field _reader:Ljava/io/BufferedReader;

.field private _replyCode:I

.field private final _replyLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _replyString:Ljava/lang/String;

.field _writer:Ljava/io/BufferedWriter;

.field protected final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    const-string v0, "ISO-8859-1"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;-><init>(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    .line 131
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->setDefaultPort(I)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    .line 135
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 136
    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private __getReply()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 193
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "line":Ljava/lang/String;
    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_5

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 205
    .local v2, "length":I
    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    .line 212
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "code":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v5    # "code":Ljava/lang/String;
    nop

    .line 221
    iget-object v5, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    if-le v2, v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    .line 228
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_1

    .line 235
    iget-object v5, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x4

    if-lt v5, v7, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 231
    :cond_1
    new-instance v3, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    invoke-direct {v3, v1}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_2
    :goto_0
    iget v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/net/smtp/SMTP;->fireReplyReceived(ILjava/lang/String;)V

    .line 250
    iget v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    const/16 v3, 0x1a5

    if-eq v1, v3, :cond_3

    .line 254
    return-void

    .line 251
    :cond_3
    new-instance v1, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    const-string v3, "SMTP response 421 received.  Server closed connection."

    invoke-direct {v1, v3}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated server reply: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v2    # "length":I
    :cond_5
    new-instance v2, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;

    invoke-direct {v2, v1}, Lorg/apache/commons/net/smtp/SMTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private __sendCommand(ILjava/lang/String;Z)I
    .locals 1
    .param p1, "command"    # I
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "includeSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private __sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "includeSpace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "__commandBuffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    if-eqz p2, :cond_1

    .line 156
    if-eqz p3, :cond_0

    .line 157
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 168
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/net/smtp/SMTP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    .line 171
    iget v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v1
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    .line 261
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_input_:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    .line 264
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->_output_:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    .line 267
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    .line 269
    return-void
.end method

.method public data()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

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

    .line 283
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_reader:Ljava/io/BufferedReader;

    .line 285
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_writer:Ljava/io/BufferedWriter;

    .line 286
    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 289
    return-void
.end method

.method public expn(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getReply()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;->__getReply()V

    .line 427
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v0
.end method

.method public getReplyCode()I
    .locals 1

    .line 404
    iget v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 4

    .line 454
    iget-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    return-object v0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 462
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 466
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_newReplyString:Z

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyString:Ljava/lang/String;

    return-object v1
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    .line 440
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public helo(Ljava/lang/String;)I
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

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

    .line 684
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mail(Ljava/lang/String;)I
    .locals 2
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public noop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

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

    .line 759
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public rcpt(Ljava/lang/String;)I
    .locals 2
    .param p1, "forwardPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public removeProtocolCommandistener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/commons/net/ProtocolCommandListener;

    .line 770
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    .line 771
    return-void
.end method

.method public rset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public saml(Ljava/lang/String;)I
    .locals 1
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;)I
    .locals 1
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

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

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

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

    .line 341
    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/smtp/SMTP;->__sendCommand(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public soml(Ljava/lang/String;)I
    .locals 1
    .param p1, "reversePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public turn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public vrfy(Ljava/lang/String;)I
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
