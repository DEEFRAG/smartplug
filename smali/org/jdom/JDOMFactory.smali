.class public interface abstract Lorg/jdom/JDOMFactory;
.super Ljava/lang/Object;
.source "JDOMFactory.java"


# virtual methods
.method public abstract addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V
.end method

.method public abstract addNamespaceDeclaration(Lorg/jdom/Element;Lorg/jdom/Namespace;)V
.end method

.method public abstract attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Attribute;
.end method

.method public abstract attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;
.end method

.method public abstract attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;
.end method

.method public abstract attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
.end method

.method public abstract cdata(Ljava/lang/String;)Lorg/jdom/CDATA;
.end method

.method public abstract comment(Ljava/lang/String;)Lorg/jdom/Comment;
.end method

.method public abstract docType(Ljava/lang/String;)Lorg/jdom/DocType;
.end method

.method public abstract docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
.end method

.method public abstract docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;
.end method

.method public abstract document(Lorg/jdom/Element;)Lorg/jdom/Document;
.end method

.method public abstract document(Lorg/jdom/Element;Lorg/jdom/DocType;)Lorg/jdom/Document;
.end method

.method public abstract document(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)Lorg/jdom/Document;
.end method

.method public abstract element(Ljava/lang/String;)Lorg/jdom/Element;
.end method

.method public abstract element(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
.end method

.method public abstract element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
.end method

.method public abstract element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
.end method

.method public abstract entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;
.end method

.method public abstract entityRef(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
.end method

.method public abstract entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;
.end method

.method public abstract processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
.end method

.method public abstract processingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;
.end method

.method public abstract setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V
.end method

.method public abstract text(Ljava/lang/String;)Lorg/jdom/Text;
.end method
