.class public final Lorg/apache/commons/net/io/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 365
    if-eqz p0, :cond_0

    .line 367
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 372
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .line 382
    if-eqz p0, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 389
    :cond_0
    :goto_0
    return-void
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 2
    .param p0, "source"    # Ljava/io/Reader;
    .param p1, "dest"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 354
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 6
    .param p0, "source"    # Ljava/io/Reader;
    .param p1, "dest"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 339
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 14
    .param p0, "source"    # Ljava/io/Reader;
    .param p1, "dest"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .param p3, "streamSize"    # J
    .param p5, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 272
    move-object v1, p1

    const-wide/16 v2, 0x0

    .line 273
    .local v2, "total":J
    if-lez p2, :cond_0

    move/from16 v0, p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    new-array v8, v0, [C

    .local v8, "buffer":[C
    const/4 v0, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    .line 277
    .end local v2    # "total":J
    .local v3, "total":J
    :goto_1
    move-object v9, p0

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/io/Reader;->read([C)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move v10, v2

    .local v10, "numChars":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 281
    if-nez v10, :cond_3

    .line 283
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    move v11, v2

    .line 284
    .local v11, "singleChar":I
    if-gez v11, :cond_1

    .line 285
    goto :goto_4

    .line 287
    :cond_1
    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 288
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 289
    const-wide/16 v5, 0x1

    add-long v12, v3, v5

    .line 290
    .end local v3    # "total":J
    .local v12, "total":J
    if-eqz p5, :cond_2

    .line 291
    const/4 v5, 0x1

    move-object/from16 v2, p5

    move-wide v3, v12

    move-wide/from16 v6, p3

    :try_start_2
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 304
    .end local v11    # "singleChar":I
    :catch_0
    move-exception v0

    move-wide v3, v12

    goto :goto_5

    .line 277
    .end local v10    # "numChars":I
    :cond_2
    :goto_2
    move v2, v10

    move-wide v3, v12

    goto :goto_1

    .line 296
    .end local v12    # "total":J
    .restart local v3    # "total":J
    :cond_3
    :try_start_3
    invoke-virtual {p1, v8, v0, v10}, Ljava/io/Writer;->write([CII)V

    .line 297
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 298
    int-to-long v5, v10

    add-long v11, v3, v5

    .line 299
    .end local v3    # "total":J
    .local v11, "total":J
    if-eqz p5, :cond_4

    .line 300
    move-object/from16 v2, p5

    move-wide v3, v11

    move v5, v10

    move-wide/from16 v6, p3

    :try_start_4
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 304
    :catch_1
    move-exception v0

    move-wide v3, v11

    goto :goto_5

    .line 277
    :cond_4
    :goto_3
    move v2, v10

    move-wide v3, v11

    goto :goto_1

    .line 304
    .end local v11    # "total":J
    .restart local v3    # "total":J
    :catch_2
    move-exception v0

    goto :goto_5

    .line 308
    :cond_5
    :goto_4
    nop

    .line 310
    return-wide v3

    .line 304
    :catch_3
    move-exception v0

    move v10, v2

    .line 306
    .local v0, "e":Ljava/io/IOException;
    .restart local v10    # "numChars":I
    :goto_5
    new-instance v2, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v5, "IOException caught while copying."

    invoke-direct {v2, v5, v3, v4, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v2
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 229
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 214
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 7
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .param p3, "streamSize"    # J
    .param p5, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 183
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .locals 14
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .param p3, "streamSize"    # J
    .param p5, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;
    .param p6, "flush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 97
    move-object v1, p1

    const-wide/16 v2, 0x0

    .line 98
    .local v2, "total":J
    if-lez p2, :cond_0

    move/from16 v0, p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    new-array v8, v0, [B

    .local v8, "buffer":[B
    const/4 v0, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    .line 102
    .end local v2    # "total":J
    .local v3, "total":J
    :goto_1
    move-object v9, p0

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move v10, v2

    .local v10, "numBytes":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    .line 107
    if-nez v10, :cond_4

    .line 109
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    move v11, v2

    .line 110
    .local v11, "singleByte":I
    if-gez v11, :cond_1

    .line 111
    goto :goto_5

    .line 113
    :cond_1
    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 114
    if-eqz p6, :cond_2

    .line 115
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 134
    .end local v11    # "singleByte":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 117
    .restart local v11    # "singleByte":I
    :cond_2
    :goto_2
    const-wide/16 v5, 0x1

    add-long v12, v3, v5

    .line 118
    .end local v3    # "total":J
    .local v12, "total":J
    if-eqz p5, :cond_3

    .line 119
    const/4 v5, 0x1

    move-object/from16 v2, p5

    move-wide v3, v12

    move-wide/from16 v6, p3

    :try_start_3
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 134
    .end local v11    # "singleByte":I
    :catch_1
    move-exception v0

    move-wide v3, v12

    goto :goto_6

    .line 102
    .end local v10    # "numBytes":I
    :cond_3
    :goto_3
    move v2, v10

    move-wide v3, v12

    goto :goto_1

    .line 124
    .end local v12    # "total":J
    .restart local v3    # "total":J
    :cond_4
    :try_start_4
    invoke-virtual {p1, v8, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    if-eqz p6, :cond_5

    .line 126
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 128
    :cond_5
    int-to-long v5, v10

    add-long v11, v3, v5

    .line 129
    .end local v3    # "total":J
    .local v11, "total":J
    if-eqz p5, :cond_6

    .line 130
    move-object/from16 v2, p5

    move-wide v3, v11

    move v5, v10

    move-wide/from16 v6, p3

    :try_start_5
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 134
    :catch_2
    move-exception v0

    move-wide v3, v11

    goto :goto_6

    .line 102
    :cond_6
    :goto_4
    move v2, v10

    move-wide v3, v11

    goto :goto_1

    .line 134
    .end local v11    # "total":J
    .restart local v3    # "total":J
    :catch_3
    move-exception v0

    goto :goto_6

    .line 138
    :cond_7
    :goto_5
    nop

    .line 140
    return-wide v3

    .line 134
    :catch_4
    move-exception v0

    move v10, v2

    .line 136
    .local v0, "e":Ljava/io/IOException;
    .restart local v10    # "numBytes":I
    :goto_6
    new-instance v2, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v5, "IOException caught while copying."

    invoke-direct {v2, v5, v3, v4, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v2
.end method
