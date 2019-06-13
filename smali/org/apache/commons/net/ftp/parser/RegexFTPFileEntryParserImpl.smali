.class public abstract Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "RegexFTPFileEntryParserImpl.java"


# instance fields
.field protected _matcher_:Ljava/util/regex/Matcher;

.field private pattern:Ljava/util/regex/Pattern;

.field private result:Ljava/util/regex/MatchResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 52
    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method private compileRegex(Ljava/lang/String;I)V
    .locals 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 197
    :try_start_0
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    nop

    .line 201
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparseable regex supplied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getGroupCnt()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    return v0
.end method

.method public getGroupsAsString()Ljava/lang/String;
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    invoke-interface {v2, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public group(I)Ljava/lang/String;
    .locals 1
    .param p1, "matchnum"    # I

    .line 135
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->_matcher_:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->result:Ljava/util/regex/MatchResult;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRegex(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public setRegex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 181
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->compileRegex(Ljava/lang/String;I)V

    .line 182
    const/4 v0, 0x1

    return v0
.end method
