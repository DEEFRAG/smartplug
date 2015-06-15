.class public final Lorg/jdom/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Namespace.java,v $ $Revision: 1.43 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field public static final NO_NAMESPACE:Lorg/jdom/Namespace;

.field public static final XML_NAMESPACE:Lorg/jdom/Namespace;

.field private static namespaces:Ljava/util/HashMap;


# instance fields
.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lorg/jdom/Namespace;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 100
    new-instance v0, Lorg/jdom/Namespace;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v1, v2}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    new-instance v1, Lorg/jdom/NamespaceKey;

    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {v1, v2}, Lorg/jdom/NamespaceKey;-><init>(Lorg/jdom/Namespace;)V

    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    new-instance v1, Lorg/jdom/NamespaceKey;

    sget-object v2, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {v1, v2}, Lorg/jdom/NamespaceKey;-><init>(Lorg/jdom/Namespace;)V

    sget-object v2, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public static getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 8
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 134
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    :cond_1
    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 193
    :cond_2
    :goto_0
    return-object v2

    .line 139
    :cond_3
    const-string p0, ""

    .line 149
    :cond_4
    :goto_1
    new-instance v0, Lorg/jdom/NamespaceKey;

    invoke-direct {v0, p0, p1}, Lorg/jdom/NamespaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, "lookup":Lorg/jdom/NamespaceKey;
    sget-object v4, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Namespace;

    .line 151
    .local v2, "preexisting":Lorg/jdom/Namespace;
    if-nez v2, :cond_2

    .line 157
    invoke-static {p0}, Lorg/jdom/Verifier;->checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 158
    new-instance v4, Lorg/jdom/IllegalNameException;

    const-string v5, "Namespace prefix"

    invoke-direct {v4, p0, v5, v3}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 141
    .end local v0    # "lookup":Lorg/jdom/NamespaceKey;
    .end local v2    # "preexisting":Lorg/jdom/Namespace;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    :cond_6
    const-string p1, ""

    goto :goto_1

    .line 160
    .restart local v0    # "lookup":Lorg/jdom/NamespaceKey;
    .restart local v2    # "preexisting":Lorg/jdom/Namespace;
    .restart local v3    # "reason":Ljava/lang/String;
    :cond_7
    invoke-static {p1}, Lorg/jdom/Verifier;->checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 161
    new-instance v4, Lorg/jdom/IllegalNameException;

    const-string v5, "Namespace URI"

    invoke-direct {v4, p1, v5, v3}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_8
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 166
    new-instance v4, Lorg/jdom/IllegalNameException;

    const-string v5, ""

    const-string v6, "namespace"

    const-string v7, "Namespace URIs must be non-null and non-empty Strings"

    invoke-direct {v4, v5, v6, v7}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_9
    const-string v4, "xml"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 177
    new-instance v4, Lorg/jdom/IllegalNameException;

    const-string v5, "Namespace prefix"

    const-string v6, "The xml prefix can only be bound to http://www.w3.org/XML/1998/namespace"

    invoke-direct {v4, p0, v5, v6}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_a
    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 185
    new-instance v4, Lorg/jdom/IllegalNameException;

    const-string v5, "Namespace URI"

    const-string v6, "The http://www.w3.org/XML/1998/namespace must be bound to the xml prefix."

    invoke-direct {v4, p1, v5, v6}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 191
    :cond_b
    new-instance v1, Lorg/jdom/Namespace;

    invoke-direct {v1, p0, p1}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v1, "ns":Lorg/jdom/Namespace;
    sget-object v4, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 193
    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 248
    if-ne p0, p1, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 254
    .end local p1    # "ob":Ljava/lang/Object;
    :goto_0
    return v0

    .line 251
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/jdom/Namespace;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    check-cast p1, Lorg/jdom/Namespace;

    .end local p1    # "ob":Ljava/lang/Object;
    iget-object v1, p1, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 254
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Namespace: prefix \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" is mapped to URI \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
