.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:Z

.field private final synthetic OooO0Oo:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO0O0:Z

    iput-boolean p3, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Z

    iput-boolean p4, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO00o:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO0O0:Z

    iget-boolean v2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO0OO:Z

    iget-boolean v3, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO00o/OooO0OO/OooO0O0;->OooO0Oo:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->OooO00o(ZZZLcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
