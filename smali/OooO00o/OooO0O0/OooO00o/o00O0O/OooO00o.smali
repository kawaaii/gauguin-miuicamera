.class public final synthetic LOooO00o/OooO0O0/OooO00o/o00O0O/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/saliencychecker/SaliencyChecker;

.field private final synthetic OooO0O0:Lcom/android/camera/saliencychecker/SaliencyFreeObject;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/saliencychecker/SaliencyChecker;Lcom/android/camera/saliencychecker/SaliencyFreeObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o00O0O/OooO00o;->OooO00o:Lcom/android/camera/saliencychecker/SaliencyChecker;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/o00O0O/OooO00o;->OooO0O0:Lcom/android/camera/saliencychecker/SaliencyFreeObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o00O0O/OooO00o;->OooO00o:Lcom/android/camera/saliencychecker/SaliencyChecker;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/o00O0O/OooO00o;->OooO0O0:Lcom/android/camera/saliencychecker/SaliencyFreeObject;

    invoke-virtual {v0, v1}, Lcom/android/camera/saliencychecker/SaliencyChecker;->OooO00o(Lcom/android/camera/saliencychecker/SaliencyFreeObject;)V

    return-void
.end method
