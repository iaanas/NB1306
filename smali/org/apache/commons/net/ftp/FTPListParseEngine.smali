.class public Lorg/apache/commons/net/ftp/FTPListParseEngine;
.super Ljava/lang/Object;
.source "FTPListParseEngine.java"


# instance fields
.field private _internalIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private final saveUnparseableEntries:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 88
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1
    .param p1, "parser"    # Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .param p2, "configuration"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 95
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getUnparseableEntries()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    .line 101
    :goto_0
    return-void
.end method

.method private readStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lorg/apache/commons/net/util/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    .local v0, "reader":Ljava/io/BufferedReader;
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 147
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v2, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 151
    return-void
.end method


# virtual methods
.method public getFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .param p1, "filter"    # Lorg/apache/commons/net/ftp/FTPFileFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "entry":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    .line 274
    .local v3, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    if-nez v3, :cond_0

    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v4, :cond_0

    .line 275
    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4, v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 277
    :cond_0
    invoke-interface {p1, v3}, Lorg/apache/commons/net/ftp/FTPFileFilter;->accept(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_1
    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v2
.end method

.method public getNext(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .param p1, "quantityRequested"    # I

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 178
    .local v0, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    move v1, p1

    .line 179
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, "entry":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    .line 182
    .local v3, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    if-nez v3, :cond_0

    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v4, :cond_0

    .line 183
    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4, v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 185
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    nop

    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    add-int/lit8 v1, v1, -0x1

    .line 187
    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v2
.end method

.method public getPrevious(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .param p1, "quantityRequested"    # I

    .line 219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 220
    .local v0, "tmpResults":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/net/ftp/FTPFile;>;"
    move v1, p1

    .line 221
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, "entry":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    .line 224
    .local v3, "temp":Lorg/apache/commons/net/ftp/FTPFile;
    if-nez v3, :cond_0

    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v4, :cond_0

    .line 225
    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4, v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 227
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 228
    nop

    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "temp":Lorg/apache/commons/net/ftp/FTPFile;
    add-int/lit8 v1, v1, -0x1

    .line 229
    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public readServerList(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 119
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->preParse(Ljava/util/List;)Ljava/util/List;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->resetIterator()V

    .line 122
    return-void
.end method

.method public resetIterator()V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->_internalIterator:Ljava/util/ListIterator;

    .line 312
    return-void
.end method
