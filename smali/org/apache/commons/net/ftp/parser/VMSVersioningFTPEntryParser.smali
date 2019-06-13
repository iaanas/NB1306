.class public Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.source "VMSVersioningFTPEntryParser.java"


# static fields
.field private static final PRE_PARSE_REGEX:Ljava/lang/String; = "(.*?);([0-9]+)\\s*.*"


# instance fields
.field private final _preparse_pattern_:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 85
    :try_start_0
    const-string v0, "(.*?);([0-9]+)\\s*.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 93
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unparseable regex supplied:  (.*?);([0-9]+)\\s*.*"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected isVersioning()Z
    .locals 1

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "existingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 108
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "entry":Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, "result":Ljava/util/regex/MatchResult;
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 112
    .local v6, "_preparse_matcher_":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v5

    .line 114
    invoke-interface {v5, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "version":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 117
    .local v7, "nv":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 118
    .local v8, "existing":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 119
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 121
    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/regex/MatchResult;
    .end local v6    # "_preparse_matcher_":Ljava/util/regex/Matcher;
    .end local v7    # "nv":Ljava/lang/Integer;
    .end local v8    # "existing":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2    # "entry":Ljava/lang/String;
    const/4 v5, 0x0

    .line 135
    .restart local v5    # "result":Ljava/util/regex/MatchResult;
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 136
    .restart local v6    # "_preparse_matcher_":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 137
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v5

    .line 138
    invoke-interface {v5, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "version":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 141
    .local v9, "nv":Ljava/lang/Integer;
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 142
    .local v10, "existing":Ljava/lang/Integer;
    if-eqz v10, :cond_3

    .line 143
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 144
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 149
    .end local v2    # "entry":Ljava/lang/String;
    .end local v5    # "result":Ljava/util/regex/MatchResult;
    .end local v6    # "_preparse_matcher_":Ljava/util/regex/Matcher;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "nv":Ljava/lang/Integer;
    .end local v10    # "existing":Ljava/lang/Integer;
    :cond_3
    goto :goto_1

    .line 150
    :cond_4
    return-object p1
.end method
