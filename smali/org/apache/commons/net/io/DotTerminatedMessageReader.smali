.class public final Lorg/apache/commons/net/io/DotTerminatedMessageReader;
.super Ljava/io/BufferedReader;
.source "DotTerminatedMessageReader.java"


# static fields
.field private static final CR:C = '\r'

.field private static final DOT:I = 0x2e

.field private static final LF:C = '\n'


# instance fields
.field private atBeginning:Z

.field private eof:Z

.field private seenCR:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .line 57
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    if-nez v1, :cond_0

    .line 214
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 221
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 79
    monitor-exit v0

    return v2

    .line 81
    :cond_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .line 82
    .local v1, "chint":I
    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 83
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 84
    monitor-exit v0

    return v2

    .line 86
    :cond_1
    iget-boolean v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    const/16 v5, 0xa

    const/16 v6, 0xd

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    .line 87
    iput-boolean v7, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 88
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_6

    .line 89
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->mark(I)V

    .line 90
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v7

    move v1, v7

    .line 91
    if-ne v1, v2, :cond_2

    .line 93
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 94
    monitor-exit v0

    return v4

    .line 96
    :cond_2
    if-ne v1, v4, :cond_3

    .line 98
    monitor-exit v0

    return v1

    .line 100
    :cond_3
    if-ne v1, v6, :cond_5

    .line 101
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v6

    move v1, v6

    .line 102
    if-ne v1, v2, :cond_4

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->reset()V

    .line 105
    monitor-exit v0

    return v4

    .line 107
    :cond_4
    if-ne v1, v5, :cond_5

    .line 108
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 109
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 111
    monitor-exit v0

    return v2

    .line 116
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->reset()V

    .line 117
    monitor-exit v0

    return v4

    .line 122
    :cond_6
    iget-boolean v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    if-eqz v2, :cond_7

    .line 123
    iput-boolean v7, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    .line 124
    if-ne v1, v5, :cond_7

    .line 125
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 128
    :cond_7
    if-ne v1, v6, :cond_8

    .line 129
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    .line 131
    :cond_8
    monitor-exit v0

    return v1

    .line 132
    .end local v1    # "chint":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([C)I
    .locals 2
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 7
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    .line 171
    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v1

    .local v2, "ch":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return v3

    .line 181
    :cond_1
    move v1, p2

    .line 185
    .local v1, "off":I
    :goto_0
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .local v4, "offset":I
    int-to-char v5, v2

    :try_start_2
    aput-char v5, p1, p2

    .line 187
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result p2

    move v2, p2

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    move p2, v4

    goto :goto_0

    .line 189
    :cond_3
    :goto_1
    sub-int p2, v4, v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p2

    .line 190
    .end local v1    # "off":I
    :catchall_0
    move-exception v1

    move p2, v4

    goto :goto_2

    .end local v2    # "ch":I
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    :catchall_1
    move-exception v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    .restart local v2    # "ch":I
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_2
.end method

.method public readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 235
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    .local v4, "intch":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 237
    const/16 v3, 0xa

    if-ne v4, v3, :cond_0

    :try_start_1
    iget-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 240
    :cond_0
    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    .line 242
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 245
    const/4 v2, 0x0

    return-object v2

    .line 249
    :cond_2
    return-object v1

    .line 242
    .end local v1    # "string":Ljava/lang/String;
    .end local v4    # "intch":I
    :catchall_0
    move-exception v2

    move v4, v3

    .restart local v4    # "intch":I
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method
