        r e s o u r c e _ v e r s i o n       /af6c1c09a899071001cd4595c86de6b68bda7ea1.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           F l a s t _ v a l i d _ v e r t e x _ s o u r c e _ v i s i b i l i t y   
   
� # v e r s i o n   3 3 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 # l i n e   0   1 
 i n   v e c 4   i n _ p o s i t i o n ; 
 i n   v e c 3   i n _ n o r m a l ; 
 i n   v e c 3   i n _ t a n g e n t ; 
 i n   v e c 3   i n _ b i t a n g e n t ; 
 i n   v e c 4   i n _ c o l o r 0 ; 
 i n   v e c 2   i n _ u v 0 ; 
 i n   v e c 2   i n _ u v 1 ; 
 i n   v e c 2   i n _ u v 2 ; 
 i n   v e c 2   i n _ u v 3 ; 
 i n   v e c 2   i n _ u v 4 ; 
 i n   v e c 2   i n _ u v 5 ; 
 i n   v e c 2   i n _ u v 6 ; 
 i n   v e c 2   i n _ u v 7 ; 
 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s T e x t u r e V i e w ; 
 
 / / :   p a r a m   a u t o   m v p _ m a t r i x 
 u n i f o r m   m a t 4   m v p _ m a t r i x ; 
 
 / / :   p a r a m   a u t o   s u b _ p i x e l _ o f f s e t 
 u n i f o r m   v e c 2   p i x e l _ o f f s e t ; 
 
 # d e f i n e 	 V E R T E X _ S H A D E R 
 
 # i f   ! d e f i n e d ( C U S T O M _ C O M P U T E _ V E R T E X _ P O S I T I O N ) 
 v e c 4   c o m p u t e V e r t e x P o s i t i o n ( )   { 
 	 r e t u r n   m v p _ m a t r i x   *   i n _ p o s i t i o n ; 
 } 
 # e n d i f 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r [ 1 ] ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d [ 8 ] ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r [ 0 ]   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d [ 0 ]   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d [ 1 ]   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d [ 2 ]   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d [ 3 ]   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d [ 4 ]   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d [ 5 ]   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d [ 6 ]   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d [ 7 ]   =   i n _ u v 7 ; 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 } 
 # l i n e   2   0 
   0 l a s t _ v a l i d _ v e r t e x _ s o u r c e   
   
� # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 # l i n e   0   1 
 i n   v e c 4   i n _ p o s i t i o n ; 
 i n   v e c 3   i n _ n o r m a l ; 
 i n   v e c 3   i n _ t a n g e n t ; 
 i n   v e c 3   i n _ b i t a n g e n t ; 
 i n   v e c 4   i n _ c o l o r 0 ; 
 i n   v e c 2   i n _ u v 0 ; 
 i n   v e c 2   i n _ u v 1 ; 
 i n   v e c 2   i n _ u v 2 ; 
 i n   v e c 2   i n _ u v 3 ; 
 i n   v e c 2   i n _ u v 4 ; 
 i n   v e c 2   i n _ u v 5 ; 
 i n   v e c 2   i n _ u v 6 ; 
 i n   v e c 2   i n _ u v 7 ; 
 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s T e x t u r e V i e w ; 
 
 / / :   p a r a m   a u t o   m v p _ m a t r i x 
 u n i f o r m   m a t 4   m v p _ m a t r i x ; 
 
 / / :   p a r a m   a u t o   s u b _ p i x e l _ o f f s e t 
 u n i f o r m   v e c 2   p i x e l _ o f f s e t ; 
 
 # d e f i n e 	 V E R T E X _ S H A D E R 
 
 # i f   ! d e f i n e d ( C U S T O M _ C O M P U T E _ V E R T E X _ P O S I T I O N ) 
 v e c 4   c o m p u t e V e r t e x P o s i t i o n ( )   { 
 	 r e t u r n   m v p _ m a t r i x   *   i n _ p o s i t i o n ; 
 } 
 # e n d i f 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r [ 1 ] ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d [ 8 ] ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r [ 0 ]   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d [ 0 ]   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d [ 1 ]   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d [ 2 ]   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d [ 3 ]   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d [ 4 ]   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d [ 5 ]   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d [ 6 ]   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d [ 7 ]   =   i n _ u v 7 ; 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 } 
 # l i n e   2   0 
   J l a s t _ v a l i d _ f r a g m e n t _ s o u r c e _ v i s i b i l i t y   
   T� # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # l i n e   0   1 
 # i f d e f   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # e x t e n s i o n   G L _ A R B _ b i n d l e s s _ t e x t u r e   :   r e q u i r e 
 l a y o u t   ( b i n d l e s s _ s a m p l e r )   u n i f o r m ; 
 # e n d i f 
 
 # i f   _ _ V E R S I O N _ _   <   4 0 0 
 # e x t e n s i o n   G L _ A R B _ t e x t u r e _ q u e r y _ l o d   :   e n a b l e 
 # d e f i n e   t e x t u r e Q u e r y L o d ( S A M P L E R ,   P )   t e x t u r e Q u e r y L O D ( ( S A M P L E R ) ,   ( P ) ) 
 # e n d i f 
 # l i n e   7   0 
 
 # d e f i n e   O P T I M I Z E _ A L P H A _ O U T 
 # d e f i n e   O P T I M I Z E _ D I F F U S E _ S H A D I N G _ O U T 
 # d e f i n e   O P T I M I Z E _ S P E C U L A R _ S H A D I N G _ O U T 
 # d e f i n e   O P T I M I Z E _ E M I S S I V E _ O U T 
 # d e f i n e   O P T I M I Z E _ A L B E D O _ O U T 
 # d e f i n e   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 
 # l i n e   0   2 
 / / -   s h a d e r - c o m m o n . f r a g . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` f i l l V 2 F ` 
 / / -   ` f i l l D e f a u l t O u t p u t s ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` V 2 F ` 
 / / -   ` O u t p u t s ` 
 
 # l i n e   0   3 
 / / -   l i b - s p a r s e . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   T h i s   f i l e   p r o v i d e s   u s e f u l   f u n c t i o n s   t o   e n s u r e   s p a r s e   t e x t u r e s   s a m p l i n g 
 / / -   c o r r e c t n e s s   ( A R B _ s p a r s e _ t e x t u r e ) . 
 / / -   A l l o w s   t o   s a m p l e   o n l y   p a r t   o f   t e x t u r e s   r e a l l y   p r e s e n t   i n   v i d e o   m e m o r y . 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t S p a r s e C o o r d ` 
 / / -   ` t e x t u r e S p a r s e Q u e r y L o d ` 
 / / -   ` t e x t u r e S p a r s e ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` S a m p l e r S p a r s e ` 
 / / -   ` S p a r s e C o o r d ` 
 / / - 
 / / -   T h e   ` F E A T U R E _ S P A R S E _ T E X T U R E `   m a c r o   i s   d e f i n e d   o n l y   i f   t h e   s p a r s e   v i r t u a l   t e x t u r e   e x t e n s i o n   i s   e n a b l e d . 
 / / - 
 / / -   I f   e n a b l e d ,   p r o c e s s   a d d i t i o n a l   t e x t u r e   l o o k u p   c h e c k s   t o   c l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g . 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ c h e c k _ n e e d e d 
 u n i f o r m   b o o l   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   =   f a l s e ; 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ m a s k 
 u n i f o r m   u s a m p l e r 2 D   m a t e r i a l _ l o d _ m a s k ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   S a m p l e r   a n d   s p a r s e   t e x t u r e   i n f o r m a t i o n   s t r u c t u r e 
 / / - 
 / / -   U s e d   t o   q u e r y   a l l   s a m p l e r   r e l a t e d   u n i f o r m s   w i t h   a   s i n g l e   a u t o   b i n d i n g 
 s t r u c t   S a m p l e r S p a r s e   { 
     s a m p l e r 2 D   t e x ; 
     v e c 4   s i z e ;   / /   w i d t h ,   h e i g h t ,   1 / w i d t h ,   1 / h e i g h t 
     b o o l   i s _ s e t ;   / /   a   b o o l e a n   i n d i c a t i n g   w h e t h e r   t h e   t e x t u r e   i s   i n   t h e   t e x t u r e   s e t   o r   n o t 
     u v e c 3   l o d _ m a s k _ s e l e c t ;   / /   m a s k i n g   o p e r a t i o n s   d e s c r i p t i o n   a l l o w i n g   t o   r e t r i e v e   l o a d e d   m i p m a p s   i n f o r m a t i o n 
 } ; 
 
 / / -   S p a r s e   s a m p l i n g   c o o r d i n a t e s 
 / / - 
 / / -   S t o r e   t h e   U V   c o o r d i n a t e s   &   m a t e r i a l - w i s e   s p a r s e   L o D   m a s k 
 s t r u c t   S p a r s e C o o r d   { 
     v e c 2   t e x _ c o o r d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 u i n t   g e t T e x t u r e L o d M a s k ( u v e c 3   l o d M a s k S e l e c t ,   u i n t   m a t e r i a l L o d M a s k )   { 
     m a t e r i a l L o d M a s k   > > =   l o d M a s k S e l e c t . x ; 
     m a t e r i a l L o d M a s k   & =   l o d M a s k S e l e c t . y ; 
     m a t e r i a l L o d M a s k   | =   l o d M a s k S e l e c t . z ; 
     r e t u r n   m a t e r i a l L o d M a s k ; 
 } 
 
 f l o a t   g e t F i x e d S p a r s e L o d ( u i n t   l o d M a s k ,   f l o a t   r e q u e s t e d L o d )   { 
     r e q u e s t e d L o d   =   m a x ( r e q u e s t e d L o d , 0 . 0 ) ; 
     u i n t   r e q u e s t e d M a s k   =   ( 1 u < < u i n t ( r e q u e s t e d L o d ) )   |   ( 1 u < < u i n t ( c e i l ( r e q u e s t e d L o d ) ) ) ; 
     i f   ( ( r e q u e s t e d M a s k & l o d M a s k ) ! = r e q u e s t e d M a s k )   { 
         / /   I f   t h e   r e q u e s t e d   l e v e l s   a r e   n o t   l o a d e d ;   r e t u r n   t h e   f i r s t   a v a i l a b l e 
         l o d M a s k   & =   ~ ( l o d M a s k - 1 u ) ; 
         r e q u e s t e d L o d   =   l o g 2 ( f l o a t ( m a x ( l o d M a s k , 1 u ) ) ) ; 
     } 
     r e t u r n   r e q u e s t e d L o d ; 
 } 
 
 / / -   [ D O C - O N ] 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   0 u ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     f l o a t   r e q u e s t e d L e v e l   =   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         r e t u r n   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   r e q u e s t e d L e v e l ) ; 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e q u e s t e d L e v e l ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     r e t u r n   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   G i v e n   a   t e x t u r e ,   p e r f o r m s   a n   o p t i m i z e d   m u l t i p l e   t e x t u r e   l o o k u p s   w i t h   s m a l l   o f f s e t s 
 / / - 
 / / -   W e   a r e   p r o v i d i n g   a l t e r n a t i v e s   v e r s i o n s   o f   t h i s   h e l p e r   f o r   u p   t o   N = 4 
 
 / / -   [ D O C - O F F ] 
 / *   P r o v i d e   a   f a k e d   d o c u m e n t a t i o n   t o   b e   m o r e   r e a d a b l e   f o r   t h e   u s e r 
 / / -   [ D O C - O N ] 
 v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   { 
     f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   l o d ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   l o d ) ;   \ 
         }   \ 
     } 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 1 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 2 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 3 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 4 ) 
 # u n d e f   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F 
 / / -   [ D O C - O N ] 
 # l i n e   1 2   2 
 
 / / -   D e t e r m i n e   i f   w e   r e c o m p u t e   t h e   t a n g e n t   f r a m e   p e r   p i x e l . 
 / / :   p a r a m   a u t o   p e r _ f r a g _ b i n o r m a l 
 u n i f o r m   b o o l   p e r F r a g B i n o r m a l ; 
 
 i n   v e c 3   v a r _ n o r m a l ; 
 i n   v e c 3   v a r _ t a n g e n t ; 
 i n   v e c 3   v a r _ b i t a n g e n t ; 
 i n   v e c 3   v a r _ p o s i t i o n ; 
 i n   v e c 4   v a r _ c o l o r [ 1 ] ; 
 i n   v e c 2   v a r _ t e x _ c o o r d [ 8 ] ; 
 
 / / -   V 2 F   s t r u c t u r e   d e f i n i t i o n 
 s t r u c t   V 2 F   { 
     v e c 3   n o r m a l ; 
     v e c 3   t a n g e n t ; 
     v e c 3   b i t a n g e n t ; 
     v e c 3   p o s i t i o n ; 
     v e c 4   c o l o r [ 1 ] ; 
     v e c 2   t e x _ c o o r d ; 
     S p a r s e C o o r d   s p a r s e _ c o o r d ; 
     v e c 2   m u l t i _ t e x _ c o o r d [ 8 ] ; 
 } ; 
 
 / / -   F i l l   V 2 F   s t r u c t u r e   w i t h   v a r y i n g   v a r i a b l e s 
 v o i d   f i l l V 2 F ( o u t   V 2 F   i n p u t s )   { 
 	 i n p u t s . n o r m a l   =   v a r _ n o r m a l ; 
 	 i n p u t s . t a n g e n t   =   v a r _ t a n g e n t ; 
 	 i n p u t s . b i t a n g e n t   =   v a r _ b i t a n g e n t ; 
 	 i n p u t s . p o s i t i o n   =   v a r _ p o s i t i o n ; 
 	 i n p u t s . c o l o r   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d [ 0 ] ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d   =   v a r _ t e x _ c o o r d ; 
 
 	 / / -   R e c o m p u t e   t a n g e n t   s p a c e   t o   b e   c o m p a t i b l e   w i t h   U E 4 
 	 i f   ( p e r F r a g B i n o r m a l ) 
 	 { 
 	 	 v e c 3   p p b i t a n g e n t   =   c r o s s ( i n p u t s . n o r m a l ,   i n p u t s . t a n g e n t ) ; 
 	 	 i n p u t s . b i t a n g e n t   =   s i g n ( d o t ( i n p u t s . b i t a n g e n t ,   p p b i t a n g e n t ) )   *   p p b i t a n g e n t ; 
 	 } 
 } 
 
 / / -   U s e r   ' s h a d e '   f u n c t i o n   o u t p u t s 
 s t r u c t   O u t p u t s   { 
     f l o a t   a l p h a ; 
     v e c 3   d i f f u s e S h a d i n g ; 
     v e c 3   s p e c u l a r S h a d i n g ; 
     v e c 3   e m i s s i v e C o l o r ; 
     v e c 3   a l b e d o ; 
     v e c 4   s s s C o e f f i c i e n t s ; 
 } ; 
 
 / / -   M e c a n i s m   t o   f o r c e   d e a d   c o d e   r e m o v a l ,   n e c e s s a r y   a t   l e a s t   o n   O S X : 
 / / - 	 t h e   O u t p u t s   s t r u c t   i s   g l o b a l   a n d   f i e l d s   a r e   s e t   u s i n g   m a c r o s   . . . 
 O u t p u t s   o u t p u t s _ ; 
 
 v o i d   f i l l D e f a u l t O u t p u t s ( )   { 
 	 o u t p u t s _ . a l p h a                       =   1 . 0 ; 
 	 o u t p u t s _ . d i f f u s e S h a d i n g     =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . s p e c u l a r S h a d i n g   =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . e m i s s i v e C o l o r       =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . a l b e d o                     =   v e c 3 ( 1 . 0 ) ; 
 	 o u t p u t s _ . s s s C o e f f i c i e n t s   =   v e c 4 ( 0 . 0 ) ; 
 } 
 
 # i f d e f   O P T I M I Z E _ A L P H A _ O U T 
 # d e f i n e   a l p h a O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l p h a O u t p u t ( v )   o u t p u t s _ . a l p h a   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ D I F F U S E _ S H A D I N G _ O U T 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v )   o u t p u t s _ . d i f f u s e S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S P E C U L A R _ S H A D I N G _ O U T 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v )   o u t p u t s _ . s p e c u l a r S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ E M I S S I V E _ O U T 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v )   o u t p u t s _ . e m i s s i v e C o l o r   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ A L B E D O _ O U T 
 # d e f i n e   a l b e d o O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l b e d o O u t p u t ( v )   o u t p u t s _ . a l b e d o   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v )   o u t p u t s _ . s s s C o e f f i c i e n t s   =   ( v ) 
 # e n d i f 
 # l i n e   1 6   0 
 # l i n e   0   4 
 / / -   l i b - v i s i b i l i t y . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 
 / / -   C u r r e n t   U V   t i l e   i n d e x 
 / / :   p a r a m   a u t o   v i s i b i l i t y _ u v t i l e _ i n d e x 
 u n i f o r m   u i n t   u v t i l e _ i n d e x ; 
 
 / / -   C u r r e n t   U V   t i l e   s i z e   i n   p i x e l s 
 / / :   p a r a m   a u t o   v i s i b i l i t y _ u v t i l e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ s i z e ; 
 
 / / -   C u r r e n t   U V   t i l e   i n v e r s e   o f   s i z e   i n   p i x e l s 
 / / :   p a r a m   a u t o   v i s i b i l i t y _ u v t i l e _ i n v _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ i n v e r s e _ s i z e ; 
 
 / / -   C u r r e n t   U V   t i l e   v i s i b i l i t y   g r i d   l o g 2   s i z e   i n   p i x e l s 
 / / :   p a r a m   a u t o   v i s i b i l i t y _ s i z e _ l o g 2 
 u n i f o r m   u v e c 2   v i s i b i l i t y _ s i z e _ l o g 2 ; 
 
 / / -   C u r r e n t   U V   t i l e   i n d i c e s 
 / / :   p a r a m   a u t o   u v t i l e _ i n d i c e s 
 u n i f o r m   i v e c 2   u v t i l e _ i n d i c e s ; 
 
 
 / / -   R e t u r n   S V T   U V / L o D / U V T i l e   i n d e x   v i s i b i l i t y   i n f o r m a t i o n   f o r   c u r r e n t   f r a g m e n t 
 u v e c 4   v i s i b i l i t y U V O f F r a g m e n t ( v e c 2   t e x c o o r d ) 
 { 
 	 u v e c 4   r e s ; 
 
 	 / /   C o m p u t e   L o D   f r o m   U V   a n d   t e x t u r e   s i z e 
 	 v e c 2   p i x c o o r d   =   t e x c o o r d   *   u v t i l e _ s i z e ; 
 	 v e c 2   d f d x   =   d F d x ( p i x c o o r d ) ; 
 	 v e c 2   d f d y   =   d F d y ( p i x c o o r d ) ; 
 
 	 i f   ( u v t i l e _ i n d e x = = 0 u ) 
 	 { 
 	 	 r e s   =   u v e c 4 ( 0 u ) ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 / /   S e e   s v t / s v t v i s i b i l i t y r e n d e r . h 
 
 	 	 d f d x   * =   d f d x ; 
 	 	 d f d y   * =   d f d y ; 
 	 	 f l o a t   l o d   =   m a x ( 0 . 0 , 0 . 5 * l o g 2 ( m a x ( d f d x . x + d f d y . x , d f d x . y + d f d y . y ) ) ) ; 
 	 	 l o d   =   m i n ( l o d , 7 . 5 ) ; 
 	 	 f l o a t   l o d f l o o r   =   f l o o r ( l o d ) ; 
 	 	 u i n t   l o d u   =   u i n t ( l o d f l o o r ) ; 
 
 	 	 u v e c 2   g r i d s i z e l o g 2   =   v i s i b i l i t y _ s i z e _ l o g 2   -   m i n ( u v e c 2 ( l o d u ) , v i s i b i l i t y _ s i z e _ l o g 2 ) ;       / /   c u r r e n t   l e v e l   g r i d   s i z e 
 	 	 u v e c 2   g r i d s i z e u   =   u v e c 2 ( 1 u ) < < g r i d s i z e l o g 2 ; 
 	 	 u v e c 2   g r i d m a s k u   =   g r i d s i z e u - u v e c 2 ( 1 u ) ; 
 	 	 v e c 2   g r i d s i z e   =   v e c 2 ( g r i d s i z e u ) ; 
 	 	 v e c 2   i n v g r i d s i z e   =   e x p 2 ( - v e c 2 ( g r i d s i z e l o g 2 ) ) ; 
 
 	 	 v e c 2   p i x s i z e   =   u v t i l e _ i n v e r s e _ s i z e * e x p 2 ( l o d f l o o r ) ;                               / /   c u r r e n t   l e v e l   n r m   p i x e l   s i z e 
 
 	 	 v e c 2   t i l e c o o r d   =   t e x c o o r d - p i x s i z e * 0 . 5 ;                                                       / /   o n   t e x e l   c e n t e r 
 	 	 i f   ( u v t i l e _ i n d i c e s . x = = 0 x 7 F F F F F F F )   {                                                             / /   I n d i c a t e s   t h a t   r e p e a t   a d r e s s i n g   i s   u s e d   i n s t e a d   
 	 	 	 t i l e c o o r d   =   f r a c t ( t i l e c o o r d ) ;                                                                 / /   R E P E A T 
 	 	 }   e l s e   { 
 	 	 	 t i l e c o o r d   - =   v e c 2 ( u v t i l e _ i n d i c e s ) ;                                                       / /   T r   t o   U V   c o o r d i n a t e s   o f   t h e   t i l e 
 	 	 	 t i l e c o o r d   =   c l a m p ( t i l e c o o r d , 0 . 0 , 1 . 0 ) ;                                                 / /   C L A M P 
 	 	 } 
 
 	 	 b v e c 2   o n b o r d e r   =   l e s s T h a n ( 
 	 	 	 f r a c t ( t i l e c o o r d * g r i d s i z e ) * i n v g r i d s i z e ,                                               / /   O n   t o p l e f t   b o r d e r 
 	 	 	 p i x s i z e ) ; 
 
 	 	 r e s . x   =   ( o n b o r d e r . x   ?   0 x 8 0 u   :   0 x 0 0 u )   | 
 	 	 	 m i n ( u i n t ( t i l e c o o r d . x * g r i d s i z e . x ) , g r i d m a s k u . x ) ; 
 	 	 r e s . y   =   ( o n b o r d e r . y   ?   0 x 8 0 u   :   0 x 0 0 u )   | 
 	 	 	 m i n ( u i n t ( t i l e c o o r d . y * g r i d s i z e . y ) , g r i d m a s k u . y ) ; 
 	 	 r e s . z   =   ( ( u v t i l e _ i n d e x < < 4 u ) & 0 x F 0 u )   | 
 	 	 	 ( f r a c t ( l o d ) ! = 0 . 0   ?   0 x 0 8 u   :   0 x 0 0 u )   | 
 	 	 	 l o d u ; 
 	 	 r e s . w   =   ( u v t i l e _ i n d e x > > 4 u ) & 0 x F F u ; 
 	 } 
 
 	 r e t u r n   r e s ; 
 } 
 
 # l i n e   1 7   0 
 
 / /   A l p h a   t e s t   /   b l e n d 
 u n i f o r m   b o o l   a l g _ a l p h a _ t e s t   =   f a l s e ; 
 
 o u t   u v e c 4   o c o l o r 0 ; 
 
 v o i d   m a i n ( v o i d ) 
 { 
 	 v e c 2   t e x _ c o o r d   =   v a r _ t e x _ c o o r d [ 0 ] ; 
 
 	 o c o l o r 0   =   v i s i b i l i t y U V O f F r a g m e n t ( t e x _ c o o r d ) ; 
 
 	 / /   I f   b l e n d   O R   a l p h a   t e s t :   d i s c a r d   w /   5 0 %   o f   p r o b a b i l i t y ,   b a s e d   o n   U V   h a s h 
 	 / /   i n s p i r e d   b y   m u r m u r h a s h 3   o u t r o 
 	 i f   ( a l g _ a l p h a _ t e s t )   { 
 	 	 u i n t   c   =   f l o a t B i t s T o U i n t ( t e x _ c o o r d . x ) ^ f l o a t B i t s T o U i n t ( t e x _ c o o r d . y ) ; 
 	 	 c   ^ =   c   > >   1 6 u ; 
 	 	 c   * =   0 x 8 5 e b c a 6 b u ; 
 	 	 c   ^ =   c   > >   1 3 u ; 
 	 	 c   * =   0 x c 2 b 2 a e 3 5 u ; 
 	 	 c   ^ =   c   > >   1 6 u ; 
 	 	 i f   ( ( c & 0 x 8 0 0 0 u ) ! = 0 u )   d i s c a r d ; 
 	 } 
 } 
   4 l a s t _ v a l i d _ f r a g m e n t _ s o u r c e   
  �� # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # l i n e   0   1 
 # i f d e f   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # e x t e n s i o n   G L _ A R B _ b i n d l e s s _ t e x t u r e   :   r e q u i r e 
 l a y o u t   ( b i n d l e s s _ s a m p l e r )   u n i f o r m ; 
 # e n d i f 
 
 # i f   _ _ V E R S I O N _ _   <   4 0 0 
 # e x t e n s i o n   G L _ A R B _ t e x t u r e _ q u e r y _ l o d   :   e n a b l e 
 # d e f i n e   t e x t u r e Q u e r y L o d ( S A M P L E R ,   P )   t e x t u r e Q u e r y L O D ( ( S A M P L E R ) ,   ( P ) ) 
 # e n d i f 
 # l i n e   7   0 
 
 # d e f i n e   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 
 # l i n e   0   2 
 / / -   s h a d e r - c o m m o n . f r a g . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` f i l l V 2 F ` 
 / / -   ` f i l l D e f a u l t O u t p u t s ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` V 2 F ` 
 / / -   ` O u t p u t s ` 
 
 # l i n e   0   3 
 / / -   l i b - s p a r s e . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   T h i s   f i l e   p r o v i d e s   u s e f u l   f u n c t i o n s   t o   e n s u r e   s p a r s e   t e x t u r e s   s a m p l i n g 
 / / -   c o r r e c t n e s s   ( A R B _ s p a r s e _ t e x t u r e ) . 
 / / -   A l l o w s   t o   s a m p l e   o n l y   p a r t   o f   t e x t u r e s   r e a l l y   p r e s e n t   i n   v i d e o   m e m o r y . 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t S p a r s e C o o r d ` 
 / / -   ` t e x t u r e S p a r s e Q u e r y L o d ` 
 / / -   ` t e x t u r e S p a r s e ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` S a m p l e r S p a r s e ` 
 / / -   ` S p a r s e C o o r d ` 
 / / - 
 / / -   T h e   ` F E A T U R E _ S P A R S E _ T E X T U R E `   m a c r o   i s   d e f i n e d   o n l y   i f   t h e   s p a r s e   v i r t u a l   t e x t u r e   e x t e n s i o n   i s   e n a b l e d . 
 / / - 
 / / -   I f   e n a b l e d ,   p r o c e s s   a d d i t i o n a l   t e x t u r e   l o o k u p   c h e c k s   t o   c l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g . 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ c h e c k _ n e e d e d 
 u n i f o r m   b o o l   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   =   f a l s e ; 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ m a s k 
 u n i f o r m   u s a m p l e r 2 D   m a t e r i a l _ l o d _ m a s k ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   S a m p l e r   a n d   s p a r s e   t e x t u r e   i n f o r m a t i o n   s t r u c t u r e 
 / / - 
 / / -   U s e d   t o   q u e r y   a l l   s a m p l e r   r e l a t e d   u n i f o r m s   w i t h   a   s i n g l e   a u t o   b i n d i n g 
 s t r u c t   S a m p l e r S p a r s e   { 
     s a m p l e r 2 D   t e x ; 
     v e c 4   s i z e ;   / /   w i d t h ,   h e i g h t ,   1 / w i d t h ,   1 / h e i g h t 
     b o o l   i s _ s e t ;   / /   a   b o o l e a n   i n d i c a t i n g   w h e t h e r   t h e   t e x t u r e   i s   i n   t h e   t e x t u r e   s e t   o r   n o t 
     u v e c 3   l o d _ m a s k _ s e l e c t ;   / /   m a s k i n g   o p e r a t i o n s   d e s c r i p t i o n   a l l o w i n g   t o   r e t r i e v e   l o a d e d   m i p m a p s   i n f o r m a t i o n 
 } ; 
 
 / / -   S p a r s e   s a m p l i n g   c o o r d i n a t e s 
 / / - 
 / / -   S t o r e   t h e   U V   c o o r d i n a t e s   &   m a t e r i a l - w i s e   s p a r s e   L o D   m a s k 
 s t r u c t   S p a r s e C o o r d   { 
     v e c 2   t e x _ c o o r d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 u i n t   g e t T e x t u r e L o d M a s k ( u v e c 3   l o d M a s k S e l e c t ,   u i n t   m a t e r i a l L o d M a s k )   { 
     m a t e r i a l L o d M a s k   > > =   l o d M a s k S e l e c t . x ; 
     m a t e r i a l L o d M a s k   & =   l o d M a s k S e l e c t . y ; 
     m a t e r i a l L o d M a s k   | =   l o d M a s k S e l e c t . z ; 
     r e t u r n   m a t e r i a l L o d M a s k ; 
 } 
 
 f l o a t   g e t F i x e d S p a r s e L o d ( u i n t   l o d M a s k ,   f l o a t   r e q u e s t e d L o d )   { 
     r e q u e s t e d L o d   =   m a x ( r e q u e s t e d L o d , 0 . 0 ) ; 
     u i n t   r e q u e s t e d M a s k   =   ( 1 u < < u i n t ( r e q u e s t e d L o d ) )   |   ( 1 u < < u i n t ( c e i l ( r e q u e s t e d L o d ) ) ) ; 
     i f   ( ( r e q u e s t e d M a s k & l o d M a s k ) ! = r e q u e s t e d M a s k )   { 
         / /   I f   t h e   r e q u e s t e d   l e v e l s   a r e   n o t   l o a d e d ;   r e t u r n   t h e   f i r s t   a v a i l a b l e 
         l o d M a s k   & =   ~ ( l o d M a s k - 1 u ) ; 
         r e q u e s t e d L o d   =   l o g 2 ( f l o a t ( m a x ( l o d M a s k , 1 u ) ) ) ; 
     } 
     r e t u r n   r e q u e s t e d L o d ; 
 } 
 
 / / -   [ D O C - O N ] 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   0 u ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     f l o a t   r e q u e s t e d L e v e l   =   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         r e t u r n   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   r e q u e s t e d L e v e l ) ; 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e q u e s t e d L e v e l ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     r e t u r n   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   G i v e n   a   t e x t u r e ,   p e r f o r m s   a n   o p t i m i z e d   m u l t i p l e   t e x t u r e   l o o k u p s   w i t h   s m a l l   o f f s e t s 
 / / - 
 / / -   W e   a r e   p r o v i d i n g   a l t e r n a t i v e s   v e r s i o n s   o f   t h i s   h e l p e r   f o r   u p   t o   N = 4 
 
 / / -   [ D O C - O F F ] 
 / *   P r o v i d e   a   f a k e d   d o c u m e n t a t i o n   t o   b e   m o r e   r e a d a b l e   f o r   t h e   u s e r 
 / / -   [ D O C - O N ] 
 v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   { 
     f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   l o d ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   l o d ) ;   \ 
         }   \ 
     } 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 1 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 2 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 3 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 4 ) 
 # u n d e f   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F 
 / / -   [ D O C - O N ] 
 # l i n e   1 2   2 
 
 / / -   D e t e r m i n e   i f   w e   r e c o m p u t e   t h e   t a n g e n t   f r a m e   p e r   p i x e l . 
 / / :   p a r a m   a u t o   p e r _ f r a g _ b i n o r m a l 
 u n i f o r m   b o o l   p e r F r a g B i n o r m a l ; 
 
 i n   v e c 3   v a r _ n o r m a l ; 
 i n   v e c 3   v a r _ t a n g e n t ; 
 i n   v e c 3   v a r _ b i t a n g e n t ; 
 i n   v e c 3   v a r _ p o s i t i o n ; 
 i n   v e c 4   v a r _ c o l o r [ 1 ] ; 
 i n   v e c 2   v a r _ t e x _ c o o r d [ 8 ] ; 
 
 / / -   V 2 F   s t r u c t u r e   d e f i n i t i o n 
 s t r u c t   V 2 F   { 
     v e c 3   n o r m a l ; 
     v e c 3   t a n g e n t ; 
     v e c 3   b i t a n g e n t ; 
     v e c 3   p o s i t i o n ; 
     v e c 4   c o l o r [ 1 ] ; 
     v e c 2   t e x _ c o o r d ; 
     S p a r s e C o o r d   s p a r s e _ c o o r d ; 
     v e c 2   m u l t i _ t e x _ c o o r d [ 8 ] ; 
 } ; 
 
 / / -   F i l l   V 2 F   s t r u c t u r e   w i t h   v a r y i n g   v a r i a b l e s 
 v o i d   f i l l V 2 F ( o u t   V 2 F   i n p u t s )   { 
 	 i n p u t s . n o r m a l   =   v a r _ n o r m a l ; 
 	 i n p u t s . t a n g e n t   =   v a r _ t a n g e n t ; 
 	 i n p u t s . b i t a n g e n t   =   v a r _ b i t a n g e n t ; 
 	 i n p u t s . p o s i t i o n   =   v a r _ p o s i t i o n ; 
 	 i n p u t s . c o l o r   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d [ 0 ] ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d   =   v a r _ t e x _ c o o r d ; 
 
 	 / / -   R e c o m p u t e   t a n g e n t   s p a c e   t o   b e   c o m p a t i b l e   w i t h   U E 4 
 	 i f   ( p e r F r a g B i n o r m a l ) 
 	 { 
 	 	 v e c 3   p p b i t a n g e n t   =   c r o s s ( i n p u t s . n o r m a l ,   i n p u t s . t a n g e n t ) ; 
 	 	 i n p u t s . b i t a n g e n t   =   s i g n ( d o t ( i n p u t s . b i t a n g e n t ,   p p b i t a n g e n t ) )   *   p p b i t a n g e n t ; 
 	 } 
 } 
 
 / / -   U s e r   ' s h a d e '   f u n c t i o n   o u t p u t s 
 s t r u c t   O u t p u t s   { 
     f l o a t   a l p h a ; 
     v e c 3   d i f f u s e S h a d i n g ; 
     v e c 3   s p e c u l a r S h a d i n g ; 
     v e c 3   e m i s s i v e C o l o r ; 
     v e c 3   a l b e d o ; 
     v e c 4   s s s C o e f f i c i e n t s ; 
 } ; 
 
 / / -   M e c a n i s m   t o   f o r c e   d e a d   c o d e   r e m o v a l ,   n e c e s s a r y   a t   l e a s t   o n   O S X : 
 / / - 	 t h e   O u t p u t s   s t r u c t   i s   g l o b a l   a n d   f i e l d s   a r e   s e t   u s i n g   m a c r o s   . . . 
 O u t p u t s   o u t p u t s _ ; 
 
 v o i d   f i l l D e f a u l t O u t p u t s ( )   { 
 	 o u t p u t s _ . a l p h a                       =   1 . 0 ; 
 	 o u t p u t s _ . d i f f u s e S h a d i n g     =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . s p e c u l a r S h a d i n g   =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . e m i s s i v e C o l o r       =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . a l b e d o                     =   v e c 3 ( 1 . 0 ) ; 
 	 o u t p u t s _ . s s s C o e f f i c i e n t s   =   v e c 4 ( 0 . 0 ) ; 
 } 
 
 # i f d e f   O P T I M I Z E _ A L P H A _ O U T 
 # d e f i n e   a l p h a O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l p h a O u t p u t ( v )   o u t p u t s _ . a l p h a   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ D I F F U S E _ S H A D I N G _ O U T 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v )   o u t p u t s _ . d i f f u s e S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S P E C U L A R _ S H A D I N G _ O U T 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v )   o u t p u t s _ . s p e c u l a r S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ E M I S S I V E _ O U T 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v )   o u t p u t s _ . e m i s s i v e C o l o r   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ A L B E D O _ O U T 
 # d e f i n e   a l b e d o O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l b e d o O u t p u t ( v )   o u t p u t s _ . a l b e d o   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v )   o u t p u t s _ . s s s C o e f f i c i e n t s   =   ( v ) 
 # e n d i f 
 # l i n e   1 1   0 
 # l i n e   1 2   0 
 # l i n e   0   4 
 / / -   A l l e g o r i t h m i c   u t i l i t y   f u n c t i o n s 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   T o n e   m a p p i n g 
 / / -   - - - - - - - - - - - - 
 / / -   T h e s e   a r e   e x a m p l e s   o f   t o n e   m a p p i n g   y o u   c a n   u s e   i n   y o u r   s h a d e r .   P a i n t e r   d o e s n ' t   a p p l y   a n y 
 / / -   t o n e   m a p p i n g   e x c e p t   t h e   o p t i o n a l   o n e   a p p l i e d   b y   Y e b i s .   I f   y o u   d e c i d e   t o   d o   s o m e   t o n e   m a p p i n g 
 / / -   i n   y o u r   s h a d e r ,   i t   w i l l   b e   a p p l i e d   b e f o r e   Y e b i s   t o n e   m a p p i n g . 
 / / - 
 / / -   P e r f o r m   t h e   S - c u r v e   t o n e   m a p p i n g   b a s e d   o n   t h e   p a r a m e t e r s   s i g m a   a n d   n . 
 v e c 3   t o n e m a p S C u r v e ( v e c 3   v a l u e ,   f l o a t   s i g m a ,   f l o a t   n ) 
 { 
     v e c 3   p o w _ v a l u e   =   p o w ( v a l u e ,   v e c 3 ( n ) ) ; 
     r e t u r n   p o w _ v a l u e   /   ( p o w _ v a l u e   +   p o w ( s i g m a ,   n ) ) ; 
 } 
 
 / / -   s R G B   c o n v e r s i o n s 
 / / -   - - - - - - - - - - - - - - - - 
 / / -   T h e s e   a r e   t h e   c o n v e r s i o n s   u s e d   i n   P a i n t e r .   Y o u   c a n   o v e r r i d e   t h e   a u t o m a t i c   l i n e a r   - >   s R G B 
 / / -   c o n v e r s i o n   i n   t h e   v i e w p o r t   b y   p u t t i n g   t h i s   l i n e   i n   y o u r   c u s t o m   s h a d e r : 
 / / - 
 / / -   ` # d e f i n e   D I S A B L E _ F R A M E B U F F E R _ S R G B _ C O N V E R S I O N ` 
 / / - 
 / / -   a n d   d o i n g   y o u r   o w n   c u s t o m   c o n v e r s i o n . 
 / / - 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 f l o a t   s R G B 2 l i n e a r ( f l o a t   x ) 
 { 
     r e t u r n   x   < =   0 . 0 4 0 4 5   ? 
         x   *   0 . 0 7 7 3 9 9 3 8 0 8   :   / /   1 . 0 / 1 2 . 9 2 
         p o w ( ( x   +   0 . 0 5 5 )   /   1 . 0 5 5 ,   2 . 4 ) ; 
 } 
 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   s R G B 2 l i n e a r ( v e c 3   r g b ) 
 { 
     r e t u r n   v e c 3 ( 
         s R G B 2 l i n e a r ( r g b . r ) , 
         s R G B 2 l i n e a r ( r g b . g ) , 
         s R G B 2 l i n e a r ( r g b . b ) ) ; 
 } 
 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   s R G B 2 l i n e a r ( v e c 4   r g b a ) 
 { 
     r e t u r n   v e c 4 ( s R G B 2 l i n e a r ( r g b a . r g b ) ,   r g b a . a ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 f l o a t   l i n e a r 2 s R G B ( f l o a t   x ) 
 { 
     r e t u r n   x   < =   0 . 0 0 3 1 3 0 8   ? 
             1 2 . 9 2   *   x   : 
             1 . 0 5 5   *   p o w ( x ,   0 . 4 1 6 6 6 )   -   0 . 0 5 5 ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   l i n e a r 2 s R G B ( v e c 3   r g b ) 
 { 
     r e t u r n   v e c 3 ( 
             l i n e a r 2 s R G B ( r g b . r ) , 
             l i n e a r 2 s R G B ( r g b . g ) , 
             l i n e a r 2 s R G B ( r g b . b ) ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   l i n e a r 2 s R G B ( v e c 4   r g b a ) 
 { 
     r e t u r n   v e c 4 ( l i n e a r 2 s R G B ( r g b a . r g b ) ,   r g b a . a ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   S c a l a r   v e r s i o n . 
 / / :   p a r a m   a u t o   c o n v e r s i o n _ l i n e a r _ t o _ s r g b 
 u n i f o r m   b o o l   c o n v e r t _ t o _ s r g b _ o p t ; 
 f l o a t   l i n e a r 2 s R G B O p t ( f l o a t   x ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( x )   :   x ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   R G B   v e r s i o n . 
 v e c 3   l i n e a r 2 s R G B O p t ( v e c 3   r g b ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( r g b )   :   r g b ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   l i n e a r 2 s R G B O p t ( v e c 4   r g b a ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( r g b a )   :   r g b a ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 u n i f o r m   i n t   o u t p u t _ c o n v e r s i o n _ m e t h o d ; 
 f l o a t   c o n v e r t O u t p u t ( f l o a t   x ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   x ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( x ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( x ) ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   c o n v e r t O u t p u t ( v e c 3   r g b ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   r g b ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( r g b ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( r g b ) ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   c o n v e r t O u t p u t ( v e c 4   r g b a ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   r g b a ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( r g b a ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( r g b a ) ; 
 } 
 
 / / -   D i t h e r i n g 
 / / -   - - - - - - - - - 
 / / -   T h e s e   a r e   s o m e   h e l p e r s   t o   a d d   d i t h e r i n g   t o   s h a d e r s . 
 / / - 
 / / -   U s e   8 x 8   B a y e r   m a t r i x   f o r   d i t h e r i n g   m o d e 
 # l i n e   0   5 
 / / -   l i b - b a y e r . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` b a y e r M a t r i x 8 ` 
 / / - 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 u i n t   r e v e r s e B i t s ( u i n t   i )   { 
     i   =   ( i   &   0 x A A A A A A A A u )   > >   1 u   |   ( i   &   0 x 5 5 5 5 5 5 5 5 u )   < <   1 u ; 
     i   =   ( i   &   0 x C C C C C C C C u )   > >   2 u   |   ( i   &   0 x 3 3 3 3 3 3 3 3 u )   < <   2 u ; 
     i   =   ( i   &   0 x 0 0 0 0 0 0 C 0 u )   > >   6 u   |   ( i   &   0 x 0 0 0 0 0 0 0 F u )   < <   2 u ; 
     r e t u r n   i ; 
 } 
 
 u i n t   s t r i d e B i t s ( u i n t   i )   { 
     i   =   ( i   |   ( i   < <   4 u ) )   &   0 x 0 F 0 F 0 F 0 F u ; 
     i   =   ( i   |   ( i   < <   2 u ) )   &   0 x 3 3 3 3 3 3 3 3 u ; 
     i   =   ( i   |   ( i   < <   1 u ) )   &   0 x 5 5 5 5 5 5 5 5 u ; 
     r e t u r n   i ; 
 } 
 
 u i n t   i n t e r l e a v e B i t s ( u i n t   i ,   u i n t   j )   { 
     r e t u r n   s t r i d e B i t s ( i )   |   ( s t r i d e B i t s ( j )   < <   1 ) ; 
 } 
 
 u i n t   b a y e r ( u i n t   i ,   u i n t   j )   { 
     r e t u r n   r e v e r s e B i t s ( i n t e r l e a v e B i t s ( i   ^   j ,   j ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 f l o a t   b a y e r M a t r i x 8 ( u v e c 2   c o o r d s )   { 
     r e t u r n   ( f l o a t ( b a y e r ( c o o r d s . x ,   c o o r d s . y ) )   +   0 . 5 )   /   6 4 . 0 ; 
 } 
 # l i n e   1 2 2   4 
 
 f l o a t   g e t D i t h e r T h r e s h o l d ( u v e c 2   c o o r d s ) 
 { 
     r e t u r n   b a y e r M a t r i x 8 ( c o o r d s ) ; 
 } 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 / /   d i t h e r   a   c o l o r   p o s t   c o l o r   m a n a g e m e n t 
 v e c 4   d i t h e r P o s t C M ( v e c 4   c o l o r ) 
 { 
     f l o a t   d i t h e r   =   0 . 0 0 4   *   ( g e t D i t h e r T h r e s h o l d ( u v e c 2 ( g l _ F r a g C o o r d . x y ) )   -   0 . 5 ) ;   / /   - 1 / 5 1 2   <   d i t h e r   <   1 / 5 1 2 
     r e t u r n   v e c 4 ( c o l o r . r g b   +   v e c 3 ( d i t h e r ) ,   c o l o r . a ) ; 
 } 
 
 / /   1 . 0 / d e r i v a t i v e   o f   l i n e a r 2 s R G B   t r a n s f o r m . 
 / /   I n t u i t i v e l y   i t   a l l o w s   t o   g e t   a   k i n d   o f   a   l i n e a r   " s t e p "   b e t w e e n   t w o 
 / /   c o n s e c u t i v e   s R G B   i n t e n s i t i e s . 
 f l o a t   l i n e a r 2 s R G B I n v D e r i v ( f l o a t   x )   { 
     r e t u r n   x   < =   0 . 0 0 3 1 3 0 8   ? 
         1 . 0   /   1 2 . 9 2   : 
         ( 2 . 4   /   1 . 0 5 5 )   *   p o w ( x ,   1 . 4   /   2 . 4 ) ; 
 } 
 
 / /   d i t h e r   a   c o l o r   a f t e r   c o l o r   m a n a g e m e n t   e x c e p t   s R G B   c o n v e r s i o n   t h a t   w i l l   b e 
 / /   d o n e   l a t e r 
 v e c 4   d i t h e r P r e S R G B ( v e c 4   c o l o r ) 
 { 
     f l o a t   d i t h e r   =   0 . 0 0 4   *   ( g e t D i t h e r T h r e s h o l d ( u v e c 2 ( g l _ F r a g C o o r d . x y ) )   -   0 . 5 ) ;   / /   - 1 / 5 1 2   <   d i t h e r   <   1 / 5 1 2 
     v e c 3   d e r i v   =   v e c 3 ( 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . r ) , 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . g ) , 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . b ) ) ; 
     r e t u r n   v e c 4 ( c o l o r . r g b   +   d i t h e r   *   d e r i v ,   c o l o r . a ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 v e c 4   R G B 2 G r a y ( v e c 4   r g b a ) 
 { 
     f l o a t   g r a y   =   0 . 2 9 9   *   r g b a . r   +   0 . 5 8 7   *   r g b a . g   +   0 . 1 1 4   *   r g b a . b ; 
     r e t u r n   v e c 4 ( v e c 3 ( g r a y ) ,   r g b a . a ) ; 
 } 
 
 / / -   R e m o v e   A O   a n d   s h a d o w s   o n   g l o s s y   m e t a l l i c   s u r f a c e s   ( c l o s e   t o   m i r r o r s ) 
 f l o a t   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( f l o a t   d i f f u s e O c c l u s i o n ,   f l o a t   m e t a l l i c ,   f l o a t   r o u g h n e s s ) 
 { 
     r e t u r n   m i x ( d i f f u s e O c c l u s i o n ,   1 . 0 ,   m e t a l l i c   *   ( 1 . 0   -   r o u g h n e s s )   *   ( 1 . 0   -   r o u g h n e s s ) ) ; 
 } 
 # l i n e   1 3   0 
 c o n s t   v e c 4   Q U I C K _ M A S K _ C O L O R   =   v e c 4 ( 0 . 0 ,   0 . 0 ,   0 . 0 ,   1 . 0 ) ; 
 
 / / :   p a r a m   a u t o   s e l e c t i o n _ e n a b l e 
 u n i f o r m   b o o l   a l g _ h a s _ s e l e c t i o n ; 
 / / :   p a r a m   a u t o   s e l e c t i o n _ e d i t e d 
 u n i f o r m   b o o l   a l g _ s e l e c t i o n _ i s _ e d i t e d ; 
 / / :   p a r a m   a u t o   t e x t u r e _ s e l e c t i o n 
 u n i f o r m   s a m p l e r 2 D   a l g _ s e l e c t i o n _ t e x ; 
 / / :   p a r a m   a u t o   d i t h e r 
 u n i f o r m   b o o l   a l g _ d i t h e r ; 
 / /   A l p h a   t e s t   e m u l a t i o n 
 u n i f o r m   b o o l   a l g _ a l p h a _ t e s t   =   f a l s e ; 
 
 o u t   v e c 4   o c o l o r 0 ; 
 
 # l i n e   0   6 
 / / -   A l l e g o r i t h m i c   M e t a l / R o u g h   C o a t i n g   P B R   s h a d e r 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r i e s . 
 # l i n e   0   7 
 / / -   l i b - s s s . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t S S S C o e f f i c i e n t s ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   8 
 / / -   l i b - s a m p l e r . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t A O ` 
 / / -   ` g e t S h a d o w F a c t o r ` 
 / / -   ` g e t G l o s s i n e s s ` 
 / / -   ` g e t R o u g h n e s s ` 
 / / -   ` g e t M e t a l l i c ` 
 / / -   ` g e t A n i s o t r o p y L e v e l ` 
 / / -   ` g e t A n i s o t r o p y A n g l e ` 
 / / -   ` g e t O p a c i t y ` 
 / / -   ` g e t H e i g h t ` 
 / / -   ` g e t D i s p l a c e m e n t ` 
 / / -   ` g e t S p e c u l a r L e v e l ` 
 / / -   ` g e t B a s e C o l o r ` 
 / / -   ` g e t D i f f u s e ` 
 / / -   ` g e t S p e c u l a r C o l o r ` 
 / / -   ` g e t S c a t t e r i n g ` 
 / / -   ` g e n e r a t e A n i s o t r o p i c R o u g h n e s s ` 
 / / -   ` g e n e r a t e D i f f u s e C o l o r ` 
 / / -   ` g e n e r a t e S p e c u l a r C o l o r ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   9 
 / / -   l i b - d e f i n e s . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   C o n s t a n t s : * * 
 / / -   ` M _ P I ` 
 / / -   ` M _ 2 P I ` 
 / / -   ` M _ I N V _ P I ` 
 / / -   ` M _ I N V _ L O G 2 ` 
 / / -   ` M _ G O L D E N _ R A T I O ` 
 / / - 
 / / -   S o m e   u s e f u l   c o n s t a n t s 
 c o n s t   f l o a t   M _ P I   =   3 . 1 4 1 5 9 2 6 5 ; 
 c o n s t   f l o a t   M _ 2 P I   =   2 . 0   *   M _ P I ; 
 c o n s t   f l o a t   M _ I N V _ P I   =   0 . 3 1 8 3 0 9 8 8 ; 
 c o n s t   f l o a t   M _ I N V _ L O G 2   =   1 . 4 4 2 6 9 5 ; 
 c o n s t   f l o a t   M _ G O L D E N _ R A T I O   =   1 . 6 1 8 0 3 4 ; 
 
 / / -   B l e n d i n g   m o d e s   c o n s t a n t s 
 c o n s t   i n t   B l e n d i n g M o d e _ D i s a b l e                         =     0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ R e p l a c e                         =     1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N o r m a l                           =     2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D a r k e n                           =     3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ M u l t i p l y                       =     4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r B u r n                     =     5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r B u r n                   =     6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i g h t e n                         =     7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S c r e e n                           =     8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r D o d g e                   =     9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r D o d g e                 =   1 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ O v e r l a y                         =   1 1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S o f t L i g h t                     =   1 2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ H a r d L i g h t                     =   1 3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ V i v i d L i g h t                   =   1 4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r L i g h t                 =   1 5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ P i n L i g h t                       =   1 6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D i f f e r e n c e                   =   1 7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ E x c l u s i o n                     =   1 8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ T i n t                               =   1 9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S a t u r a t i o n                   =   2 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r                             =   2 1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ V a l u e                             =   2 2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D i v i d e                           =   2 3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ I n v e r s e D i v i d e             =   2 4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ P a s s t h r u                       =   2 5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ C o m b i n e                   =   2 6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ O r i e n t e d                 =   2 7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ I n v e r s e O r i e n t e d   =   2 8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S u b t r a c t                       =   2 9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ I n v e r s e S u b t r a c t         =   3 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ A d d S u b                           =   3 1 ; 
 # l i n e   2 5   8 
 # l i n e   2 6   8 
 
 / / -   D e f a u l t   b a c k g r o u n d   c o l o r s   w h e n   t h e r e   i s   n o   d a t a   i n   c h a n n e l   ( a l p h a   i s   0 ) 
 c o n s t   v e c 3     D E F A U L T _ B A S E _ C O L O R               =   v e c 3 ( 0 . 5 ) ; 
 c o n s t   f l o a t   D E F A U L T _ R O U G H N E S S                 =   0 . 3 ; 
 c o n s t   f l o a t   D E F A U L T _ M E T A L L I C                   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A N I S O T R O P Y _ L E V E L   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A N I S O T R O P Y _ A N G L E   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ O P A C I T Y                     =   1 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A O                               =   1 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ S P E C U L A R _ L E V E L       =   0 . 5 ; 
 c o n s t   f l o a t   D E F A U L T _ H E I G H T                       =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ D I S P L A C E M E N T           =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ S C A T T E R I N G               =   0 . 0 ; 
 
 / / -   A O   m a p . 
 / / :   p a r a m   a u t o   a o _ b l e n d i n g _ m o d e 
 u n i f o r m   i n t   a o _ b l e n d i n g _ m o d e ; 
 / / :   p a r a m   a u t o   t e x t u r e _ a o 
 u n i f o r m   S a m p l e r S p a r s e   b a s e _ a o _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ a o 
 u n i f o r m   S a m p l e r S p a r s e   a o _ t e x ; 
 
 / / -   A   v a l u e   u s e d   t o   t w e a k   t h e   A m b i e n t   O c c l u s i o n   i n t e n s i t y . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 7 5 , 
 / / :       " l a b e l " :   " A O   I n t e n s i t y " , 
 / / :       " m i n " :   0 . 0 0 , 
 / / :       " m a x " :   1 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   a o _ i n t e n s i t y ; 
 
 / / -   S h a d o w m a s k . 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k _ e n a b l e 
 u n i f o r m   b o o l   s m _ e n a b l e ; 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k _ o p a c i t y 
 u n i f o r m   f l o a t   s m _ o p a c i t y ; 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k 
 u n i f o r m   s a m p l e r 2 D   s m _ t e x ; 
 / / :   p a r a m   a u t o   s c r e e n _ s i z e 
 u n i f o r m   v e c 4   s c r e e n _ s i z e ; 
 
 / / -   R e t u r n   s a m p l e d   g l o s s i n e s s   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t G l o s s i n e s s ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   ( 1 . 0   -   D E F A U L T _ R O U G H N E S S )   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t G l o s s i n e s s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t G l o s s i n e s s ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   r o u g h n e s s   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t R o u g h n e s s ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ R O U G H N E S S   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t R o u g h n e s s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t R o u g h n e s s ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   m e t a l l i c   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t M e t a l l i c ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ M E T A L L I C   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t M e t a l l i c ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t M e t a l l i c ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   a n i s o t r o p y   l e v e l   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t A n i s o t r o p y L e v e l ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ A N I S O T R O P Y _ L E V E L   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t A n i s o t r o p y L e v e l ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t A n i s o t r o p y L e v e l ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   a n i s o t r o p y   a n g l e   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t A n i s o t r o p y A n g l e ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   M _ 2 P I   *   ( s a m p l e d V a l u e . r   +   D E F A U L T _ A N I S O T R O P Y _ A N G L E   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ) ; 
 } 
 
 f l o a t   g e t A n i s o t r o p y A n g l e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     / /   M a n u a l   t r i l i n e a r   f i l t e r i n g 
     f l o a t   l e v e l   =   m a x ( 0 . 0 ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ) ; 
     i n t   l e v e l 0   =   i n t ( l e v e l ) ; 
     i n t   l e v e l 1   =   l e v e l 0   +   1 ; 
 
     i v e c 2   t e x S i z e 0   =   i v e c 2 ( s a m p l e r . s i z e . x y )   > >   l e v e l 0 ; 
     i v e c 2   t e x S i z e 1   =   t e x S i z e 0   > >   1 ; 
     i v e c 2   i t e x _ c o o r d 0   =   i v e c 2 ( c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 0 ) ) ; 
     i v e c 2   i t e x _ c o o r d 1   =   i v e c 2 ( c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 1 ) ) ; 
 
     / /   A s s u m i n g   t e x   s i z e s   a r e   p o w   o f   2 ,   w e   c a n   d o   t h e   f a s t   m o d u l o 
     i v e c 2   t e x S i z e M a s k 0   =   t e x S i z e 0   -   i v e c 2 ( 1 ) ; 
     i v e c 2   t e x S i z e M a s k 1   =   t e x S i z e 1   -   i v e c 2 ( 1 ) ; 
 
     / /   F e t c h   t h e   8   s a m p l e s   n e e d e d 
     f l o a t   a 0 0 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,     i t e x _ c o o r d 0                                 &   t e x S i z e M a s k 0 ,   l e v e l 0 ) ) ; 
     f l o a t   a 0 0 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 1 ,   0 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 0 1 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 0 ,   1 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 0 1 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 1 ,   1 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 0 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,     i t e x _ c o o r d 1                                 &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 0 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 1 ,   0 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 1 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 0 ,   1 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 1 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 1 ,   1 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
 
     / /   D e t e c t   i f   t h e   a n g l e   w a r p s   i n s i d e   t h e   f i l t e r i n g   f o o t p r i n t ,   a n d   f i x   i t 
     a 0 0 1   + =   a b s ( a 0 0 1 )   >   M _ P I   ?   s i g n ( a 0 0 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 0 1 0   + =   a b s ( a 0 1 0 )   >   M _ P I   ?   s i g n ( a 0 1 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 0 1 1   + =   a b s ( a 0 1 1 )   >   M _ P I   ?   s i g n ( a 0 1 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 0 0   + =   a b s ( a 1 0 0 )   >   M _ P I   ?   s i g n ( a 1 0 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 0 1   + =   a b s ( a 1 0 1 )   >   M _ P I   ?   s i g n ( a 1 0 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 1 0   + =   a b s ( a 1 1 0 )   >   M _ P I   ?   s i g n ( a 1 1 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 1 1   + =   a b s ( a 1 1 1 )   >   M _ P I   ?   s i g n ( a 1 1 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
 
     / /   T r i l i n e a r   b l e n d i n g   o f   t h e   s a m p l e s 
     v e c 2   t 0   =   c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 0 )   -   v e c 2 ( i t e x _ c o o r d 0 ) ; 
     v e c 2   t 1   =   c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 1 )   -   v e c 2 ( i t e x _ c o o r d 1 ) ; 
     r e t u r n   m i x ( 
         m i x ( m i x ( a 0 0 0 ,   a 0 0 1 ,   t 0 . x ) ,   m i x ( a 0 1 0 ,   a 0 1 1 ,   t 0 . x ) ,   t 0 . y ) , 
         m i x ( m i x ( a 1 0 0 ,   a 1 0 1 ,   t 1 . x ) ,   m i x ( a 1 1 0 ,   a 1 1 1 ,   t 1 . x ) ,   t 1 . y ) , 
         l e v e l   -   f l o a t ( l e v e l 0 ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   o p a c i t y   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t O p a c i t y ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ O P A C I T Y   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t O p a c i t y ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t O p a c i t y ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   h e i g h t   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t H e i g h t ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ H E I G H T   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t H e i g h t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t H e i g h t ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   d i s p l a c e m e n t   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t D i s p l a c e m e n t ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ D I S P L A C E M E N T   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t D i s p l a c e m e n t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t D i s p l a c e m e n t ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   a m b i e n t   o c c l u s i o n 
 f l o a t   g e t A O ( S p a r s e C o o r d   c o o r d ,   b o o l   i s _ p r e m u l t ) 
 { 
     v e c 2   a o _ l o o k u p   =   t e x t u r e S p a r s e ( b a s e _ a o _ t e x ,   c o o r d ) . r a ; 
     f l o a t   a o   =   a o _ l o o k u p . x   +   D E F A U L T _ A O   *   ( 1 . 0   -   a o _ l o o k u p . y ) ; 
 
     i f   ( a o _ t e x . i s _ s e t )   { 
         a o _ l o o k u p   =   t e x t u r e S p a r s e ( a o _ t e x ,   c o o r d ) . r g ; 
         i f   ( ! i s _ p r e m u l t )   a o _ l o o k u p . x   * =   a o _ l o o k u p . y ; 
         f l o a t   c h a n n e l _ a o   =   a o _ l o o k u p . x   +   D E F A U L T _ A O   *   ( 1 . 0   -   a o _ l o o k u p . y ) ; 
         i f   ( a o _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ R e p l a c e )   { 
             a o   =   c h a n n e l _ a o ; 
         }   e l s e   i f   ( a o _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ M u l t i p l y )   { 
             a o   * =   c h a n n e l _ a o ; 
         } 
     } 
 
     / /   M o d u l a t e   A O   v a l u e   b y   A O _ i n t e n s i t y 
     r e t u r n   m i x ( 1 . 0 ,   a o ,   a o _ i n t e n s i t y ) ; 
 } 
 
 / / -   H e l p e r   t o   g e t   a m b i e n t   o c c l u s i o n   f o r   s h a d i n g 
 f l o a t   g e t A O ( S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t A O ( c o o r d ,   t r u e ) ; 
 } 
 
 / / -   R e t u r n   s p e c u l a r   l e v e l 
 f l o a t   g e t S p e c u l a r L e v e l ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ S P E C U L A R _ L E V E L   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t S p e c u l a r L e v e l ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S p e c u l a r L e v e l ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   F e t c h   t h e   s h a d o w i n g   f a c t o r   ( s c r e e n - s p a c e ) 
 f l o a t   g e t S h a d o w F a c t o r ( ) 
 { 
     f l o a t   s h a d o w F a c t o r   =   1 . 0 ; 
 
     i f   ( s m _ e n a b l e )   { 
         v e c 2   s c r e e n C o o r d   =   ( g l _ F r a g C o o r d . x y   *   v e c 2 ( s c r e e n _ s i z e . z ,   s c r e e n _ s i z e . w ) ) ; 
         v e c 2   s h a d o w S a m p l e   =   t e x t u r e ( s m _ t e x ,   s c r e e n C o o r d ) . x y ; 
         / /   s h a d o w S a m p l e . x   /   s h a d o w S a m p l e . y   i s   t h e   n o r m a l i z e d   s h a d o w   f a c t o r . 
         / /   s h a d o w S a m p l e . x   m a y   a l r e a d y   b e   n o r m a l i z e d ,   s h a d o w S a m p l e . y   c o n t a i n s   0 . 0   i n   t h i s   c a s e . 
         s h a d o w F a c t o r   =   s h a d o w S a m p l e . y   = =   0 . 0   ?   s h a d o w S a m p l e . x   :   s h a d o w S a m p l e . x   /   s h a d o w S a m p l e . y ; 
     } 
 
     r e t u r n   m i x ( 1 . 0 ,   s h a d o w F a c t o r ,   s m _ o p a c i t y ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   b a s e   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t B a s e C o l o r ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r g b   +   D E F A U L T _ B A S E _ C O L O R   *   ( 1 . 0   -   s a m p l e d V a l u e . a ) ; 
 } 
 
 v e c 3   g e t B a s e C o l o r ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t B a s e C o l o r ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   d i f f u s e   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t D i f f u s e ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   g e t B a s e C o l o r ( s a m p l e d V a l u e ) ; 
 } 
 
 v e c 3   g e t D i f f u s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t D i f f u s e ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   s p e c u l a r   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t S p e c u l a r C o l o r ( v e c 4   s a m p l e d V a l u e ) 
 { 
     v e c 3   s p e c C o l o r   =   s a m p l e d V a l u e . r g b   +   D E F A U L T _ B A S E _ C O L O R   *   ( 1 . 0   -   s a m p l e d V a l u e . a ) ; 
     v e c 3   d e f a u l t F 0   =   m i x ( v e c 3 ( 0 . 0 4 ) ,   s p e c C o l o r ,   D E F A U L T _ M E T A L L I C ) ; 
     r e t u r n   m i x ( s p e c C o l o r ,   d e f a u l t F 0 ,   ( 1 . 0   -   s a m p l e d V a l u e . a ) ) ; 
 } 
 
 v e c 3   g e t S p e c u l a r C o l o r ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S p e c u l a r C o l o r ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   G e n e r a t e   a n i s o t r o p i c   r o u g h n e s s   f r o m   r o u g h n e s s   a n d   a n i s o t r o p y   l e v e l 
 v e c 2   g e n e r a t e A n i s o t r o p i c R o u g h n e s s ( f l o a t   r o u g h n e s s ,   f l o a t   a n i s o L e v e l ) 
 { 
     r e t u r n   v e c 2 ( r o u g h n e s s ,   r o u g h n e s s   /   s q r t ( m a x ( 1 e - 8 ,   1 . 0   -   a n i s o L e v e l ) ) ) ; 
 } 
 
 / / -   G e n e r a t e   d i f f u s e   c o l o r   f r o m   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r 
 v e c 3   g e n e r a t e D i f f u s e C o l o r ( v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   b a s e C o l o r   *   ( 1 . 0   -   m e t a l l i c ) ; 
 } 
 
 / / -   G e n e r a t e   s p e c u l a r   c o l o r   f r o m   d i e l e c t r i c   s p e c u l a r   l e v e l ,   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r 
 v e c 3   g e n e r a t e S p e c u l a r C o l o r ( f l o a t   s p e c u l a r L e v e l ,   v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   m i x ( v e c 3 ( 0 . 0 8   *   s p e c u l a r L e v e l ) ,   b a s e C o l o r ,   m e t a l l i c ) ; 
 } 
 
 / / -   G e n e r a t e   s p e c u l a r   c o l o r   f r o m   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r ,   u s i n g   d e f a u l t 
 / / -   s p e c u l a r   l e v e l   ( 0 . 0 4 )   f o r   d i e l e c t r i c s 
 v e c 3   g e n e r a t e S p e c u l a r C o l o r ( v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   m i x ( v e c 3 ( 0 . 0 4 ) ,   b a s e C o l o r ,   m e t a l l i c ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   s c a t t e r i n g   v a l u e   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t S c a t t e r i n g ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ S C A T T E R I N G   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t S c a t t e r i n g ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S c a t t e r i n g ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 # d e f i n e   D E C L A R E _ D E P R E C A T E D _ H E L P E R ( N A M E ,   T Y P E )   \ 
     T Y P E   g e t # # N A M E ( s a m p l e r 2 D   t e x ,   v e c 2   t e x _ c o o r d )   {   \ 
         r e t u r n   g e t # # N A M E ( t e x t u r e ( t e x ,   t e x _ c o o r d ) ) ;   \ 
     } 
 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( G l o s s i n e s s ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( R o u g h n e s s ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( M e t a l l i c ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( A n i s o t r o p y L e v e l ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( A n i s o t r o p y A n g l e ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( O p a c i t y ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( H e i g h t ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( D i s p l a c e m e n t ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S p e c u l a r L e v e l ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( B a s e C o l o r ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( D i f f u s e ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S p e c u l a r C o l o r ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S c a t t e r i n g ,   f l o a t ) 
 
 # u n d e f   D E C L A R E _ D E P R E C A T E D _ H E L P E R 
 
 / /   N o t   t r i v i a l   w r a p p e r 
 f l o a t   g e t A O ( v e c 2   t e x _ c o o r d ,   b o o l   i s _ p r e m u l t ) 
 { 
     r e t u r n   g e t A O ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   i s _ p r e m u l t ) ; 
 } 
 
 f l o a t   g e t A O ( v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   g e t A O ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   8   7 
 
 / / -   T h e   s c a l a r   S S S   c o e f f i c i e n t   t e x t u r e 
 / / :   p a r a m   a u t o   c h a n n e l _ s c a t t e r i n g 
 u n i f o r m   S a m p l e r S p a r s e   s s s _ t e x ; 
 
 / / :   p a r a m   a u t o   s c e n e _ o r i g i n a l _ r a d i u s 
 u n i f o r m   f l o a t   s s s S c e n e S c a l e ; 
 
 / / :   p a r a m   c u s t o m   { 
 / / :       " l a b e l " :   " E n a b l e " , 
 / / :       " d e f a u l t " :   t r u e , 
 / / :       " g r o u p " :   " S u b s u r f a c e   S c a t t e r i n g   P a r a m e t e r s " , 
 / / :       " d e s c r i p t i o n " :   " < h t m l > < h e a d / > < b o d y > < p > E n a b l e   t h e   S u b s u r f a c e   S c a t t e r i n g .   I t   n e e d s   t o   b e   a c t i v a t e d   i n   t h e   D i s p l a y   S e t t i n g s   a n d   a   S c a t t e r i n g   c h a n n e l   n e e d s   t o   b e   p r e s e n t   f o r   t h e s e   p a r a m e t e r s   t o   h a v e   a n   e f f e c t . < / p > < / b o d y > < / h t m l > " 
 / / :   } 
 u n i f o r m   b o o l   s s s E n a b l e d ; 
 
 / / -   S e l e c t   w h e t h e r   t h e   l i g h t   p e n e t r a t e s   s t r a i g h t   t h r o u g h   t h e   m a t e r i a l   ( t r a n s l u c e n t ) 
 / / -   o r   i s   d i f f u s e d   b e f o r e   s t a r t i n g   t o   s c a t t e r   ( s k i n ) . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 , 
 / / :       " l a b e l " :   " S c a t t e r i n g   T y p e " , 
 / / :       " w i d g e t " :   " c o m b o b o x " , 
 / / :       " v a l u e s " :   { 
 / / :           " T r a n s l u c e n t " :   0 , 
 / / :           " S k i n " :   1 
 / / :       } , 
 / / :       " g r o u p " :   " S u b s u r f a c e   S c a t t e r i n g   P a r a m e t e r s " , 
 / / :       " d e s c r i p t i o n " :   " < h t m l > < h e a d / > < b o d y > < p > S k i n   o r   T r a n s l u c e n t / G e n e r i c .   I t   n e e d s   t o   b e   a c t i v a t e d   i n   t h e   D i s p l a y   S e t t i n g s   a n d   a   S c a t t e r i n g   c h a n n e l   n e e d s   t o   b e   p r e s e n t   f o r   t h e s e   p a r a m e t e r s   t o   h a v e   a n   e f f e c t . < / p > < / b o d y > < / h t m l > " 
 / / :   } 
 u n i f o r m   i n t   s s s T y p e ; 
 
 / / -   G l o b a l   s c a l e   t o   t h e   s u b s u r f a c e   s c a t t e r i n g   e f f e c t 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 5 , 
 / / :       " l a b e l " :   " S c a l e " , 
 / / :       " m i n " :   0 . 0 1 , 
 / / :       " m a x " :   1 . 0 , 
 / / :       " g r o u p " :   " S u b s u r f a c e   S c a t t e r i n g   P a r a m e t e r s " , 
 / / :       " d e s c r i p t i o n " :   " < h t m l > < h e a d / > < b o d y > < p > C o n t r o l s   t h e   r a d i u s / d e p t h   o f   t h e   l i g h t   a b s o r p t i o n   i n   t h e   m a t e r i a l .   I t   n e e d s   t o   b e   a c t i v a t e d   i n   t h e   D i s p l a y   S e t t i n g s   a n d   a   S c a t t e r i n g   c h a n n e l   n e e d s   t o   b e   p r e s e n t   f o r   t h e s e   p a r a m e t e r s   t o   h a v e   a n   e f f e c t . < / p > < / b o d y > < / h t m l > " 
 / / :   } 
 u n i f o r m   f l o a t   s s s S c a l e ; 
 
 / / -   W a v e l e n g t h   d e p e n d e n c y   o f   t h e   S S S   o f   t h e   m a t e r i a l 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   [ 0 . 7 0 1 ,   0 . 3 0 1 ,   0 . 3 0 5 ] , 
 / / :       " l a b e l " :   " C o l o r " , 
 / / :       " w i d g e t " :   " c o l o r " , 
 / / :       " g r o u p " :   " S u b s u r f a c e   S c a t t e r i n g   P a r a m e t e r s " , 
 / / :       " d e s c r i p t i o n " :   " < h t m l > < h e a d / > < b o d y > < p > T h e   c o l o r   o f   l i g h t   w h e n   a b s o r b e d   b y   t h e   m a t e r i a l .   I t   n e e d s   t o   b e   a c t i v a t e d   i n   t h e   D i s p l a y   S e t t i n g s   a n d   a   S c a t t e r i n g   c h a n n e l   n e e d s   t o   b e   p r e s e n t   f o r   t h e s e   p a r a m e t e r s   t o   h a v e   a n   e f f e c t . < / p > < / b o d y > < / h t m l > " 
 / / :   } 
 u n i f o r m   v e c 3   s s s C o l o r ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 v e c 3   a l g _ c o n v e r t S S S C o e f f i c i e n t s ( v e c 3   a l b e d o ,   v e c 3   c o e f f s )   { 
     v e c 3   s   =   v e c 3 ( 1 . 0 ) ; 
     i f   ( s s s T y p e   = =   0 u )   { 
         / /   T r a n s l u c e n t ,   p o l i s h e d   m a r b l e ,   j a d e ,   . . .   ( s p e c u l a r   t r a n s m i s s i o n ) 
         s   =   a b s ( a l b e d o   -   0 . 8 ) ; 
         s   =   7 . 0   *   s   *   s   *   s   -   a l b e d o   +   1 . 8 5 ; 
     }   e l s e   i f   ( s s s T y p e   = =   1 u )   { 
         / /   S k i n ,   f r u i t s ,   r o u g h   s u r f a c e s ,   . . .   ( d i f f u s e   t r a n s m i s s i o n ) 
         s   =   ( 3 . 5   *   a l b e d o   -   3 . 8 )   *   a l b e d o   +   2 . 5 4 ; 
     } 
 
     r e t u r n   c o e f f s   /   s ; 
 } 
 / / -   [ D O C - O N ] 
 
 / / -   R e t u r n   t h e   m a t e r i a l   S S S   c o e f f i c i e n t s 
 v e c 4   g e t S S S C o e f f i c i e n t s ( f l o a t   s c a t t e r i n g )   { 
     i f   ( s s s E n a b l e d )   { 
         v e c 3   s s s   =   s s s S c a l e   /   s s s S c e n e S c a l e   *   s c a t t e r i n g   *   s s s C o l o r ; 
         r e t u r n   v e c 4 ( s s s ,   s s s   = =   v e c 3 ( 0 . 0 )   ?   0 . 0   :   1 . 0 ) ; 
     } 
     r e t u r n   v e c 4 ( 0 . 0 ) ; 
 } 
 v e c 4   g e t S S S C o e f f i c i e n t s ( S p a r s e C o o r d   c o o r d )   { 
     i f   ( s s s E n a b l e d )   { 
         r e t u r n   g e t S S S C o e f f i c i e n t s ( g e t S c a t t e r i n g ( s s s _ t e x ,   c o o r d ) ) ; 
     } 
     r e t u r n   v e c 4 ( 0 . 0 ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 4   g e t S S S C o e f f i c i e n t s ( v e c 2   t e x _ c o o r d )   { 
     i f   ( s s s E n a b l e d )   { 
         r e t u r n   g e t S S S C o e f f i c i e n t s ( g e t S c a t t e r i n g ( s s s _ t e x . t e x ,   t e x _ c o o r d ) ) ; 
     } 
     r e t u r n   v e c 4 ( 0 . 0 ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   5   6 
 # l i n e   0   1 0 
 / / -   l i b - p b r . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l _ d i s t r i b ` 
 / / -   ` f r e s n e l ` 
 / / -   ` G 1 ` 
 / / -   ` v i s i b i l i t y ` 
 / / -   ` h o r i z o n F a d i n g ` 
 / / -   ` p b r C o m p u t e D i f f u s e ` 
 / / -   ` p b r C o m p u t e S p e c u l a r ` 
 / / -   ` p b r C o m p u t e B R D F ` 
 / / - 
 / / - 
 / / -   N u m b e r   o f   m i p l e v e l s   i n   t h e   e n v m a p . 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ m a x _ l o d 
 u n i f o r m   f l o a t   m a x L o d ; 
 
 / / -   A n   i n t   r e p r e s e n t i n g   t h e   n u m b e r   o f   s a m p l e s   m a d e   f o r   s p e c u l a r   c o n t r i b u t i o n 
 / / -   c o m p u t a t i o n .   T h e   m o r e   t h e   h i g h e r   q u a l i t y   a n d   t h e   p e r f o r m a n c e   i m p a c t . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 6 , 
 / / :       " l a b e l " :   " Q u a l i t y " , 
 / / :       " w i d g e t " :   " c o m b o b o x " , 
 / / :       " v a l u e s " :   { 
 / / :           " V e r y   l o w   ( 4   s p p ) " :   4 , 
 / / :           " L o w   ( 1 6   s p p ) " :   1 6 , 
 / / :           " M e d i u m   ( 3 2   s p p ) " :   3 2 , 
 / / :           " H i g h   ( 6 4   s p p ) " :   6 4 , 
 / / :           " V e r y   h i g h   ( 1 2 8   s p p ) " :   1 2 8 , 
 / / :           " U l t r a   ( 2 5 6   s p p ) " :   2 5 6 
 / / :       } , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   i n t   n b S a m p l e s ; 
 
 / / -   V a l u e   u s e d   t o   c o n t r o l   s p e c u l a r   r e f l e c t i o n   l e a k i n g   t h r o u g h   t h e   s u r f a c e . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 3 , 
 / / :       " l a b e l " :   " H o r i z o n   F a d i n g " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   2 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   h o r i z o n F a d e ; 
 
 / / -   I m p o r t   f r o m   l i b r a r y ,   o t h e r   p a r a m e t e r s 
 # l i n e   0   1 1 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   9   1 1 
 
 / / -   E n g i n e   p r o v i d e d   p a r a m e t e r s 
 / / :   p a r a m   a u t o   t e x t u r e _ e n v i r o n m e n t 
 u n i f o r m   s a m p l e r 2 D   e n v i r o n m e n t _ t e x t u r e ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ r o t a t i o n 
 u n i f o r m   f l o a t   e n v i r o n m e n t _ r o t a t i o n ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ e x p o s u r e 
 u n i f o r m   f l o a t   e n v i r o n m e n t _ e x p o s u r e ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ r e d 
 u n i f o r m   m a t 4   i r r a d _ m a t _ r e d ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ g r e e n 
 u n i f o r m   m a t 4   i r r a d _ m a t _ g r e e n ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ b l u e 
 u n i f o r m   m a t 4   i r r a d _ m a t _ b l u e ; 
 
 
 / / -   H e l p e r   t h a t   a l l o w s   o n e   t o   s a m p l e   e n v i r o n m e n t .   R o t a t i o n   i s   t a k e n   i n t o 
 / / -   a c c o u n t .   T h e   e n v i r o n m e n t   m a p   i s   a   p a n o r a m i c   e n v   m a p   b e h i n d   t h e   s c e n e , 
 / / -   t h a t ' s   w h y   t h e r e   i s   e x t r a   c o m p u t a t i o n   f r o m   d i r   v e c t o r . 
 v e c 3   e n v S a m p l e L O D ( v e c 3   d i r ,   f l o a t   l o d ) 
 { 
     / /   W O R K A R O U N D :   I n t e l   G L S L   c o m p i l e r   f o r   H D 5 0 0 0   i s   b u g g e d   o n   O S X : 
     / /   h t t p s : / / b u g s . c h r o m i u m . o r g / p / c h r o m i u m / i s s u e s / d e t a i l ? i d = 3 0 8 3 6 6 
     / /   I t   i s   n e c e s s a r y   t o   r e p l a c e   a t a n ( y ,   - x )   b y   a t a n ( y ,   - 1 . 0   *   x )   t o   f o r c e 
     / /   t h e   s e c o n d   p a r a m e t e r   t o   b e   i n t e r p r e t e d   a s   a   f l o a t 
     v e c 2   p o s   =   M _ I N V _ P I   *   v e c 2 ( a t a n ( - d i r . z ,   - 1 . 0   *   d i r . x ) ,   2 . 0   *   a s i n ( d i r . y ) ) ; 
     p o s   =   0 . 5   *   p o s   +   v e c 2 ( 0 . 5 ) ; 
     p o s . x   + =   e n v i r o n m e n t _ r o t a t i o n ; 
     r e t u r n   t e x t u r e L o d ( e n v i r o n m e n t _ t e x t u r e ,   p o s ,   l o d ) . r g b   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 
 / / -   R e t u r n   t h e   i r r a d i a n c e   f o r   a   g i v e n   d i r e c t i o n .   T h e   c o m p u t a t i o n   i s   b a s e d   o n 
 / / -   e n v i r o n m e n t ' s   s p h e r i c a l   h a r m o n i c s   p r o j e c t i o n . 
 v e c 3   e n v I r r a d i a n c e ( v e c 3   d i r ) 
 { 
     f l o a t   r o t   =   e n v i r o n m e n t _ r o t a t i o n   *   M _ 2 P I ; 
     f l o a t   c r o t   =   c o s ( r o t ) ; 
     f l o a t   s r o t   =   s i n ( r o t ) ; 
     v e c 4   s h D i r   =   v e c 4 ( d i r . x z y ,   1 . 0 ) ; 
     s h D i r   =   v e c 4 ( 
         s h D i r . x   *   c r o t   -   s h D i r . y   *   s r o t , 
         s h D i r . x   *   s r o t   +   s h D i r . y   *   c r o t , 
         s h D i r . z , 
         1 . 0 ) ; 
     r e t u r n   m a x ( v e c 3 ( 0 . 0 ) ,   v e c 3 ( 
             d o t ( s h D i r ,   i r r a d _ m a t _ r e d   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ g r e e n   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ b l u e   *   s h D i r ) 
         ) )   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 # l i n e   4 8   1 0 
 # l i n e   0   1 2 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 2 
 
 / / -   T h e   e m i s s i v e   c h a n n e l   t e x t u r e . 
 / / :   p a r a m   a u t o   c h a n n e l _ e m i s s i v e 
 u n i f o r m   S a m p l e r S p a r s e   e m i s s i v e _ t e x ; 
 
 / / -   A   v a l u e   u s e d   t o   t w e a k   t h e   e m i s s i v e   i n t e n s i t y . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 0 , 
 / / :       " l a b e l " :   " E m i s s i v e   I n t e n s i t y " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 0 0 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   e m i s s i v e _ i n t e n s i t y ; 
 
 / / -   C o m p u t e   t h e   e m i s s i v e   r a d i a n c e   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e E m i s s i v e ( S a m p l e r S p a r s e   e m i s s i v e ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   e m i s s i v e _ i n t e n s i t y   *   t e x t u r e S p a r s e ( e m i s s i v e ,   c o o r d ) . r g b ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 3   p b r C o m p u t e E m i s s i v e ( s a m p l e r 2 D   e m i s s i v e _ t e x ,   v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   e m i s s i v e _ i n t e n s i t y   *   t e x t u r e ( e m i s s i v e _ t e x ,   t e x _ c o o r d ) . r g b ; 
 } 
 v e c 3   p b r C o m p u t e E m i s s i v e ( S a m p l e r S p a r s e   e m i s s i v e _ t e x ,   v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   p b r C o m p u t e E m i s s i v e ( e m i s s i v e _ t e x . t e x ,   t e x _ c o o r d ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   4 9   1 0 
 # l i n e   0   1 3 
 / / -   l i b - r a n d o m . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t B l u e N o i s e T h r e s h o l d ` 
 / / -   ` g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ` 
 / / -   ` f i b o n a c c i 1 D ` 
 / / -   ` f i b o n a c c i 2 D ` 
 / / -   ` f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   1 2   1 3 
 
 / / -   A   2 D   b l u e   n o i s e   t e x t u r e   c o n t a i n i n g   s c a l a r   v a l u e s 
 / / :   p a r a m   a u t o   t e x t u r e _ b l u e _ n o i s e 
 u n i f o r m   s a m p l e r 2 D   t e x t u r e _ b l u e _ n o i s e ; 
 
 / / -   B l u e   n o i s e   t e x t u r e   r e s o l u t i o n 
 c o n s t   i v e c 2   t e x t u r e _ b l u e _ n o i s e _ s i z e   =   i v e c 2 ( 2 5 6 ) ; 
 
 / / -   C u r r e n t   f r a m e   r a n d o m   s e e d 
 / / :   p a r a m   a u t o   r a n d o m _ s e e d 
 u n i f o r m   i n t   a l g _ r a n d o m _ s e e d ; 
 
 / / -   G e t   a n   u n i f o r m   r a n d o m   v a l u e   b a s e d   o n   p i x e l   c o o r d i n a t e s . 
 f l o a t   g e t B l u e N o i s e T h r e s h o l d ( ) 
 { 
     r e t u r n   t e x t u r e ( t e x t u r e _ b l u e _ n o i s e ,   g l _ F r a g C o o r d . x y   /   v e c 2 ( t e x t u r e _ b l u e _ n o i s e _ s i z e ) ) . x   +   0 . 5   /   6 5 5 3 6 . 0 ; 
 } 
 
 / / -   G e t   a n   u n i f o r m   r a n d o m   v a l u e   b a s e d   o n   p i x e l   c o o r d i n a t e s   a n d   f r a m e   i d . 
 f l o a t   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( ) 
 { 
     r e t u r n   f r a c t ( g e t B l u e N o i s e T h r e s h o l d ( )   +   M _ G O L D E N _ R A T I O   *   a l g _ r a n d o m _ s e e d ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   n u m b e r   f r o m   f i b o n a c c i   s e q u e n c e . 
 f l o a t   f i b o n a c c i 1 D ( i n t   i ) 
 { 
     r e t u r n   f r a c t ( ( f l o a t ( i )   +   1 . 0 )   *   M _ G O L D E N _ R A T I O ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   c o u p l e   f r o m   t h e   f i b o n a c c i   s e q u e n c e . 
 / / -   n b S a m p l e   i s   r e q u i r e d   t o   g e t   a n   u n i f o r m   d i s t r i b u t i o n . 
 v e c 2   f i b o n a c c i 2 D ( i n t   i ,   i n t   n b S a m p l e s ) 
 { 
     r e t u r n   v e c 2 ( 
         ( f l o a t ( i ) + 0 . 5 )   /   f l o a t ( n b S a m p l e s ) , 
         f i b o n a c c i 1 D ( i ) 
     ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   c o u p l e   f r o m   t h e   f i b o n a c c i   s e q u e n c e . 
 / / -   n b S a m p l e   i s   r e q u i r e d   t o   g e t   a n   u n i f o r m   d i s t r i b u t i o n . 
 / / -   T h i s   v e r s i o n   h a s   a   p e r   f r a m e   a n d   p e r   p i x e l   p s e u d o - r a n d o m   r o t a t i o n   a p p l i e d . 
 v e c 2   f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ( i n t   i ,   i n t   n b S a m p l e s ) 
 { 
     v e c 2   s   =   f i b o n a c c i 2 D ( i ,   n b S a m p l e s ) ; 
     s . x   + =   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( ) ; 
     r e t u r n   s ; 
 } 
 # l i n e   5 0   1 0 
 # l i n e   0   1 4 
 / / -   l i b - v e c t o r s . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` c o m p u t e L o c a l F r a m e ` 
 / / -   ` g e t E y e V e c ` 
 / / -   ` t a n g e n t S p a c e T o W o r l d S p a c e ` 
 / / -   ` w o r l d S p a c e T o T a n g e n t S p a c e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   1 5 
 / / -   l i b - n o r m a l . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l B l e n d ` 
 / / -   ` n o r m a l B l e n d O r i e n t e d ` 
 / / -   ` n o r m a l F a d e ` 
 / / -   ` n o r m a l U n p a c k ` 
 / / -   ` n o r m a l F r o m B a s e N o r m a l ` 
 / / -   ` n o r m a l F r o m N o r m a l ` 
 / / -   ` n o r m a l F r o m H e i g h t ` 
 / / -   ` g e t T S N o r m a l ` 
 / / -   ` c o m p u t e W S B a s e N o r m a l ` 
 / / -   ` c o m p u t e W S N o r m a l ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   1 7   1 5 
 # l i n e   1 8   1 5 
 
 / / -   A l l   e n g i n e   p a r a m e t e r s   u s e f u l   f o r   n o r m a l - c e n t r i c   o p e r a t i o n s . 
 / / :   p a r a m   a u t o   c h a n n e l _ h e i g h t 
 u n i f o r m   S a m p l e r S p a r s e   h e i g h t _ t e x t u r e ; 
 / / :   p a r a m   a u t o   c h a n n e l _ n o r m a l 
 u n i f o r m   S a m p l e r S p a r s e   n o r m a l _ t e x t u r e ; 
 / / :   p a r a m   a u t o   t e x t u r e _ n o r m a l 
 u n i f o r m   S a m p l e r S p a r s e   b a s e _ n o r m a l _ t e x t u r e ; 
 / / :   p a r a m   a u t o   n o r m a l _ b l e n d i n g _ m o d e 
 u n i f o r m   i n t   n o r m a l _ b l e n d i n g _ m o d e ; 
 / / -   U s e d   t o   i n v e r t   t h e   Y   a x i s   o f   t h e   n o r m a l   m a p 
 / / :   p a r a m   a u t o   n o r m a l _ y _ c o e f f 
 u n i f o r m   f l o a t   b a s e _ n o r m a l _ y _ c o e f f ; 
 
 / / -   E m p i r i c a l l y   d e t e r m i n e d   b y   o u r   a r t i s t s . . . 
 c o n s t   f l o a t   H E I G H T _ F A C T O R   =   4 0 0 . 0 ; 
 
 / / -   P e r f o r m   t h e   b l e n d i n g   b e t w e e n   2   n o r m a l   m a p s 
 / / - 
 / / -   T h i s   i s   b a s e d   o n   W h i t e o u t   b l e n d i n g 
 / / -   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / b l e n d i n g - i n - d e t a i l / 
 v e c 3   n o r m a l B l e n d ( v e c 3   b a s e N o r m a l ,   v e c 3   o v e r N o r m a l ) 
 { 
     r e t u r n   n o r m a l i z e ( v e c 3 ( 
         b a s e N o r m a l . x y   +   o v e r N o r m a l . x y , 
         b a s e N o r m a l . z     *   o v e r N o r m a l . z ) ) ; 
 } 
 
 / / -   P e r f o r m   a   d e t a i l   o r i e n t e d   b l e n d i n g   b e t w e e n   2   n o r m a l   m a p s 
 / / - 
 / / -   T h i s   i s   b a s e d   o n   D e t a i l   O r i e n t e d   b l e n d i n g 
 / / -   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / b l e n d i n g - i n - d e t a i l / 
 v e c 3   n o r m a l B l e n d O r i e n t e d ( v e c 3   b a s e N o r m a l ,   v e c 3   o v e r N o r m a l ) 
 { 
     b a s e N o r m a l . z   + =   1 . 0 ; 
     o v e r N o r m a l . x y   =   - o v e r N o r m a l . x y ; 
     r e t u r n   n o r m a l i z e ( b a s e N o r m a l   *   d o t ( b a s e N o r m a l , o v e r N o r m a l )   - 
         o v e r N o r m a l * b a s e N o r m a l . z ) ; 
 } 
 
 / / -   R e t u r n s   a   n o r m a l   f l a t t e n e d   b y   a n   a t t e n u a t i o n   f a c t o r 
 v e c 3   n o r m a l F a d e ( v e c 3   n o r m a l , f l o a t   a t t e n u a t i o n ) 
 { 
     i f   ( a t t e n u a t i o n < 1 . 0   & &   n o r m a l . z < 1 . 0 ) 
     { 
         f l o a t   p h i   =   a t t e n u a t i o n   *   a c o s ( n o r m a l . z ) ; 
         n o r m a l . x y   * =   1 . 0 / s q r t ( 1 . 0 - n o r m a l . z * n o r m a l . z )   *   s i n ( p h i ) ; 
         n o r m a l . z   =   c o s ( p h i ) ; 
     } 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   U n p a c k   a   n o r m a l   w /   a l p h a   c h a n n e l 
 v e c 3   n o r m a l U n p a c k ( v e c 4   n o r m a l _ a l p h a ,   f l o a t   y _ c o e f f ) 
 { 
     i f   ( n o r m a l _ a l p h a . a   = =   0 . 0   | |   n o r m a l _ a l p h a . x y z   = =   v e c 3 ( 0 . 0 ) )   { 
         r e t u r n   v e c 3 ( 0 . 0 ,   0 . 0 ,   1 . 0 ) ; 
     } 
 
     / /   A t t e n u a t i o n   i n   f u n c t i o n   o f   a l p h a 
     v e c 3   n o r m a l   =   n o r m a l _ a l p h a . x y z / n o r m a l _ a l p h a . a   *   2 . 0   -   v e c 3 ( 1 . 0 ) ; 
     n o r m a l . y   * =   y _ c o e f f ; 
     n o r m a l . z   =   m a x ( 1 e - 3 ,   n o r m a l . z ) ; 
     n o r m a l   =   n o r m a l i z e ( n o r m a l ) ; 
     n o r m a l   =   n o r m a l F a d e ( n o r m a l ,   n o r m a l _ a l p h a . a ) ; 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   U n p a c k   a   n o r m a l   w /   a l p h a   c h a n n e l ,   n o   Y   i n v e r t i o n 
 v e c 3   n o r m a l U n p a c k ( v e c 4   n o r m a l _ a l p h a ) 
 { 
     r e t u r n   n o r m a l U n p a c k ( n o r m a l _ a l p h a ,   1 . 0 ) ; 
 } 
 
 / / -   C o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   d o c u m e n t ' s   h e i g h t   c h a n n e l 
 v e c 3   n o r m a l F r o m H e i g h t ( S p a r s e C o o r d   c o o r d ,   f l o a t   h e i g h t _ f o r c e ) 
 { 
     / /   N o r m a l   c o m p u t a t i o n   u s i n g   h e i g h t   m a p 
 
     / /   D e t e r m i n e   g r a d i e n t   o f f s e t   i n   f u n c t i o n   o f   d e r i v a t i v e s 
     v e c 2   d f d x   =   d F d x ( c o o r d . t e x _ c o o r d ) ; 
     v e c 2   d f d y   =   d F d y ( c o o r d . t e x _ c o o r d ) ; 
     v e c 2   d f d   =   m a x ( d f d x , d f d y ) ; 
     d f d   =   m a x ( d f d , h e i g h t _ t e x t u r e . s i z e . z w ) ; 
 
     f l o a t   l e v e l   =   t e x t u r e S p a r s e Q u e r y L o d ( h e i g h t _ t e x t u r e ,   c o o r d ) ; 
     f l o a t   h _ r     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     0         ) ,   l e v e l ) . r ; 
     f l o a t   h _ l     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     0         ) ,   l e v e l ) . r ; 
     f l o a t   h _ t     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,     d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ b     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,   - d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ r t   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ l t   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ r b   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,   - d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ l b   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,   - d f d . y ) ,   l e v e l ) . r ; 
 
     v e c 2   d h _ d u d v   =   ( 0 . 5   *   h e i g h t _ f o r c e )   /   d f d   *   v e c 2 ( 
         2 . 0 * ( h _ l - h _ r ) + h _ l t - h _ r t + h _ l b - h _ r b , 
         2 . 0 * ( h _ b - h _ t ) + h _ r b - h _ r t + h _ l b - h _ l t ) ; 
 
     r e t u r n   n o r m a l i z e ( v e c 3 ( d h _ d u d v ,   H E I G H T _ F A C T O R ) ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   b a s e   n o r m a l   a n d   a   h e i g h t 
 / / -   v a l u e ,   a n d   a n   o p t i o n a l   d e t a i l   n o r m a l . 
 v e c 3   g e t T S N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   n o r m a l F r o m H e i g h t ) 
 { 
     v e c 3   n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( 
         n o r m a l U n p a c k ( t e x t u r e S p a r s e ( b a s e _ n o r m a l _ t e x t u r e ,   c o o r d ) ,   b a s e _ n o r m a l _ y _ c o e f f ) , 
         n o r m a l F r o m H e i g h t ) ; 
 
     i f   ( n o r m a l _ t e x t u r e . i s _ s e t )   { 
         v e c 3   c h a n n e l N o r m a l   =   n o r m a l U n p a c k ( t e x t u r e S p a r s e ( n o r m a l _ t e x t u r e ,   c o o r d ) ) ; 
         i f   ( n o r m a l _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ R e p l a c e )   { 
             n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( n o r m a l F r o m H e i g h t ,   c h a n n e l N o r m a l ) ; 
         }   e l s e   i f   ( n o r m a l _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ N M _ C o m b i n e )   { 
             n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( n o r m a l ,   c h a n n e l N o r m a l ) ; 
         } 
     } 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   b a s e   n o r m a l   a n d   h e i g h t ,   a n d 
 / / -   a n   o p t i o n a l   d e t a i l   n o r m a l . 
 v e c 3   g e t T S N o r m a l ( S p a r s e C o o r d   c o o r d ) 
 { 
     f l o a t   h e i g h t _ f o r c e   =   1 . 0 ; 
     v e c 3   n o r m a l H   =   n o r m a l F r o m H e i g h t ( c o o r d ,   h e i g h t _ f o r c e ) ; 
     r e t u r n   g e t T S N o r m a l ( c o o r d ,   n o r m a l H ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   w o r l d   s p a c e   n o r m a l   f r o m   t a n g e n t   s p a c e   b a s e   n o r m a l . 
 v e c 3   c o m p u t e W S B a s e N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     v e c 3   n o r m a l _ v e c   =   n o r m a l U n p a c k ( t e x t u r e S p a r s e ( n o r m a l _ t e x t u r e ,   c o o r d ) ,   b a s e _ n o r m a l _ y _ c o e f f ) ; 
     r e t u r n   n o r m a l i z e ( 
         n o r m a l _ v e c . x   *   t a n g e n t   + 
         n o r m a l _ v e c . y   *   b i t a n g e n t   + 
         n o r m a l _ v e c . z   *   n o r m a l 
     ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   w o r l d   s p a c e   n o r m a l   f r o m   t a n g e n t   s p a c e   n o r m a l   g i v e n   b y 
 / / -   g e t T S N o r m a l   h e l p e r s ,   a n d   l o c a l   f r a m e   o f   t h e   m e s h . 
 v e c 3   c o m p u t e W S N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     v e c 3   n o r m a l _ v e c   =   g e t T S N o r m a l ( c o o r d ) ; 
     r e t u r n   n o r m a l i z e ( 
         n o r m a l _ v e c . x   *   t a n g e n t   + 
         n o r m a l _ v e c . y   *   b i t a n g e n t   + 
         n o r m a l _ v e c . z   *   n o r m a l 
     ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 3   n o r m a l F r o m H e i g h t ( v e c 2   t e x _ c o o r d ,   f l o a t   h e i g h t _ f o r c e ) 
 { 
     r e t u r n   n o r m a l F r o m H e i g h t ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   h e i g h t _ f o r c e ) ; 
 } 
 
 v e c 3   g e t T S N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   n o r m a l F r o m H e i g h t ) 
 { 
     r e t u r n   g e t T S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   n o r m a l F r o m H e i g h t ) ; 
 } 
 
 v e c 3   g e t T S N o r m a l ( v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   g e t T S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ) ; 
 } 
 
 v e c 3   c o m p u t e W S B a s e N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     r e t u r n   c o m p u t e W S B a s e N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ) ; 
 } 
 
 v e c 3   c o m p u t e W S N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     r e t u r n   c o m p u t e W S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   1 1   1 4 
 
 / / -   W h i c h   v i e w   i s   s h a d e d . 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s 2 D V i e w ; 
 
 / / -   W h a t   k i n d   o f   p r o j e c t i o n   i s   u s e d . 
 / / :   p a r a m   a u t o   i s _ p e r s p e c t i v e _ p r o j e c t i o n 
 u n i f o r m   b o o l   i s _ p e r s p e c t i v e ; 
 
 / / -   E y e   p o s i t i o n   i n   w o r l d   s p a c e . 
 / / :   p a r a m   a u t o   w o r l d _ e y e _ p o s i t i o n 
 u n i f o r m   v e c 3   c a m e r a _ p o s ; 
 
 / / -   C a m e r a   o r i e n t a t i o n   i n   w o r l d   s p a c e . 
 / / :   p a r a m   a u t o   w o r l d _ c a m e r a _ d i r e c t i o n 
 u n i f o r m   v e c 3   c a m e r a _ d i r ; 
 
 / / :   p a r a m   a u t o   f a c i n g 
 u n i f o r m   i n t   f a c i n g ; 
 
 b o o l   i s B a c k F a c e ( )   { 
     r e t u r n   f a c i n g   = =   - 1   | |   ( f a c i n g   = =   0   & &   ! g l _ F r o n t F a c i n g ) ; 
 } 
 
 / / -   C o m p u t e   t h e   w o r l d   s p a c e   e y e   v e c t o r 
 v e c 3   g e t E y e V e c ( v e c 3   p o s i t i o n )   { 
     r e t u r n   i s _ p e r s p e c t i v e   ? 
         n o r m a l i z e ( c a m e r a _ p o s   -   p o s i t i o n )   : 
         - c a m e r a _ d i r ; 
 } 
 
 / / -   C o n v e r t   a   v e c t o r   f r o m   t a n g e n t   s p a c e   t o   w o r l d   s p a c e 
 v e c 3   t a n g e n t S p a c e T o W o r l d S p a c e ( v e c 3   v e c T S ,   V 2 F   i n p u t s )   { 
     r e t u r n   n o r m a l i z e ( 
         v e c T S . x   *   i n p u t s . t a n g e n t   + 
         v e c T S . y   *   i n p u t s . b i t a n g e n t   + 
         v e c T S . z   *   i n p u t s . n o r m a l ) ; 
 } 
 
 / / -   C o n v e r t   a   v e c t o r   f r o m   w o r l d   s p a c e   t o   t a n g e n t   s p a c e 
 v e c 3   w o r l d S p a c e T o T a n g e n t S p a c e ( v e c 3   v e c W S ,   V 2 F   i n p u t s )   { 
     / /   A s s u m e   t h e   t r a n s f o r m a t i o n   i s   o r t h o g o n a l 
     r e t u r n   n o r m a l i z e ( v e c W S   *   m a t 3 ( i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ) ; 
 } 
 
 / / -   L o c a l   f r a m e   o f   v e r t e x   i n   w o r l d   s p a c e 
 s t r u c t   L o c a l V e c t o r s   { 
     v e c 3   v e r t e x N o r m a l ; 
     v e c 3   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ,   e y e ; 
 } ; 
 
 / / -   C o m p u t e   l o c a l   f r a m e   f r o m   c u s t o m   w o r l d   s p a c e   n o r m a l   a n d   a n i s o t r o p y   a n g l e 
 L o c a l V e c t o r s   c o m p u t e L o c a l F r a m e ( V 2 F   i n p u t s ,   v e c 3   n o r m a l ,   f l o a t   a n i s o A n g l e )   { 
     L o c a l V e c t o r s   v e c t o r s ; 
     v e c t o r s . v e r t e x N o r m a l   =   i n p u t s . n o r m a l ; 
     v e c t o r s . n o r m a l   =   n o r m a l ; 
 
     / /   F l i p   t h e   n o r m a l s   f o r   b a c k   f a c i n g   p o l y g o n s 
     i f   ( i s B a c k F a c e ( ) )   { 
         v e c t o r s . v e r t e x N o r m a l   =   - v e c t o r s . v e r t e x N o r m a l ; 
         v e c t o r s . n o r m a l   =   - v e c t o r s . n o r m a l ; 
     } 
 
     v e c t o r s . e y e   =   i s 2 D V i e w   ? 
         v e c t o r s . n o r m a l   :   / /   I n   2 D   v i e w ,   p u t   v i e w   v e c t o r   a l o n g   t h e   n o r m a l 
         g e t E y e V e c ( i n p u t s . p o s i t i o n ) ; 
 
     / /   T r i c k   t o   r e m o v e   b l a c k   a r t i f a c t s 
     / /   B a c k f a c e   ?   p l a c e   t h e   e y e   a t   t h e   o p p o s i t e   -   r e m o v e s   b l a c k   z o n e s 
     i f   ( d o t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l )   <   0 . 0 )   { 
         v e c t o r s . e y e   =   r e f l e c t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l ) ; 
     } 
 
     / /   C r e a t e   a   l o c a l   f r a m e   f o r   B R D F   w o r k 
     v e c 3   t a n g e n t   =   n o r m a l i z e ( 
         i n p u t s . t a n g e n t 
         -   v e c t o r s . n o r m a l   *   d o t ( i n p u t s . t a n g e n t ,   v e c t o r s . n o r m a l ) 
     ) ; 
     v e c 3   b i t a n g e n t   =   n o r m a l i z e ( 
         i n p u t s . b i t a n g e n t 
         -   v e c t o r s . n o r m a l   *   d o t ( i n p u t s . b i t a n g e n t ,   v e c t o r s . n o r m a l ) 
         -   t a n g e n t   *   d o t ( i n p u t s . b i t a n g e n t ,   t a n g e n t ) 
     ) ; 
 
     f l o a t   c o s A n g l e   =   c o s ( a n i s o A n g l e ) ; 
     f l o a t   s i n A n g l e   =   s i n ( a n i s o A n g l e ) ; 
     v e c t o r s . t a n g e n t   =   c o s A n g l e   *   t a n g e n t   -   s i n A n g l e   *   b i t a n g e n t ; 
     v e c t o r s . b i t a n g e n t   =   c o s A n g l e   *   b i t a n g e n t   +   s i n A n g l e   *   t a n g e n t ; 
 
     r e t u r n   v e c t o r s ; 
 } 
 
 / / -   C o m p u t e   l o c a l   f r a m e   f r o m   m e s h   a n d   d o c u m e n t   h e i g h t   a n d   n o r m a l s 
 L o c a l V e c t o r s   c o m p u t e L o c a l F r a m e ( V 2 F   i n p u t s )   { 
     / /   G e t   w o r l d   s p a c e   n o r m a l 
     v e c 3   n o r m a l   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ; 
     r e t u r n   c o m p u t e L o c a l F r a m e ( i n p u t s ,   n o r m a l ,   0 . 0 ) ; 
 } 
 # l i n e   5 1   1 0 
 
 
 / / -   B R D F   r e l a t e d   f u n c t i o n s 
 
 c o n s t   f l o a t   E P S I L O N _ C O E F   =   1 e - 4 ; 
 
 f l o a t   n o r m a l _ d i s t r i b ( 
     f l o a t   n d h , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   u s e   G G X   /   T r o w b r i d g e - R e i t z ,   s a m e   a s   D i s n e y   a n d   U n r e a l   4 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     f l o a t   a l p h a   =   R o u g h n e s s   *   R o u g h n e s s ; 
     f l o a t   t m p   =   a l p h a   /   m a x ( 1 e - 8 , ( n d h * n d h * ( a l p h a * a l p h a - 1 . 0 ) + 1 . 0 ) ) ; 
     r e t u r n   t m p   *   t m p   *   M _ I N V _ P I ; 
 } 
 
 v e c 3   f r e s n e l ( 
     f l o a t   v d h , 
     v e c 3   F 0 ) 
 { 
     / /   S c h l i c k   w i t h   S p h e r i c a l   G a u s s i a n   a p p r o x i m a t i o n 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     f l o a t   s p h g   =   e x p 2 ( ( - 5 . 5 5 4 7 3 * v d h   -   6 . 9 8 3 1 6 )   *   v d h ) ; 
     r e t u r n   F 0   +   ( v e c 3 ( 1 . 0 )   -   F 0 )   *   s p h g ; 
 } 
 
 f l o a t   G 1 ( 
     f l o a t   n d w ,   / /   w   i s   e i t h e r   L n   o r   V n 
     f l o a t   k ) 
 { 
     / /   O n e   g e n e r i c   f a c t o r   o f   t h e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   n d w 
     / /   N B   :   W e   s h o u l d   h a v e   k   >   0 
     r e t u r n   1 . 0   /   (   n d w * ( 1 . 0 - k )   +     k   ) ; 
 } 
 
 f l o a t   v i s i b i l i t y ( 
     f l o a t   n d l , 
     f l o a t   n d v , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   S c h l i c k   w i t h   S m i t h - l i k e   c h o i c e   o f   k 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     / /   v i s i b i l i t y   i s   a   C o o k - T o r r a n c e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   ( n . l ) * ( n . v ) 
     f l o a t   k   =   m a x ( R o u g h n e s s   *   R o u g h n e s s   *   0 . 5 ,   1 e - 5 ) ; 
     r e t u r n   G 1 ( n d l , k ) * G 1 ( n d v , k ) ; 
 } 
 
 v e c 3   c o o k _ t o r r a n c e _ c o n t r i b ( 
     f l o a t   v d h , 
     f l o a t   n d h , 
     f l o a t   n d l , 
     f l o a t   n d v , 
     v e c 3   K s , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   T h i s   i s   t h e   c o n t r i b u t i o n   w h e n   u s i n g   i m p o r t a n c e   s a m p l i n g   w i t h   t h e   G G X   b a s e d 
     / /   s a m p l e   d i s t r i b u t i o n .   T h i s   m e a n s   c t _ c o n t r i b   =   c t _ b r d f   /   g g x _ p r o b a b i l i t y 
     r e t u r n   f r e s n e l ( v d h , K s )   *   ( v i s i b i l i t y ( n d l , n d v , R o u g h n e s s )   *   v d h   *   n d l   /   n d h   ) ; 
 } 
 
 v e c 3   i m p o r t a n c e S a m p l e G G X ( v e c 2   X i ,   v e c 3   T ,   v e c 3   B ,   v e c 3   N ,   f l o a t   r o u g h n e s s ) 
 { 
     f l o a t   a   =   r o u g h n e s s * r o u g h n e s s ; 
     f l o a t   c o s T   =   s q r t ( ( 1 . 0 - X i . y ) / ( 1 . 0 + ( a * a - 1 . 0 ) * X i . y ) ) ; 
     f l o a t   s i n T   =   s q r t ( 1 . 0 - c o s T * c o s T ) ; 
     f l o a t   p h i   =   2 . 0 * M _ P I * X i . x ; 
     r e t u r n 
         T   *   ( s i n T * c o s ( p h i ) )   + 
         B   *   ( s i n T * s i n ( p h i ) )   + 
         N   *     c o s T ; 
 } 
 
 f l o a t   p r o b a b i l i t y G G X ( f l o a t   n d h ,   f l o a t   v d h ,   f l o a t   R o u g h n e s s ) 
 { 
     r e t u r n   n o r m a l _ d i s t r i b ( n d h ,   R o u g h n e s s )   *   n d h   /   ( 4 . 0 * v d h ) ; 
 } 
 
 f l o a t   d i s t o r t i o n ( v e c 3   W n ) 
 { 
     / /   C o m p u t e s   t h e   i n v e r s e   o f   t h e   s o l i d   a n g l e   o f   t h e   ( d i f f e r e n t i a l )   p i x e l   i n 
     / /   t h e   c u b e   m a p   p o i n t e d   a t   b y   W n 
     f l o a t   s i n T   =   s q r t ( 1 . 0 - W n . y * W n . y ) ; 
     r e t u r n   s i n T ; 
 } 
 
 f l o a t   c o m p u t e L O D ( v e c 3   L n ,   f l o a t   p ) 
 { 
     r e t u r n   m a x ( 0 . 0 ,   ( m a x L o d - 1 . 5 )   -   0 . 5   *   l o g 2 ( f l o a t ( n b S a m p l e s )   *   p   *   d i s t o r t i o n ( L n ) ) ) ; 
 } 
 
 / / -   H o r i z o n   f a d i n g   t r i c k   f r o m   [ h t t p s : / / m a r m o s e t c o . t u m b l r . c o m / p o s t / 8 1 2 4 5 9 8 1 0 8 7 ] ( h t t p s : / / m a r m o s e t c o . t u m b l r . c o m / p o s t / 8 1 2 4 5 9 8 1 0 8 7 ) 
 f l o a t   h o r i z o n F a d i n g ( f l o a t   n d l ,   f l o a t   h o r i z o n F a d e ) 
 { 
     f l o a t   h o r i z   =   c l a m p ( 1 . 0   +   h o r i z o n F a d e   *   n d l ,   0 . 0 ,   1 . 0 ) ; 
     r e t u r n   h o r i z   *   h o r i z ; 
 } 
 
 / / -   C o m p u t e   t h e   l a m b e r t i a n   d i f f u s e   r a d i a n c e   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e D i f f u s e ( v e c 3   n o r m a l ,   v e c 3   d i f f C o l o r ) 
 { 
     r e t u r n   e n v I r r a d i a n c e ( n o r m a l )   *   d i f f C o l o r ; 
 } 
 
 / / -   C o m p u t e   t h e   m i c r o f a c e t s   s p e c u l a r   r e f l e c t i o n   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e S p e c u l a r ( L o c a l V e c t o r s   v e c t o r s ,   v e c 3   s p e c C o l o r ,   f l o a t   r o u g h n e s s ) 
 { 
     v e c 3   r a d i a n c e   =   v e c 3 ( 0 . 0 ) ; 
     f l o a t   n d v   =   d o t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l ) ; 
 
     f o r ( i n t   i = 0 ;   i < n b S a m p l e s ;   + + i ) 
     { 
         v e c 2   X i   =   f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ( i ,   n b S a m p l e s ) ; 
         v e c 3   H n   =   i m p o r t a n c e S a m p l e G G X ( 
             X i ,   v e c t o r s . t a n g e n t ,   v e c t o r s . b i t a n g e n t ,   v e c t o r s . n o r m a l ,   r o u g h n e s s ) ; 
         v e c 3   L n   =   - r e f l e c t ( v e c t o r s . e y e , H n ) ; 
 
         f l o a t   f a d e   =   h o r i z o n F a d i n g ( d o t ( v e c t o r s . v e r t e x N o r m a l ,   L n ) ,   h o r i z o n F a d e ) ; 
 
         f l o a t   n d l   =   d o t ( v e c t o r s . n o r m a l ,   L n ) ; 
         n d l   =   m a x (   1 e - 8 ,   n d l   ) ; 
         f l o a t   v d h   =   m a x ( 1 e - 8 ,   d o t ( v e c t o r s . e y e ,   H n ) ) ; 
         f l o a t   n d h   =   m a x ( 1 e - 8 ,   d o t ( v e c t o r s . n o r m a l ,   H n ) ) ; 
         f l o a t   l o d S   =   r o u g h n e s s   <   0 . 0 1   ?   0 . 0   :   c o m p u t e L O D ( L n ,   p r o b a b i l i t y G G X ( n d h ,   v d h ,   r o u g h n e s s ) ) ; 
         r a d i a n c e   + =   f a d e   *   e n v S a m p l e L O D ( L n ,   l o d S )   * 
             c o o k _ t o r r a n c e _ c o n t r i b ( v d h ,   n d h ,   n d l ,   n d v ,   s p e c C o l o r ,   r o u g h n e s s ) ; 
     } 
     / /   R e m o v e   o c c l u s i o n s   o n   s h i n y   r e f l e c t i o n s 
     r a d i a n c e   / =   f l o a t ( n b S a m p l e s ) ; 
 
     r e t u r n   r a d i a n c e ; 
 } 
 # l i n e   6   6 
 # l i n e   7   6 
 # l i n e   8   6 
 # l i n e   9   6 
 
 / /   L i n k   C o a t e d   M e t a l / R o u g h n e s s   M D L   f o r   I r a y 
 / / :   m e t a d a t a   { 
 / / :       " m d l " : " m d l : : a l g : : m a t e r i a l s : : s k i n _ m e t a l l i c _ r o u g h n e s s _ c o a t e d : : s k i n _ m e t a l l i c _ r o u g h n e s s _ c o a t e d " 
 / / :   } 
 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   b a s e c o l o r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ r o u g h n e s s 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ s p e c u l a r l e v e l 
 u n i f o r m   S a m p l e r S p a r s e   s p e c u l a r l e v e l _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ u s e r 0 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s c o a t _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ u s e r 1 
 u n i f o r m   S a m p l e r S p a r s e   m a s k c o a t _ t e x ; 
 
 / / :   p a r a m   c u s t o m   {   " g r o u p " :   " C o a t   L a y e r " ,   " d e f a u l t " :   0 . 0 1 ,   " l a b e l " :   " R o u g h n e s s " ,   " m i n " :   0 . 0 ,   " m a x " :   1 . 0   } 
 u n i f o r m   f l o a t   c o a t i n g _ r o u g h ; 
 / / :   p a r a m   c u s t o m   {   " g r o u p " :   " C o a t   L a y e r " ,   " d e f a u l t " :   " f a l s e " ,   " l a b e l " :   " O v e r r i d e   w i t h   R o u g h n e s s C o a t   ( u s e r 0 )   c h a n n e l "   } 
 u n i f o r m   b o o l   c o a t i n g _ r o u g h _ u s e _ t e x ; 
 / / :   p a r a m   c u s t o m   {   " g r o u p " :   " C o a t   L a y e r " ,   " d e f a u l t " :   1 . 0 ,   " l a b e l " :   " O p a c i t y " ,   " m i n " :   0 . 0 ,   " m a x " :   1 . 0   } 
 u n i f o r m   f l o a t   c o a t i n g _ o p a c i t y ; 
 / / :   p a r a m   c u s t o m   {   " g r o u p " :   " C o a t   L a y e r " ,   " d e f a u l t " :   " f a l s e " ,   " l a b e l " :   " M u l t i p l y   w i t h   M a s k C o a t   ( u s e r 1 )   c h a n n e l "   } 
 u n i f o r m   b o o l   c o a t i n g _ o p a c i t y _ u s e _ t e x ; 
 / / :   p a r a m   c u s t o m   { 
 / / :       " g r o u p " :   " C o a t   L a y e r " , 
 / / :       " l a b e l " :   " S u r f a c e   b e h a v i o r " , 
 / / :       " w i d g e t " :   " c o m b o b o x " , 
 / / :       " d e f a u l t " :   1 , 
 / / :       " v a l u e s " :   { 
 / / :           " S m o o t h   s u r f a c e " :   0 , 
 / / :           " K e e p   d e t a i l s " :   1 
 / / :       } 
 / / :   } 
 u n i f o r m   i n t   c o a t i n g _ s u r f a c e _ b e h a v i o r ; 
 / / :   p a r a m   c u s t o m   {   " g r o u p " :   " C o a t   L a y e r " ,   " d e f a u l t " :   1 . 5 ,   " l a b e l " :   " I O R " ,   " m i n " :   1 . 0 ,   " m a x " :   1 . 8   } 
 u n i f o r m   f l o a t   c o a t i n g _ i o r ; 
 
 c o n s t   f l o a t   D E F A U L T _ C O A T _ O P A C I T Y       =   1 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ C O A T _ R O U G H N E S S   =   0 . 0 1 ; 
 
 f l o a t   i o r T o S p e c u l a r L e v e l ( f l o a t   i o r ) 
 { 
 	 f l o a t   s q r t R 0   =   ( i o r - 1 )   /   ( i o r + 1 ) ; 
 	 r e t u r n   s q r t R 0 * s q r t R 0 ; 
 } 
 
 f l o a t   t e x t u r e L o o k u p ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   f l o a t   d e f a u l t V a l u e ) 
 { 
 	 v e c 2   s a m p l e d V a l u e   =   t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) . r g ; 
 	 r e t u r n   s a m p l e d V a l u e . r   +   d e f a u l t V a l u e   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t C o a t R o u g h n e s s ( S p a r s e C o o r d   c o o r d ) 
 { 
 	 r e t u r n   c o a t i n g _ r o u g h _ u s e _ t e x ? 
 	 	 t e x t u r e L o o k u p ( r o u g h n e s s c o a t _ t e x ,   c o o r d ,   D E F A U L T _ C O A T _ R O U G H N E S S )   : 
 	 	 c o a t i n g _ r o u g h ; 
 } 
 
 f l o a t   g e t C o a t O p a c i t y ( S p a r s e C o o r d   c o o r d ) 
 { 
 	 r e t u r n   c o a t i n g _ o p a c i t y _ u s e _ t e x ? 
 	 	 t e x t u r e L o o k u p ( m a s k c o a t _ t e x ,   c o o r d ,   D E F A U L T _ C O A T _ O P A C I T Y )   *   c o a t i n g _ o p a c i t y   : 
 	 	 c o a t i n g _ o p a c i t y ; 
 } 
 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
 	 f l o a t   r o u g h n e s s   =   g e t R o u g h n e s s ( r o u g h n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 	 v e c 3   b a s e C o l o r   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 	 f l o a t   m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 	 f l o a t   s p e c u l a r L e v e l   =   g e t S p e c u l a r L e v e l ( s p e c u l a r l e v e l _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 	 v e c 3   d i f f C o l o r   =   g e n e r a t e D i f f u s e C o l o r ( b a s e C o l o r ,   m e t a l l i c ) ; 
 	 v e c 3   s p e c C o l o r   =   g e n e r a t e S p e c u l a r C o l o r ( s p e c u l a r L e v e l ,   b a s e C o l o r ,   m e t a l l i c ) ; 
 	 / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
 	 f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 	 f l o a t   s p e c O c c l u s i o n   =   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( o c c l u s i o n ,   m e t a l l i c ,   r o u g h n e s s ) ; 
 
 	 / /   M a t e r i a l   l a y e r 
 	 L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
 	 / /   F e e d   p a r a m e t e r s   f o r   a   p h y s i c a l l y   b a s e d   B R D F   i n t e g r a t i o n 
 	 v e c 3   e m i s s i v e C o l o r   =   p b r C o m p u t e E m i s s i v e ( e m i s s i v e _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 	 a l b e d o O u t p u t ( d i f f C o l o r ) ; 
 	 v e c 3   d i f f u s e S h a d i n g   =   o c c l u s i o n   *   e n v I r r a d i a n c e ( v e c t o r s . n o r m a l ) ; 
 	 v e c 3   s p e c u l a r S h a d i n g   =   s p e c O c c l u s i o n   *   p b r C o m p u t e S p e c u l a r ( v e c t o r s ,   s p e c C o l o r ,   r o u g h n e s s ) ; 
 	 s s s C o e f f i c i e n t s O u t p u t ( g e t S S S C o e f f i c i e n t s ( i n p u t s . s p a r s e _ c o o r d ) ) ; 
 
 	 / /   C o a t   l a y e r ,   s p e c u l a r   o n l y 
 	 v e c 3   w s C o a t N o r m a l   =   c o a t i n g _ s u r f a c e _ b e h a v i o r   = =   0 ? 
 	 	 t a n g e n t S p a c e T o W o r l d S p a c e ( v e c 3 ( 0 ,   0 ,   1 . 0 ) ,   i n p u t s )   : 
 	 	 c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ; 
 	 L o c a l V e c t o r s   c o a t V e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ,   w s C o a t N o r m a l ,   0 . 0 ) ; 
 	 f l o a t   c o a t R o u g h n e s s   =   g e t C o a t R o u g h n e s s ( i n p u t s . s p a r s e _ c o o r d ) ; 
 	 v e c 3   c o a t   =   s p e c O c c l u s i o n   *   p b r C o m p u t e S p e c u l a r ( c o a t V e c t o r s ,   v e c 3 ( 1 . 0 ) ,   c o a t R o u g h n e s s ) ; 
 
 	 f l o a t   c o a t O p a c i t y   =   g e t C o a t O p a c i t y ( i n p u t s . s p a r s e _ c o o r d ) ; 
 	 f l o a t   b l e n d F a c t o r   =   c o a t O p a c i t y   *   f r e s n e l ( m a x ( 1 e - 8 ,   d o t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l ) ) ,   v e c 3 ( i o r T o S p e c u l a r L e v e l ( c o a t i n g _ i o r ) ) ) . x ; 
 	 e m i s s i v e C o l o r O u t p u t ( e m i s s i v e C o l o r   *   ( 1 . 0   -   b l e n d F a c t o r ) ) ; 
 	 d i f f u s e S h a d i n g O u t p u t ( d i f f u s e S h a d i n g   *   ( 1 . 0   -   b l e n d F a c t o r ) ) ; 
 	 s p e c u l a r S h a d i n g O u t p u t ( m i x ( s p e c u l a r S h a d i n g ,   c o a t ,   b l e n d F a c t o r ) ) ; 
 } 
 # l i n e   2 9   0 
 
 v o i d   m a i n ( v o i d ) 
 { 
 	 V 2 F   i n p u t s ; 
 	 f i l l V 2 F ( i n p u t s ) ; 
 
 	 f i l l D e f a u l t O u t p u t s ( ) ; 
 
 	 / /   C a l l   u s e r   d e f i n e d   s h a d i n g   m e t h o d 
 	 s h a d e ( i n p u t s ) ; 
 	 o c o l o r 0 . r g b   =   o u t p u t s _ . e m i s s i v e C o l o r   +   o u t p u t s _ . a l b e d o   *   o u t p u t s _ . d i f f u s e S h a d i n g   +   o u t p u t s _ . s p e c u l a r S h a d i n g ; 
 	 o c o l o r 0 . a   =   o u t p u t s _ . a l p h a ; 
 
 	 i f   ( a l g _ a l p h a _ t e s t   & &   o c o l o r 0 . a   <   1 . 0 )   d i s c a r d ; 
 
 	 / /   Q u i c k   m a s k i n g 
 	 i f   ( a l g _ h a s _ s e l e c t i o n ) 
 	 { 
 	 	 f l o a t   s e l e c t i o n M a s k   =   1 . 0   -   t e x t u r e ( a l g _ s e l e c t i o n _ t e x ,   i n p u t s . t e x _ c o o r d ) . r ; 
 
 	 	 i f   ( a l g _ s e l e c t i o n _ i s _ e d i t e d ) 
 	 	 { 
 	 	 	 v e c 2   g r i d _ c o o r d   =   s t e p ( f r a c t ( i n p u t s . t e x _ c o o r d * 3 2 . 0 ) , v e c 2 ( 0 . 5 ) ) ; 
 	 	 	 v e c 3   c h e c k b o a r d   =   v e c 3 ( a b s ( g r i d _ c o o r d . y - g r i d _ c o o r d . x ) * 0 . 4 + 0 . 3 ) ; 
 	 	 	 o c o l o r 0 . r g b   =   m i x ( o c o l o r 0 . r g b ,   c h e c k b o a r d ,   0 . 1 5 ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 s e l e c t i o n M a s k   * =   Q U I C K _ M A S K _ C O L O R . a ; 
 	 	 } 
 
 	 	 o c o l o r 0 . r g b   =   m i x ( o c o l o r 0 . r g b ,   Q U I C K _ M A S K _ C O L O R . r g b ,   s e l e c t i o n M a s k ) ; 
 	 } 
 
 	 i f   ( a l g _ d i t h e r )   o c o l o r 0   =   d i t h e r P r e S R G B ( o c o l o r 0 ) ; 
 # i f   ! d e f i n e d ( D I S A B L E _ F R A M E B U F F E R _ S R G B _ C O N V E R S I O N ) 
 	 o c o l o r 0   =   l i n e a r 2 s R G B O p t ( o c o l o r 0 ) ; 
 # e n d i f 
 } 
    c u s t o m - p r e v i e w   F    �PNG

   IHDR         �x��   	pHYs    ��~�  �zTXtXML:com.adobe.xmp  (���ak�0���P�Ζ�5��e$+-,��ݚ|T�#KFV��__�q��P*�8��pz���[�l-�2��<���)�VcX�������K�[g�ߤ�e��J0�r#kf�s� �b/�ZĬ��'�l���J��AFi�!m��O��R�n�-��:_���m���%xeL�i�&l~�Jd0��H��7i�d}��@�iQ�$�w�P[�;���ձ��ö�0S%��"�(qe���Q�E�M��]Ԇ��+.
	:&}&&�ǿ��X^��3?>f��t�K�(�19��ࣰ��MD	�U���c��~�)��^�F,?��g=��ݗ��W����E_<���,αN�s�'��f��u�N�=6���ϰ�&=�=��'"�o���0��qA�	lܨ�?<���    IDATx��y�nYU'�[k�����A2h�L�b2�� �	**PBj:��j;�����lw�ph�[�5�z�(����0˪�EK�P���DI&�Q�$߻�;{��c�i��#��ܿ����ΰ�s��[�^������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������@�v&&&>����'�<쯿����^|����!k���Ľ�) LL\����<ew�QG��G��pa��dٝ������<FZ}Z�&��x.�n ��h ��D� H/���}D} �!����� A� z�� �S�^S �%T.��
�\N.�3�����z�<�׿�H��;���o��~��qbb�� &&�%�v�m����m7����9�<B7Њ���8���8fzJ�# h��*�:��^	`  �����s=�� ;@ ��Y�Tn ��@z. ��7@Z���*��.���*8�N�ۯ�&o�8Y���k��=�������+_���OL��1���.^�7n~�?򴵏X
!��7г�y����@"�ڀ�P�`��ɽ�. �R��@?�?AI��1�7a�����%�	�Q`` H�� "*��O4��ICP!�7�[���´
�[��pWe~W�r�}ο�Gn�������a
 ���7_O�^�Ϸ�����������C��,DL �� �ڜ�;�s'x��JҀfZ��@���\�Dn�:������	Y�� H� �B�lB 	 �A��� ��6�.��kD 4�?@C�24���	���� �k��;��;X�v��;�u��=����� 01�A�K���q9���BO&i�\��@�G�ЎDE�+Q�������v�6�uv���Q���P:vrbv���
U_�x ���_/�ɭ@��Th邊�.z�i� � ���.�H�`V�P���f�{��ϥ��R��_���{���Ͽ�-��81q�� &&������/�E�R�|�N�����K���`!h ��;�+�u��ǻv/ s7՛������w`v J�"�u빖\��  ו	�@L��g5�+��u-_�'�1�@M�=!�k��V D���n��0�L0`��F��ʝu�?Z�
�����7��C��'&�IL`b�?�1�bЗ.�O[�<��v��0\D��y�����Љ��f3���,5x@���N��nr7����B��1�����ڼ��@>�x�1̠���p�W2�P��ĭ�]�`PD�	h"����@ԭ�L�f
w�@T81�d%�uW�i)�e�����������`>���kS �����n+�������Q����QD�j�����N�j�7�O>} 	��~	c��T�N��YZD��Z6�>�i��! �`�
I!!N�U��E�m�Ak=!��W"�"BրA$!�0���� �  ��$P���;�#V��f-�k*V"����	�Lo]�\C��S�������~���3�pb��Ą�e�{�Ǟ��70�Q����[�ڞ����V]w_�߉�k��o7�e3���yȝh� k�T3�Ü�������yV�YΌ�!���o�dY�\��1aA�����1���n�H��ML fP)ne �
]E����[�`u��J�� 3�L8��~jO�&��F�;vw_�Ӌ�z��ǫ21qM`
 �i��9Oz v�' �X��&O,�>��\�Oi����[�}'��_�-L�9kD��t�ޢ�-h�#���{ے%<�(����׏��)}*Gbu
��5ÿK�4P��{\���{�����B�͠� ��%�<[A`�$��4"T*���B ���藄�uU�7��o��_x��Y����5�) L�A��9��xA{	>M_j}|Y�s\+�6Pm`i(��O���\���+�B���?/@�&� ���NZ�u����KjB�i�d��@�sJT����L�6�O��&��-� ��.�lY�x��k��������@�Q�E��2 w+��|�#��Ǝ���hJ�XX�:��u�I�
~�R��{^��w��31q�`
 ����[���������"�ZB����Z���5�"��g&p)�o_�y0�;��v�:=Q%$�o�.8s*�/%e�I~���Zq@��~,/}2�	���kW�[8�z�0�H}!�������0Z� w+���] H�������h,@"��;[��0ZaoC#B��
D��̅o]A�Y��DL�˷��o��ox�&&�jL`�Ƿ��	a,_Y���[{7<�����
�{�Z�)�^!�FY
x)�����K�~kM��{ ^7ǫ�4�����i��ȭ�H�TlY`���_g
���M�7�D��%�|J�*)����R�Ձ�ҷ�	���nF$	��7o�C[c���"`V����@ T�`,�?id�] ����HRT�P[���4�&X!�����޶�	�ǿ��w�����ML\��ĵ���������`�����&ch���gܫ+x����֕&B�,�t_~�
D]Қ�ye ]"oK���=b�I'�����k�����=�1��y��;�r����vT�U��ٲ�����l��OSk�r�]�]�I�4/q^)�M��$D�#�B�P-���h !����/���X�}��"�*��.M�"hĨ��JAcz�~)?����?�~�k�ŋ%����S ��f�O���]`������/+M�癆->�u���" &����}E��|f+V�c ��>]�fZ�R����m?�7@�y�1B#%�e�_>�����pO �_�ʖd�'r������I����1+�q.�����y�ׁ�{@���L�b���HI�������Rt�"�ؒCD,����4�k��h ��hG��۲��J���������nBz0W� 0qU��E��ڣ{L�}L���t�xM�ӌH������k�j@���������f#!&��Y�X�_��R���t�2��'k��᜙�v�c(�!%�&���w���ڎp������J�0��i�hȖz[�R�˴����7��΅j��ݰ�Iu���0��J���H�8MKWl�u�@k& �hA=��E=*�����0�h�������88q�a
 W%���w����Ǘ�{n)�:ݼ�P pS�wk] М��zd?Cz?Q���+d� k��9��x<�c� �%i�͙H����ҳȾ�ފ"Hw������B� �r�6_�
�R nR��b� �Cqa	1mܽz,�O��߲9gB�@�n�Ȧ���l<-&��;AL��d���	Z��YQkh����=��`%B���v8=޽�R)�u*��.U��<�����Ͼ�nLL\���U�����=�����
�y���Q�Y>��"���@���7'���k��	d�BN+d�@_uF̚��<����ec����5	�1@����:JB�$�����*�5}ג1���paÏo��F�f2?��u��=i��nNxI����
0S_�OY8	�^��*@��@�� Ѓr@!y�(��7y�`�կ���Z���6�Z�����n��
��Pk�]�������{��7�M�{��|����/g��ĕ�) L\��g>�A���ˏ/��hy�y�5�	<?���}I_AP4�>n�o�
گ��nf�ݷoi~��bj:�'�@h������Ī����g߿��AJ��6��/r��-�/"��('����iˠ���n�ճP2��a|l� ����
(�� E����ߺ�o�|������b(�XR��� ��k�Mt�F�{�w���� ���?������(��wA�p/�?�+o�)LL\������z������
_waW��,����4m�뙏_�/��
��N�kEY+҃�v�0�/�� �ɎﲷI��|�[�Ҩ%c$j��kp����%`�v���M�5~���m�� >M��@��`Z7�w�7�Ѱe/�����iy�P�����FɅ��rm��I�̐QT�7��ۨ���`� IߘȖ
��C`�
h) ���j@h�8Q7K��.#d���N.��݅��@�Wbm���koy;&&�0L`��E���);���Sʎ�����kG"(fbĲ>%#P
aaAֆ�6M�eu��P���'5�:�(zT>�/��� 8��\h�"���[P��'&'|���"�	ta��p=_��_�ln;����v�6��ǖ���}{��EjZ�� e�u#����n�ά 	D��	�y����]h��uK�n-=ޠ�'�j_)`�F3 ��va`e�z�����w_���+�'��P�����{�m��Ľ�) L\I��<���/矲�������_���Xj��v;�k䝐�mW+ )�VM�')�e|��&��6�y �de�<N��?�����|-��C�Z|# ���$?�/p�6��G� �'? �D�:>CN�����/�M�m�����D�$S�-�zM�/�,�$�1
D�l�T� �aQ���v&����J$��BW4]E�г6h��i�Zօ�?��ɹ�.�m��^�����7}������1��+/����������G�7�Dz���b!B1�xS͔ 0ď����|��-�3g��Df� 4 ψ�F��t([��\�Ĕ���5`>���{�����]�-/���*��� @Q�o �1´�'�s�h�U0�EJ�$aH��z(�$$�@&h��,fi�!R��Q�HX\:AwiBXi��n�Uw((�1�`HЃ�&"��s�.#ܷ#��pi��mT~�[}�w��M���Ľ�) L����g>��,/<"���q�"����\{j^nA�\�t򇠯��k��&=-�?�OX��e��_�Ѓ�P���;�7�)��V����7�u��F��c�MY�Ȗ�h�p-��ٲw;�Қm�מ���eW�w%�M%�������v���P�q���e�Wև!�5l6dŚ���GM���2k��# �v�  a/ؕ�[��h&����	���ºc��;�vX�ݿ�����W��W�x7&&>̘�Ľ�o��O�q��Kv�?��<��F�JmX@U@�h��?���R�=�k����Wt�.����6��,)l��A��3��������Ĝ!ld5{L��<�*�T��AH�,��L��ZM�ȼ�fu%?ޘ�s�o	4u�46@r������c�y C _t������5��:#ҿ�M��{fM�Т�U�<+P*4KK�$(@S˒_�� R)�cj�1'�c������tmX�'�s����e��}��������ۧ[`�Æ) L|�q�m��Ǿ�M�.�ws�O�u��kO�[�Pj�ao�
e)Xv�kk"��%~1��ʜ��ڲ=����j�fJN�v�Z'[qr2�0�u�پMa��q
g�$i�)����(�6��ٜ��g�4X�ט5�M3?+p����!�L��?������7�W
ۉ����L�l�9�������I7&X�������t[a;/D�5P�Ǘ��1At� ��'�{D����}ž6�Bh�������џ������~����?󥙘� c
 V���[�_w��?ZD���k�ӕ�60�"���V -�[v�,˶ܭ�M��f�(y��%tb�e~���AMF��Z�Gӧz�Mx$�vM��V�"V0�͈�4��4~�: 	)Y���~_�iC����� ����c��QP�&'�A�M�>����D&� �j<A3L���`������*�![Y`���n�@��, ��� �=�lj�4����僅��@4�I+}��Z��V4 ua�������h��6y����~bL`�C��{�Sv�p��g��Ak{*���ZA=�O�'�Yמاx1�9�Ѱ�������|{ �y�@&Lf����d������č�ywd�q\����e�/jz�ܟ�
D�A*���x=���B�ҍ9!�w6�{ob���%=��{ֶh�Z$� d�i?}�"lL/�k�p����d���-,�[�����(�/���oT�Mn`�D���� ���F��5pm* `�����nLh��x�~�ݹ���?�^����W_��ć S ����;?�i�v��Z�}Mi�l���Wpp�`G\+�4,j�Xr���ZD׿90�J���C�G�>M[?Å1��g�3B�b\�N����bc&�*�ŉ`�H�u� �R�Ε���!��_`#�,��% `{�i����6�-(�c��s�R��z��(�=C��^g1f��<&N�i	`�β%�O������A�T�.tؖ�*��塩UI"Ԑ��aR@h(��A��t��uWP��`O�����&��%���7�!����b
 ���[�/����Ɵ�$�_VyN��ڰP�o���S��,��5��c�����崉K��d>N�H���>��/��Io�����-ߵ[F�JN�ܝTU��_6�����>&ۄ�������uC儜��K�[-:�9�I$m�-eW 醃�U�o��Ǹ�,I�ȝ4!+��#h~�6�̲�g��%@AOk )e���Э�7Z[�0��V�V���{"��WW��/���׾$L`⃎o{�͏%���畊GSк�jC�H���VQ
P�
����-y׾��4A�����O�����<H�O��h����t�=�j�r�� f�`?o��@��L�ʡ�d [����V#��������+��Jo����(�?kr^a������VoϦh�[�X����F*�AVF�W�1�z�L��֯��d�o��1�A>F�KӒP���X0#]ؕ�� �l�
�3��}*�劫�'�ؗ�W//���*?�]���~��'&�n������O�q��ן_�EKm7SŎ-iOk`���+
ˎ��)u_��{�7�S' "�%��@'X�^��f�v ��
x��� lt3��KA\���3j��90M��h�Ӳ�ZlB�6�r���6щ���=-ګ���R�Ho���<8��k�j��.�?	"����
μ�M Ե|
7�%#��)Y �R��q��@ġK���  ��C�+</�~�Nb�� ��nYZ��Ј�J��dX������&엂�R�w)����?q���W�Ȍ�������6��������k����#�J)=��5����+J]Q؝�aw�7@NVԽ�m`J�_���l:I׾�/�`�xqm�i8ք��lற�`:��l����:�K�< nq�c�xӮ-�=k�� C�N����Y{�y�����̹��$;�(�O&��IN�y��ln��܏A@r�ބ�cό�: il-~���i\ذv��B��x��Y��%�?�H�^m��v�%1��J}���� �ٟ=��� �E�����2@iK���M���h�#�s�#_�����L��?/}��o�"_s?�K�=���W�%�i�VP]AҰ�������v�w���� ��5'�N�-&��L�t߽k���S��c�r��@�З���{ Z0<Y$<TG����A�+	�� A�F����j�o���Z�2��7X�~�'qnn����>l��;����3&��}#C<��Ȓ��f7    IDATuw>��M(���q]����6N8�;:���t�n�$�5�,Y�
و�eƬ3I0��w!�<F@�����E��N5��1�.��SPI�JK?�Z�˂�.�o�g�����[�r�'=���[a
 /|�g�|��?����z�1 ZH�Ds�s�(����/X�v���.���˧��إ���Pcg��{�md������*@��7e4�F�6Sj�0���7�ѿ����iނ�̊���DIcgk�ڤU[�7R�BFn����o�G��a;���l���~�([�dH�1�Q��q��냎�F]]x���~[q�?�6ؒr(�-Y9�>�h��Y.���T�Z��M�lVf�A�DԳ֞g�qA+���TT��W��e�_.������u<}��mp�o����;�k_�I�9}����w}�[�[��W�օ�}�k�ħU�
aw�`)8]!w���g� �rT���=��n�c;�Yn~7���`{�;��E L�6/�4���J.���H��T�5:����5�a�_��D���tٌX`�			������HJd�)�4�3�YR�@���A�9��t�J#~)������
��Ȧt3»�bV��#�b�0[}�=�4F��i	��#�"B�J'���N��&���6�F Oh��2汷L��̋��2ݦZDSw����X�n%i8߄ρ��
=���r�'~�������{�&�F��|��D�W>�I,G���/�� z�ub'Y�p�'��O}i_9*}�>Y!��N���g]������wt����⮩��"�a��9Oi�fb-dC�q�6���U��`�\�p�K��LD"V+��m'��i�n���E2ڪ��oKDҝ� �������X7i�X���iÁ9?]F�?OJ���� o�� ��)�?tg<n�� 1"�����n�?���s����m&���ך.��!f�{HC��@�2��R𗥼�="?�W�?��[���-0��aZ &�V���|�G���_��w=����p���$�����~�����*�K�.H�~����. 0Acb_ 6&�����/gվ�i�2����A��]�V D�$���3����H�/��0F��Zj�����K�y
Ҳtl��M�A8��
mH��Fo� 7Ӧ)�tf�$�g�r�3�2R$�-� �oɖ�q���7akR�<�_v<=o��L �I0�v���rP�������� QƆ���P��(�}v���5�y�y�'3詗�y�����l�28q����߈ox�u�,������'z��Vf3�WN*�d>���P��;*=�k_����۟ �-�]�~�Ȧ����� ҄<N�5\��~�bU�C����ρ��y{�~[Je����1O�N�IS�L"�,%��D0�1�!W~&i`,&�%�Ѓ*7��q�
�k�hQ80=8)�����P���-il9KAV�Wk�(W@~>�;�bAD����O���43X (�5YU�ra�7�{(���{�V���w����p������H���G�R��ě�1���?}%&&� �͗Lܗ����Ͻ�����G���h_z�����}�>��X�
Ѐ��������������&��RI�s��V瓽��cB�0{�x��7;�d�m���r�I�<cm2�S���h�AG$�	F&fe�Ą������zY!,_X<(��K�_b}𾥶e�;k�Q�h��^Ol�$��g�L��qK�B[�΄�[�<�6^�]�\P�29�J�`e��-ư>��}`}�f���g�I}�4`�Q��1�]�4��� @{H6�(}�AAC�WT�n #B#Bcq�be����~���w���%��������ր�S �8_��7_x �YG��_�`W�ZuC%��
Z+XZw[Ʋ,�&��=�tC��) �=�ӌx-��b�(4w7�#H�7�Q�0;�#w�)Z����W!���yy���'j�����	��/�b�5܁�@��A~� ܚ���֖���$�qm��ҙ�v�IkOV�lhu"x����F!I/�X#�<,��c�Y;lG��9�(�΍�����͐�ɮ��p�s?V���F�Kcci�s���r���DY*8�f���`1!@�t���������ШoFԀ�@hY����}L���_z��nz��~{=���$� 01�Ͽ�8����C^|��ݲ[h�a�l�^Wp��B=�a�
�ɪ���]�J���� �7{"�����N��ܗ�YD� ��D.bfZ��m'6%u�x���鞐}�&?X�5,ֿ	��E���B�m����(��.�P�'9i�HZ�����fpCh��cV��/Y�㜯ID�Aȉ�>6���3�>H*؀�f��m��h�F��6Ң�MCP����q�`%�~��H�?;��� ���o.�`���0���VԦ�)�7�3;Y�]
���O�v�����o^�W�G4q�Ì�p|���q�E��^��<���[��/�kt�����Ʋ+(Ğ�Z��,�>�&]����}6��Mi�������}��z�@�p��ܯ�����4�d0��f��dM�D4?�j��|I � �1�~��P0���C��դq��B��5��c�)R &��#'H���rǾB�s�׌>�x\�R �D����\5���Z(�~8�C0�`)��5	��>��`0ly,.����쏜$�X1~ݚP�O��� ��*�A�}�#��Koz���� �����]������M��|q)k� �������_v�e�t_����g}8T8��&I��g?W�;r��A�~��lBU�7�h�� 9��B�V!���F~� �w-4�YEӺ�Zi&QrM����qJ?v$H�ʌk��R�c�����< �TR��B Hĝ��,��Ez;F�&�{9���\�!hP��=aka8cdrN�Lðq7[+�R
Fq�wnu2�ٶ�V��G��ρ!( 
�z&�U�<��}8}��z˫����%p� &�/�䛩����|���v �{4~7�2� K�)}�4,���p��WѤ>�s�Nޢ�٬ObQ��͊�di���o�W�s�H��B��q Ò�4���n�q:�ھ���)���4�tP#-�2����<&��`�e���oߋ�zQ�%�	�������@2��y�R��"�<�����Pr>�/!5��6�$�J�����3�O�s?=B��>�Q	��, ��F�&1�	9!U�Qx���#����D��AK"]���I�5�����J>L�z�	?���z�~���}�=6|�� �����{�3��?�;Y?�p|��oXa��� �ZA��	}?���g��ǅ����ݴ}��4;��-fǰ$��l�yY�|;�����e�B.m�Knc���|����T#����Y��m���8���Lb�-����8A "�x�eoc0"%�6a���M�.B��kŭ*y)ކtS+<�?Y4�Q0Ѱ�bp5�Ѿ�"�y������M�&�{�%z <�D��1uW� "CJi�6��]
����Q��,E61�f��Ɉ�Z �D�wZp})��������7��o����&�S��}_�yO��s������!8Z�p�T�QD��\�(,��O��֮ᣛl�$/��> ��3y9�&��s�yL�Ht��ӥ�Id�Ch<z�oE���b�?R �V��"��E9�<뛷;�d�<i4S�ow�K�-H$@��v�9~���2������,�`�/�Ԇq��K�9hKS*�1�X��o+�D;%���a��y�F�@�	��3a�,�nG�,!��e� �3����'��l�4�k_B�D=����i{�}���`i��[��P|֓?�_���8�>��猉k_�§\w��o9������XNxm`��j�{p�?�
 �웛!Ta�|k�����.�k�QA5j�s
Ӕ�f,�j�6W[����Z�n��� 5��� `I��Nd}�h�M�JPi�f��N_)~����Ho+�������A?� Dݦ�y;S�♝�*���o���@�$e�h�Ϛ��v��"�A�b�Ζ9ڻ2�M.������s&~��)eYԲ�=��[����0��wm�ZG��@J[2��ڑ�B��fϘو �KCj,@s( B��@��U./w1���x�w��/��_�����}�p�K��ӯ?���*/?:�>`��*X����V^�}O�[�o�dm��z?J)���ɫv���~�4�fM҈�UJ��D�R��\�5f��I4�I�=u�F�=�F�&�X?��eS����v�L��g�.��)�[Z�G��e����ec��N�I�V�/UIY��(����b�ns]��V��_J�@'�A�ћ�� "~�Z���I0tm��%W�U���ė�o�S��XH��3|�����nkbr��
�{���>���q"cL��	����;dc��V�"�B����74*�y�c������ � p��>�:pyɲ�oٝ��V�Q, ,K�o�����j7�3�&=���\��:{V?��%�4�a�f2Mj�1�"�r���D�D�F@&�$V��7�M'�'l��Dd���x)��XE"��ah�H0�+�l	oӖ�Uj: �|m/Nt��$��2=q�ȳ�y�g5�G#4�9o9��L��-ϟ�79:֒���:���vk����&D���(�l_�0�o[��S��HTH�1q@�G]! �B�勰{�u���@�z����г����������c�� �#x��=�8^������i�a�
�*�#Ʋ�h~��_A뾯�'BYz�]��';�n���K -�����j@[M=/ͳ	8O��~��:�!$
�5���$5k���<��-#a�"��2_3�z}Ai���55�k�Yb#Cĵ�J�MqQǼ1]3�@�C�1n��|=`���e�g���+�2�oN�Q��y��&=#���;��]S6���%EIf!"��(�2���&+��喉�J =?BXټ����۴��ƴ�0`�e��a�L8��.T �o�@�O���>��o{�C��y��Q�� ���/z�cve�/v���e_|T	�aYTد�~Ԟ���}h �U��n`��ʫ@Z�$?4PK� ��--��D�&W���-NY�mؔ&w$-ͦڍ)*P��@�*$lv�	�S�H�pp%B�ŏN��YA*�2�5 �N&�xB���A��Xc�1�f�:����иS��g2;b�h��Ò��_���m_��>�Y1�ןA�9;� ���<�}���-f��gA�Yƻ;,����,�R��A�]`ﳥT�P�*��B�( "����]�>����7���vX'�~L��7��sL�_]�߲�۹ca섰#-�-��=�_�2?����p�0ޯ}Sf�E��]é���b�0,& ۆ��6����Df�I:M��̍�M��I\t�X,eL����\Yy�)u��1R[7���z��S9麼j�H*��抷I��=d�(^�i�vlCY�7��N* iA�U�ݗ;�( B^O�o�[�nE	w c9KT����BJ�q66>8����fqI�.�}���#��`�=A0<��/�@|4���((�Yh$Bl8d�
����C�t����]��I�~���@��.��z����|��_��?�B�5�) \���/�妝���]:�e�
�EtR_+�t����
&AY�V�rZQOWPk]C�P���]:�d�['*�t7B�MЯ��~nyM��|�M���i�[�H�_(y����݈<����ll����;dZ��!1#�5���J�

��u�W�vE�!�x��>��&@~A�\�<|�$uE�z�rǳ����`���Xk���X�=���Y5�~o�5]�	����Y8H�F��]���T�H2��5q�_;���H�wX��B��7$�8��aŋ��ϦwO윤�oc��. S!������r��,�e����:�Y����~�_;�^[��5�����x��⇗K��	p\����H�
�=Џj�u���'@��t��?��b�Ms����TW�Rt�@R�`fI�R~�~v+$�V'٬�#͚�-�p��r��N��ɍO�7�ݷ��2��*0lW tm�:�|�swḵ*&Hy���
+�o7���<1�5�̼f�0냵)��� 7�F�`Eq~�R�.pJ�ɭ7v�n~��m��� i�j�<Z�e��'�ރl�7�e�l���@E��%)I�إ��EWy�-��`��x7�<�B�����p��<��]%�+��X �4�V@�σ������z˻���&0�k�i7����{����c!��,J�����k'~��I��� ۾BNW�6��/�`}&Yk��O��t�����g�4���a�� d2�^�oVf�D<F"C���B�b@ԃ�<7���}[n��}����hQ��������Ҕ~R�%����ԟ<�gjHDK��i���r)�e��SƋs2##�, ����ڛ�J�!��,&���ڪ���y0�A�M��@C���3��D�/�ޘ�"Q?0E��w�*�89�f�i�8��n��2��-t�@{x��}o��{f�0�K������?�q7��/��O.c�� �1|���8������#ve�f��@�
Ԫ[�6�h���`b�Z��Mw�ʢ�/ Z��l�- ~gme�q3������H-'�����q��T�$��k��=���^��k�om_Z#)):oXɐ�	e�A|�A#���G�C��|�6�������y�|Vfu���q���7���&r����Mw����U�+բaW��H�s,���p2M�*:V��s�n�ڞp=��<j����N��N��YF�I�V��;�xb�~_A�m�z&AV
���������7��&�jL��w��*���ty��#b�0Jk����+�)��6���Eɿk��@)�룱6���k�[7>[���G6y[���4jDv(xJ�-7�SLx!.���r)�s�=����Z3��|�tOP#�3{��J�r����k6�D>�4A~�k =��qAL���8��v~{_�؇(����lϥ��d>6��~m���+4|hǞ�X� �t����X��EC�-!~r����-�c�؞�ؘ%!"�$Ʈ��%�î�)���y���!=%��G�?6`����˱�  �Xi�|��� Z�$�B�����nL��w���߼�z�.�?�
��*��@����j�iD@)ݷ�}��V]�_��VH���5	��/� Z
��a��]�M33�&,HjG,���k�y"���%��E���;[�İ�@'GJk�m	��H鷙}A>�A��%�rʨ5�2�)N��P�������ȚhB�������)�A1�V�`�ɪq�;�
��3�\��Q)��/~<J�wʅ�(�H=�쓷?�6�=�xӑܶ.$P޹�MF�vNX���]4!]ӟ���xg�w:&����ޒ)����Q���ᓘ����7��g����J1�k ��yO�/�E�w�~�G�s(����|tz
ޯ��� ��Cֆv��� ������Ʀ>]�7_:FZf�8��l]XF�c 1c�4�F����.s���3��wb�4b[$'�	�0
!N�Q
,����f��摄��L�pMb��{ǹ�	+��ӽY���9?P��W,��v! ���@R�;�� �&�š��ԗ���9Ŋ�Q�უc}����!�:� I�,����5+��"�⽴V�M{�*��2'�����	{�R���
�&��P�m�����	�p�c�E��O��� _�S���sB|�	���M7��30�� �n��Ͽ�q�;p���#!�;����
\��O���<.����n�_�
}[Qzr ��Th�~��M1#�DB�t�&$eRb�,��u�M�Ğ��'Ѽ�X����4�T�v�3�ݨ����Z���B��<K�w=�w��Kn�hzw�Ʉ���&xP��`[^\���9���DB�/'/�kH㓄�܇�ׁ�(ڐ���1����r�ȏ;�פֿp�Tī����\�"A��3���D��]P�6�w�Ou�6n���    IDAT���:�x�oxe�R> N�IKR�~����M" �?�b�
u���Y��V.�O|�ko�K�:L�*��|ѭ/u�a���!��nwnr�R����t׿�fޗ� ��s��x���W��/�/>�'eg�0_�es��Ζ�$�Y��$f�P��T��H�����1�yjqg2C[������m&.�;(��U
۲Rv�T��L���0��G��M[��~�e�q�����ۀ]�uw�t���/}h�XV^I`�6��vګ���⍖���-��g�&�%��=�] �wl͈5�gfoH��݌�v ��"�A��#�]Xh���`���`�vk_L�
�P`�߰�X��w����ۿ��w���j��������^����~���q���c9:�r���4�u��23`���>��{'5H��x6��3����eP�"��#�=��|-�֪0����f�f+1��y����˱�ĝ�7�'�����F�ȷu�2m8��Pܮ,�z�`��=��
��,YMF�/�ʏ$�=�)�{*LHʂ������5z&L���� ��?2��*���;mZ�����c�_��=F�y|�k!n�0��F��Z+�����^����}wM���4 �q"	�&��w�@�jh��C-�y3�z�Z�g.�*���h����?�wW&��*�ŋ��_>�[�~#��p|tG�G(�A>p7��k�H	J=��z���<�
yV0�`%T���&?[m�M�v��&w��QI͍�x�JANqvL҃ܖܤ�Ob����F��c��|�Y�R{�jЦ�3�g4��!����-f-H���g�h��t؆`"7)˦pː�w�ێ��,�jA��b���].��	�n1a��w����Ȕrazl��f�$��3��>D]�+$���M��u޷Q����4�y,!?[���;P_�\H���� �zBr �$z�=��y��x��W� p�9���pR�IN�G���1�6஻:���Ϛ�'����G�;�s��'�tߡ�I�3�Y����&E'
�����sT0F�D~b ���C�����Q�:������j��L�B	*M��X 	Htp�<H�L�������a���s�A�3<*"�M��]D�s26�@�����}r2tM^FK`�X�g�y,@��i����.��[Ȃ�g��X�����$^�D��uJ�cY��n��i�K~dZ�_?��H�7����X�X� i����Y���4K+� pA
=�7=���x��W<� p���?�E8m?$���e9¹�s(R!w�:��O���=�_g뵛��I��OS��N->��K3<4M�<������g�]#��i)����yq-�@�6*J��2IelI9e�����ۚ	/��wlмs�Фd�9���h�O�+ʄ_��MC�'X(�iR!�E��`�\�{hG*�ʶ������D�3�B���ڴ�Gj��#{.�ȇ�1���X?���$4س�ץ���������2R���-�ͩM����4+��O�m�4���R�{� ƐVۃ?�;��_
1P�I�QR�#>�q���{ӻލ�+S �����'b��o�{����ܹc�B�'��I���$r�ˍ��G�ʩ��E'p�җ���W-&@'ٍ�<��R1O��o'H�Ye���=Y��t
Ot)����S��$ln�Gs�]��yhG��1bV��{z�r�۝&d���x?�F2�BX�Ǘ��K�3�El2|�d�����Aq��3�~>�PX{ң���=��M�}�!���q$}>�Jmc�Zz<��9��k,�ŰI�����А���M}��Z#��Zy�p����5	�H��z�R��� ��v��ڿ2nUm���?P��r+��g9�Pg*��nA���Km�6,����#	��9�q��so�Ù#�
� �|���d9��!'�ѥ����*p睠K�����A�.�� �#"���O������0&ҁ3Y����ȖP8�!6�:�v��u �Y��:BILO�<;`u�����qۈ�L|���4+3='��s�������b�Ci�uv��1R��gKv9"��ls�x;��H���<˶�;X��q�hA�v�󻖛	'����gKc<������Լ&'�%��;$@ϗo�Hp��׋]�߾��.�����;�ֶ��ؾC�����@p)Q�=�����- �۠Z<3C�	ɍ�.(�U����	�wB���MJDD��S����?��?�w̕W(�*�� _|�G�*߄�<��c�򁻁ӽ���z��bA}�ɏu[_*��Uh}y����k��(a��)���6Y
0h�F?��$F�8�x6��r� ��I0�}i2&������=��6���S;MXH����-�&�C�C�̤�Y�1޴�ǵ�M9i(z�Y��{��{{rgI� 
fѶ4�e��Qf�q��BKc��}��x�7k�'rbRz����:��+"u9��k��a�&+8 �K ��}�T���F´�S�C �Z�=k)�^�42��-ӵ��z����]��c��~��F\��X�SĒ4�A�ic��5rYW�!�����N~�/`�Ĵ \���[?���mT�K��뎗J���w�u��o�	�ˋ��}�_'��>D�j��6�$�0�C���,�`?d��j>}ׂR8wҵ���0��Y��]5@�>�xp��=YZ��3������['m�i�B���Fl�zkk0�x~k>�|.�������E��,4�'�M�X�z( ���B��s@�i�]�I�^o�k�!��Pd��F����]"v����rz��=V�2mL,1��;�MI��E]�� �	z��2wG0� (1Z�d�� �qG�lu��ٷN��B����=�?�w���Q��w1�+o{��nw���wZxT
���t	t�ז|�Y���U���R?��kᮏ�/�j������.B��� �13�M���s��&�����m����@L�#:I�Y̍~6��}p��H��z��ݗ��a����Dpq��Lb������C�Ͽ匓Y����{SV�;k��8vg��s�( ��AK#=l�7I��4�ժf���7w̰B"�i*h�k��@TA���ʽ��!)�#�����X��/I�Oe�� F����3~��2ƌ���{��H	?43��@�@Yʭ/x�C�����]o���) \���O��gC�CE������+��%`��A�wX4�_�<���?4��	��� g�N��7\��7\�ְ�(M|N��`98�����y,&����l6"pc���k���H���~ƵA%���j�*�ow(��a4��6�hsȆt�=ٴ��m@4�r9�w����y(Ɇ$����Hy�)�1�KVA�J(��&A��)�?<0�BWK�q>��Z��}���n�؏>�����@�*���;��<]�g� ����h�!q���Uh�^/�e�D<��Z4t��D[��2��]�1�A�S)���>��o��w���^��{S �B�C_��O�E�<b��*��2�����%���`�� ��'b�Z{ s�_4b?Q������X6��(L��3f��~{%ħ�72HW�U�m"ے��'M����1L�Y�8˔�3~�E���8��{�B !�t�nNL^���ǱG���h�nvW2 I>$�-�=�鄐�}�eT�����4� �D�N>�'�LR���n	��|�G݇�������&@a��ԧom�4�����o�@ȈV����Wn9+|5�a�ȅ��
X;��������n� ����k��1�8�͂Aq=��i���S)��O��_������c�� �@���>�AB��8-�/eA!@�'��)�-���"("(ԉO�t��
616��O�#��_g63_"~�-,��7�M46SS�8mJ׉�2�Fm�*�&���^�5��7��GR�.�I㏯巉l���"��?��i��elѴ����F�!�&]q�lL�g�?�X�4�#e�Y�������m�W*��l�����/6�I=�� �mlu�%2+�#)�j�2��<�Q��(�rj_^R�ϡ��Wf	�"�b���x��}��Z��ĺ/��Q
��<1�=�w��E�\l�`���5�?Y �$2<"�L`�p�q_T !�L�������Q����E���W��x�_�L|�0�+?���Q���tBOء�R �_����ֿ��K��]l�^+P�'a#��B�R��'x_��4�eu'��;���B����g+�ۍ C/��5z):k�^v��L!�x�z;���ӝ�����V�u�L����uzty^q����Hεo]gv��tV> o�0�&P >oӲ�[l�7O���I>���Y���7�;IOQ	J�6��ɖz. ����E!��=�`�S�8�����\Ƈddm����$L�vuK��ɺ9W�e~�G��~��6���~��Ҏ~�6�	O[h�LX99��&�b���Y����f�B�p_��6V�?L�����������{ཌ��
��ճ>��O��V~A�B��?NO���z���uBQ)]j����uͿ�<��3e,3-$�҄X&�*b'>2+ೇ�����C'W1�F`��bV�=�C��VE���h ��g�ط�e;a�O�Y�S�=$G�+�5F;b�\Da�h����<+)&�����އ$԰�+z�X�P,A˛�Ub�I�m��P���E(Im�0�k�Y�0�ͦ�pA!tP?�7*R���b{>����f<�T	�웄��9�DN�F���%Ҵ ܦ�:��BD!���/�U!�N�V_�;i-%^"�&>�p����n�oZ>dL���������QP�=t�����"�=Y�l�	N�<�������K�/����L|�1- W~��?��~��ե���Q�S��	 }��/�t�5��
HZ��������{F�F5ʹ�-��|��`+�UK:������Jl�AH��vFq���P�ڭ.@$0�Y7���Nͣ3~��6�ƠMo���<�,#�|vJ���F ?ʡ�g��<�{�P��96�f��-{��d$�=�g:�݉��v��F�g��cJ��En���D�?����M�����扆��0����U��+���o�
��r,���4�Cĺ`Xl �����L}c /��*�>�oe� *�����ox�ǽ���x�{�ćS ��?�v���/�J/���cF�rr�k�� �
�5��UHm��R0S�P���������K 1�c�/:�D�q�r�Ƌ|#Afwi����k��~"��"IJt�&��ĈQ��1����$�KM� �R�l"��^��5L��~�u�sZ��O��)��a|��اG�?o�l�fc�ϓ|=�j�c=�5r.,��O��r���Q�>�;��H�l�o�~ �����r9ޛx��=o9s�շ_��� ��i
�N�U�-aA��Ek��)�_��������o�ث�Q��S��������)pylC{��=�Ww��{1q�`� � \^�����*=��� '�!�~�N�F�=b�����{��mZ����~��]k��}3� BKeZ��"�;B�"P:�г��F(��i�ɘ�ZmH�ML��i��1�56�0mLci�2��0�}{�����?����=��͐�u'k����}~��w�1EE��(pg���ץ� �N�ͣYh���<y�E�:|�<ŀI�H�vѪ6V��0 /�Q�WFYy�<Ȍ�&��p��A�g�N����c1��r,��#��|%���R���T1@�mf�Yf}ާ�P�v#�J{�<�q^l+���9뎾חJ�����������\f���恘J�<XSJAjt��(#��u�K�>�^#��s@s����wћ�#\�a.$sZN �2#�U�/.�7���2���e�CI��}tѾ9�G4�2^}����O�Ҙ��|�͈�6�1�ġ� ``�C�'�k�����|/�ߊ��+R$ ���{���|���x�盐���{��^���`� Q~���1�po��J�'��\����>8�W���1�a�B������ ɘ��>� *lm%ܸ�0�CHu�ћ8�
�Q����ն���!��']���u+��c�������VH(Ҡ,��C��U�|� �Fڻ�o�l�%�ֶ�<H`|�/z��H�S�DN�n��&��վbO���1����9�Bh��`�q�8@ h��\�Е�5je����B.֎K4�8Wͩ b�`R���0��+����H�pv�I.�= \�P8t﯉d�]�W�����p��SL�ڽ0@f�ߙ͛y0�J�➞U���|�|���?�?�l�>�Ony  �����zWǛ��e��Y�:&h�@��A�H�/JpU�?�O��i�:�'b9��A�I,I$��\s�w) !�"�Z�l�Շ� �����<@����ܸ�z �4����X2�P!��|������� �)��������AA���O'uq�P�a7Ƌ�)}���	&�8�Jhq]����0���%a�|��~1�s�Z��B�Ph�3��X�}�]]ƊT����`�$$d0��Գ��v�L"�5@ѷ���%���!�-N���?%�Z��?��~��(	|��;B��xG�����Э>�	Z����4Т���K3���A�R3����a 3��n�̇
�KFo�7}�>���~����~�G~�G*��P>��A�+T���4����/�	��0��an�kf?��P����}&��a�7���.��<�ʡx�㺣|=@(c���״��"�r�9h��΢��Y��+�GZ�E���?�cK`ⅡD�}�ظ$�����Vs��.�罯�`������9� lD=�����=�&g����p��J-�{�� ��	Xҍ�(���5�MwB���G"�Ijµ�
��bH�>$DKAJ�
8&;g���2��x���'_�k��9�;�ry� k��L@dދNS~9dD���ͅ���'U��&L��{�@<�z+���\�G⚟�DP�f��s�d$~�s�A����%6 �m7$�MX˘�K�pj�w�?�����I ?���)+�_��_��w.ܾoY�S'��{�e�\���b@��A�8���{��ǳ��e=����t���\7�ӓ$�@��.W,�5O��������%�8qbE�Ps�}5�Ur����J�@!^�"m'�տ��t�5����Z�7���9�ɀ�A}��l%,����E��$�s�cV_���$e�9��Cd�d�.>��Y]����Q���>�;�O|G�UQ5Q�}XJ�Y+P	=�"vwU�{��U{�`��8J\T��9f�ޕ��h�U8.�R�������|�鞊ap�Hlᙨ̃�C�h���M#��	�
��kQ$M��~��~�;����o��O�P>%� �
�?�;���O���y9��Sc����C�w`�!�[G�9�-��؎�����	��U�U�\�+Ǻ
���Y��J����>�>�B�u9��������Qʶ��qݦ]�nXPWy]#�&��|nd������|��k�:� d���T-�R��J��ջ/����R��;����J	c����_N��z�CPy�� \V^���9!�a,^�>
c� ��P�~�dn��G������p������׸ 9�1|�[������|pK�y�ρ����S��5(��8Ј��x׿ek�O� 4�Ɯ��v�����}����'�7�Cy�˃
�S\�跽뭋��k��uiL���p�!�#=�Y�[F�}���5�O��S�j�hH� s��T�vC�IH�@�}/�*����d]���W�8����9F�)D4L�`P$�e��u�Ψ<��M�O�H,+}����Jt��q�{W��ʵco��"��k����kվ·D tx^#���.�E�Q�����\'ʹ��'��h���0����n�Q�b�_�VBK����=�D�!����    IDAT'ξ�?�h��ƭzvu3��-����p?��9"t��Is�폪�(�n����9����w"���J ��?���9�aLL�p��u3�#@B�Ț>NQ0`�h�ͥC1�Y��h��@�/��o����z���	�W�>���I(׆��\Π��{���鴶}�>���%?찛�����	#\�� i-�
 �����9pp�l䁊���wvP*�Hz_	z�!!.�Ʈ9F�8J$�BԐ0x�ˏ�w�4�H�4��DWy��u.����ҝ#�+?�[�0L��]��%���=�����_�=��g�����G�~���s�z�@��;G\��U�K���VX|*�+��|�n7"�㤈H�X�4 �b�1��>�T��A�m��-ŘA�
����n�G�Ƭ�
 ��d*8P�<$��m��D�?��X{2F~c:Zk!0j�ܽ辟c`N{�����{���| �(i�Ƒ)��L�蠽5P�����{/]��f��@�{wE����h t m
�>�p^;�4>����������A:�)( �SX��m��g��y���,s@^{
l�F���Ľ���R�9�v�o�4<���[���)��o܌\q�a��/�*���B�-T= �>5b�è�w �f1��>���"�$M���@�H>�h���L��f.���4?f/���ч���+�\��Ņ�pDk��L>�?���0�:=P��;~�V��(��[�+� �H����e꜡�� (�)�����A"�Uf咇��a?��9���CR�|
B�Q%V��(P���UG�����J�K��I:_07�\C� ����d^l�O���hMU&%�sbL�~@̖�a��R���4w)tf�1��,j���*� 8.����K�
� �^�aƘ�%d.�v~�~j V��&<&:�ӊe��ڟ��g��x(���>E�����_��x���me���t�%�l���C ��%Џ)>�f��H��-��	9�=0��ĚR���8�Nc?�p�)�)����K%���%ʡU;���.L���C�J�W�׌Ą�q�-v���|�zM�k�U|���h�Z_��-�0^
]��x�֘�P���ۜ�Rm��X�w"{�Kr��U#�sÔ�>^���S��Q�Yk�sd.q%onH?py/��}��3m99�\��j {`B�=��c�5'lՖA�(��n�o����j;�l��@���a����dD�(�rj-Tm�w��a<���n��%$X�L������) �>E�p"P��=�r�z�y�`u[���1"�� Y��17������c6�gh��މ������w�/?�7�￰��V$ ��B�]�~���]w���%N'�U<���f0�}��f$��1M���` HxP�h$�ALF�DI�y!@~@�u��sۈ�o@	?+�Z/��v�$0 @��, 1�jc4�\��6
���m�|�����'�7"`�8AV"�D��R�JAs�������l�)�59� ٮ�����1��ʌMY�'e�:�e&�r�P�?�K�9���$̀r��P���D*M���tͲݹ���.{Fl��� 'a*Q��ո_�KT��ܺr����jbֱٻ��%Eo��w#���J ���:�.rW���u^�Զ$슀9f���w�]��bA��mz��CmYt�(D��e�:z-=�$�!%�>��ę�Ұ�����?���V$ �����ί�'o���n��7��=��;ћ����?�H���`���K��{b �}���ʉ����fG���Ҽ83��W��/�����p�6��6
N0-�H0�s	Ps�(�)��stUL��a�׎y�Ոx�h��.��T��L����n�o�]$uTt\VvpՄ�+��v�.�Ay@�Zbn|�����Z������W��	8�E�����(^������w�&@�����Ômbl���b��@��J��r%�G�7�K�.���=����^�qC\�z���D�3�G�� �=8pqK�$� ��g$A�߈�P��dc�3��%%5!�P�F��\U��P\`�
�m���y}Ʒ}�W����G~��/�OA9/�;��o�}�|~�qX�R~��>�� q:���v���D��A�V�!�G<�uHԍ$Ԕ�r5�`�H��w~5��ROԕ��5!q�*EJr,/����R��7�H$`�BAD�\	�D���FM|-G0w�S�yV�����<�G깑ss=^K�*V_}����s׶���(�p	F�W�Ue��w I	H�Yo�*����Qމ�%..w��
���
�(� �
�Q���&�7	�ޥ���Q����`[� ���|z|2� ��;g��P;� 4T-�j/5�j�<���͋���7Po%� �熔s@Ի�L�"Z��m�g��C��t'�9��T?c���B�ͩ/����=�=�V<�OJy� |�˟�����o�y��f���mh$�}ۀ\�Z�ؙA�zT�[׳��7E,' �z���v.�x/��/ɀ�ȏ�n�)~{?S�m��p�B@x@ہ�u��@�o�����-� ȑd��m^���c�J��9sL�Ak����c�G{p^F���N����'��.9�9�Ji�	�]�xȟb�^x��	텘(u��Q�{��4�j������js��ŻW��7P�#p�D�{����=a��sBZ�{�N��B��@<���t�l�j���a�P΂�1�j��1 ���5.ۦ�4ʟq��y��¿����� ַ���6��d(�2�.�Fk�A��a��h�W�����w�����z(�Py  ��������g�t{��7��Y��g���Ѡ�~��|���� �b�d��G�ԇ��T�H-�2.�|��X��~0����0��5���%�(:�6�!/��P1�+�s�8��@9wq�)<��D�q%u�ړ$���?���H��� b^���N�q�}���B��L��U������	q������9
�sr�^�:o���pLC�ҊZ�v��x���s�(c@L%1�x�r��X0�#�(T��ƌ�va�t���B��rH�m{���3�v�C	�K|����IuH���A�gC������}�\ʠ������-�.�Ѡ��E�c��<��g"���\B�Qr��Aj�.�%1cm��b�l-(枈!]]
��qw��S���_|������{<�7�<� >I���?�N��=���\�7���J���9 ۄ\��t\�a��dF�\�̓(]�
��y�w�}i麔z�b�_��ݵH-���q�ʻQG�ӛd��!��dY�#	�S\��TSȺHסB���WPI�J���Eu��Z��;�~��w� {�:�_�9G ޘ�4�̸"�G0a�QV� �IIl���CK7L�N�F7C�R�+�dbrU9�����]=z�������>LH�&�������.�NPT���*%K���T19H�t�;7�s`ȴ}�zt2����D���6bD�����3������ê_�����v�F�����yt��ǘh���umo������ �k��� �к���R b��/-��1����z%��v�����F�7:PQ��1b�����:Z��&��0*�^�]��F�e�9qZ:��:>�s�m�{��x(ohy� |������������佽����A�݉�60� @;5���vDP�-ن%�p�ʓ^�ͭ�����f����)h�םX�>��A"��ۤ�! �)��!!�b\=�x��b#;x4��|�.&v�x�m��Zwv��C�P��뺲�//�+�;Qs�u�Ÿ���WK�� @��?��H����/
�Жq��"� J�k��ף�r{�w������e[{*B2�(�wq���	�$�(q	U�=�Z�y�����s�=7V}�4���Ns�c���]n����"r���� ��˧7�;������`�QP�~z	�Ӫ�o�8���@C���kb��\���i@(&�H��?���}�a�y�N�#1�uo�>>m>�w��?�����a<�7�<��$�'z�ů<�����_���y�n]cB.S#�--�T�4�D�a>n,�F4J�1�@���!�%���u���=E�5g��5̑���6�*�a]��- �Y�k|�s�ÀM��ڵ��b��^��\p��!�]���둏�6U�p�����E��N��	{7��窎Y0=l���;�S(�����bejw˔��;��/��z�}��PA���}3x� 2e}�)1����:Aj �E��%8b�:�;o�J�ZQ�A\\+���ï�%l<F���$�1��`�����dH��'	���Dm��Nv`�����LcK�\ t���0��K�8���@�q�~�ÌX� &�E����f�A��6��	�rD[ �Ң�)��%M�Ц���������U�2v5<��yZ0�o|.�o���Pސ� x�˿�{~�g��鏿�ɓo�c��ïێF �	l�����LD�=��$��� ?�Q��u�g���^���{�����^��C/�$5*����m
L= ���;�Az���(함w�v�%���L�x�}����kn��N}�@���5d�pP&����s�ұ��U�ML]y�R�_:��hș�l� ��ا0�����f�"��g'��η�G����{BrJB�@�92	PU�x+�~�=`���*�$��9m'��f�q#`���7f����{�H�@��(�w�_n�G��p:z�kש�����p�A�چ��-!Ž�͂���ʥ�D����j߬>�����s��f H������8�)�"�}`l�?�ۿ�����o?����,�{��l�k��|����3���!NǄls���6j��.�[4�o2�vH8׌d�����@~��QWA ���xH���C�&��D!�~1�!5rçB
q��*�Z��;�s�O��t_��/���y�;�M,��ل+��E{+Wd=�v�W���J��P,Y,i�i�	d��\'M�>/�C
��Dy�����߈`��c��Cխ/�����3��-��vuR%��χ[Էҟ�;p����A�dk�NC�c٥ne_���Z��a�����;����<�Pi[���kW��T<�Z����e�X��G<pKI!<h� sŋ��i�|)�����.�u�}2�����렩�HP�2/]U"��CB���M�e&�h4��vp�/�@�n�	8���I��5@�e�X�+n������/��������]T o`y��[�|��?9�>M��=�� ����~��-��aJr�x�!��S�O��;�|N��ަ<k�!�.Gty6�"-����5wW)� B)�?����D[�	�IנEJ�9�v'�O5L��b֥�$T� �8$� p�VJ1IW%�b�����Ҩ�a�����9���u�>�s|�\�C��K�?GE��v�&/�=��I\��L�%���*s/�ܭWc.���$��E��E�J��T���A���y!k�?O��S���o�C?��*%1=��#%[+��0����v2�a��e(�o]9oq����g�����s̄�.گ}�o��NA�w�5p� �~�i[ U#P�ș@���tڗfu��k��:h��a�G�v�8-�I����.���߆��	�	�Y���Wo���"؞�A��F��e��î����Onq?U$*M�����BJqO��'���h(~��h3����=���ng�	"¸���5=
Nq*š��S}���1h��� ��4��t�������rI��`QC��W9�q��R��>��zֻ&P/�
��Op�޶UYj�j�_�/u{�a��0����c�>�TO�f,�P2����)I|D=K<������k����9�)����}�pg�t*$��2��u�!����=�x �Iz����Y3��9��;��?l,:=� D�@4@��z�
Q��ۆy�Av��7&���}��Rw.~�3c���a\6�10�Ĵ�!� ʽ�}W.~�ї������N*`V�����O1OaB
 hY4@�������ѶJWt���	�iE[ں`9�X�E��F�-������?|�_��~���|B�>�#�c)��;���~s������g�?�� ��� � m;0�](1�ԋ��L�|�C7�6B�EsC�
`�<]?��,vx�Uڱ^�~�nӜ�{m���Pk|�w��� )Ip�E��T��#�<��H�R٦���_K�J%nl��,j�kM��U``V�.I@Y�#`8TuT����%x�1������d�拑s��<�u����Hܠ�ǒ�z߽�����f|�g��'`�&ލ�� ��1qQz-�Q��u��4�Vk�5�[��gT=�ioY�Ĉl!`Ma�.�^W<���z���s�����.�g���ŏz�|��v�`�������o�������>�a��yϘ�/7u���bxb�8�/�XN+x]Te)��~sƸ�����~>C����W�H�qI��6[Ӻ�{�[�@�85�`�� ���]��|]����u?����?��_�M�U �P��=�z���}��WޱL�����]��lr���=�s5��h�b�a�:`TB�&郟���k{�����i���I�����5�@9$�@�:��<t`�%��� �/�E\������N��'M6���A�[��^(��H�8ы���}�ͯ @d],ŭ�[�'����d��7ڮ����������l�?D�޺C�%���ŭ��� ��A}|.��դ>y-b��)����k��f|z�� �!����o`DP�������0�b\f���RŠ��E�j��tЄS�|������{�'�f+��=~�'�!V�����L`���v�UAQ���Y��~ �lF�c��`� &И����7�1��Ą��35|�ݢ�J�K;���m�y���%<j� :�s�pc$�x�4�EoM�Ѥ$���m�2&.K�k�_}}�}϶���|�7|�C��_Fy�x����k���o?���C�i<k�<ײ��I~�Da�O0��#��^ $����Rt������=O�z�1~�{�n���!��t=z�Y���@��q�h.Q&�'Q�2��%DfX�E�z�7�@JP�t+�
v�ømR>�\>@G[�ζ��V�os��ӧ�'E�`�Je)�u�<1�C��1�+���������P
��JH�`'�q�נ9r H�,�ۉ=�X$L�>,`�%
�{EL�6f�f��Vb�4bl1i��"�AL��4l\����&��|��7[}&��(������:AD%ˢsa`iZ^���Äv{ְࢹH�����01��"���%��7'��D 4>�W%��6���N����XoN�>�]m�6��W�
�T
l��s���T�/s�B:H���AjLx� �����>�3�r�4�+ ��G޴�#��O�����5��-�?���M��=h��5D*�y�D b�}͖�y$�pYg����[ݔ�/���L�?���A��b�d<��8�X��s�����c�}k��Č����$c��ϔ`�\?듊|��F�H׽��PQX���N���sw̹8A�f�)�]��zy:H]��(/��e�:x���%�Kx	��kR~jĽ�Vˌ��"��{a��?d ����T�1����r�"���^u�����[�}o_�\�L>�vs���?$��=�q2Q@kc�(K���C�6�,ॣ-K�fk����U-�]+fo0EUZ�׮�U�O>g��L �~�}蜸��$�Ӣ��PK~U�A	3��W��O�)����2i�10�."��E�8HǶ(xX������ͼ4ؐ�4�$$�^ �^R�uV�6� �X^��/Y������͋���|�� �Ko��t>}V��.��46H��"G�ԍ�{���� Z��    IDAT�Ī�T���ɀ�P���<��ut5.���@��]
*xb��s�>�u>Ra�T���tq8��D�"���]�Җr�a��D��-��
�F�M�� U8ʫyU��2&��L瞃�\��+�/1��H���ZZ9�s�g<X��4�K�$�B{_����l�:#�"��r��'T(l"Bt�q�[# E�v���}CU�V����X������*�l�,$� ��{��P���Q��pbϔܛ�9��* Tnnw"|�I	L7/p�1��q{DQ�Ʈ���t�t7FM->��A�Tj���w�}(�^�0�e R�72-����ܕX��E�� RU��5�9a����	Sq��`,j�>�&O��:vV{���k���_��q�����P>��  >����k��qo�|������}�i�>�=U�׃�Q󥭁M��,�Z�l� �fd�_��=�XĲ�<,\����������^�%��g�z%��^�K��ه)�������6�p��̉I *D�@DEP�1H�[���J�܀-�ܦ]�M��C1��a���8:h����]bu) r�P�Y��>0R�K�fb�+���_�5��|[�Q��d�Ö�F��.Cܿ�f�S��/I�����/se`�E��+"Qÿ��w:�gĴw���� @��n6�(1�ȅ�F��C̢���Jp���;�|.ಁ�]�m������F��;��s]�|�e)��T�s�ۆ�����i����}�3Z_ 1ς91���C��Uq���kW�b�:�{uWl��F`xYACs9�T��5������~�K�շ|����__�U_��|�� |����7��|1].�9�R_�������K^яC�+��Ի���,�{0`uDC{z�9�|�������M�L ���L�ͦ����#��r��VՀ�٭��u~V?�Uf��})b\�:'L�@�Ctx-���
0��
\��!~��N�ӈ�G���D24���m�*��X����Q�����z8a&�6]�˓�%`t��W�$�[�/	�\,O֧C���IJ#���"+���`�&́ɥ���&)��M1`�ph��i��r�J\'�n�D����ȌEԘ��6��jk'-��x�\R��m/���,̶���C���o^��/+ڣ������#t��jXg��wU5-T����4�Ϙ
^�C�?��%T�zf��X"��N� 5}]���'���|����k��11e��V�ӊ�o V	�A�yŸ�h7'Ȧgd3U��A_`{n=�!t��ֻg��_��o�!�! y>��  ~���׽�����[Ѿ��2U�(��y�4_u�z�ۍ;o- �l;���A. ����Q�w8�230�\K�k��0v�o�9"a��\�4I�K"�L�u��Y�L$��RGF�j�z?�a�Ν��Cu�;�% �*�%y�.���"�_)U�l�jmR�(�.c�\�$�)I��Km @E1����(��V�K���פ��.��nz��$�w�rս�u10��A6$�݁��=�va��ߍ��W ġ�v�0���%�=��EɭAJЧ���5�埂��Ԋ���HyͲՉ�̴��j� ,��m��"��谩� ���4����7������=���sb<�G[��`N�˦��8�"��g�����@������6����|~��jBL'�����Xa��̋���H��y�hB�9��0.��x����7���6=S�h���[:t"`=�������/ݟ�� �^<�����Ox(������|���|���~��~�y�MQ�}jr"�o
��`���o�y2f����h�Z�p+�K��s��\�@��b�*R�Y�"n�q�5O�ҨL�=�z?�{_,yP�ʒ�h�t�V��'�d��$�������r)q�!���+e��|�T���d�����c���%�����|j����˒`  Ky&�+����A*��[Tߑ�;m �CH$\�qyI��-u���͘R��[E̦�v�������ۿl�j`�Sd��Iɐ�{N���Ӊ� !����4J�j
2�B&�A|K<f�P���HHDD�D}��֗�Ѕ�.����ѳ���yL����e.l�]���E��,(�ض�- ���c�RD�L���t,�nAO���U"d����9����jc�1.#2���hHb&�Q��1�� @����ˎM�;<���~������+���
�c*^ ���?zۣ���o Ⱦ����D$??!5
V���y�@?�}��(�A �0�=�G�U?ѝ+�m����n�`����`C"���$@O��PJ|t�Jp�a1�	�$��	��beo]t��k���
nM��"@��@m��VH
k�3�`�ؕ^�}
+����2��^a)}/]}Y�P������O������#�.
0D҃�����)�I�uOt� E5��*�٧�n��&iD��3b�.�<ij#Wsy��C�(3�s�Z��J�4����Ek�/��ۜ����@��nݾ�r>s�uб�Ad5f~#;���HO��bm�ه�!�����N*��h�4IO[��5�;��M�B�Ko@oێ�ן����� c�����'��	�<ڲ�U[�O����}�пj�ܜ-v�Z���nm�Z 2��[n�m]�m{�]ajM殿�6Є�[C�F��x���OϏ����G�T�UyP|��}�{�r"��G�����#���X�,\ÿ>P�O���2��Y:*��8�>�<��1;7p�����h�ih�p�*F�\�JN�I�I�(�q����;����;VQ��y��P�VHh�ɂ�v�8tӊ�zH8�L"��ׄ�c�	)�G%����B���P*'�}��`���K���ۗ���0� Fme����˘_P��a��
n��9G~?��֍�:��E�R���� ���T@���}ι]���c�{��. ��a�zpb`2��Μ�0�����{����D�\}�w��\.1&�e	4�Ʊ]@S#��z0c�ZX�]*��0a������g/��7����эE�sk �9�O�s���{[���{���Pэ�N' ��r	 G�R����n�������}�,�g?��|�v� ����x(/�	��Y>��s����<�@ۦ�G烝�&	Pv��3	N�\2@b�.�dA��깊3+��"@$��@�(v�=`6	F�P���+�k4��Eq���T�������J2�G�D!L��k $Ye9��{=@��R��$���k!��W�P7)Ǥ��+	���گY����zC��;�$
��ͨ
�	�}<Q�)�
��ǅs˥F����j�.��i�����_�`,�M��}�=���G\����R�ր�3�g�Z� ArP�Yt�az� :������
ZWкX�]s45 �¥u
�$��u�,��頶w�/��vZ�1dN34�x��a^.��	�Cc��J��MU]�c��f@�e]��U�ɾ����. &��=�傹�*=��O[�Jm�0�=U%�w�H
�?��~��?7��<�gx4@̖@"�2�\����tҿ��-'�hݮ5,����k��������o���9x(�<H >�|����W��;=��0/7�~�@��Nq��@��Eɪ����~�Ժ�Ԇ��D@m���/�
@�pj�qO�;<��1���\��NP��75��I����Cj�󠕊�N�`Ɗ�+�B��vdM��Ax�r;-�}줱��DWɗs��! �E�����Er����G��p���Q��Ͼ�K����F��/�	(�w�6�K��H Rv�x��?�zw��t5��g��q�߉em�������'L��*�P�H��D4@XҡFed�b��v#\��4��[��:�\Z5���ÿ �C�ݫ��."@�%���i�f�M�0'h�1�	���a���O+@�y�W�[�]S�iQn��͈O�7�}��r�����J�n���b�o��G#��W�[�Ƙ���T�糆>��o�؞>ӵklI�v̽[�A
CC^O0��@��E_5`���a6 �a�u�mM�t�!h�;<�L�����W�7���P~�r�V�P~��'��o��'������34&5�ۧ�z��'Pxd�8�D�NnnHg|�������Hq�qq�R ɏ��nؔ�� BU+ i������A���ЏUm��U-�Ϲ�p�n܂(�1PD�%<y���o����-�+��}[����r�N��������Dh�_��HQox�^��Ⱥ���Z�y�<��j�*�ڞb���$A>
���ED�S@�n��]�S������AJ�Tpe=�B����uɐ�J]�&�SԊۭ�4�{L�'. D�zt<}�����Ac��L��F|�7SX��ִ-���gupS�vX�/�|�}��Sks��ۿ=�t£z����LWQq�E���|��G�C�	�|Z�<y�� 5F��6��������7.` Hu���x_W3��X�<���9�E�����˦�e�D�#Ah˂)�w[�H�,������.մ@Aّ R{���7O��oy�7������P>by  c���~���)��[=����=�o��c��Vv����	S��Y+�qC�y�� *I9,ַ~�F���-���a@�6�K��8����17#$�hB4�I���uh�mqѯ���D�P
8�1*���݀Õ���������*1#F�ħ�����1ڪ$�4X|��_�"��Y2���M�2�	��LP��$������
�	�=r�2��HHH<|�G�c�����:�FIz�8�F	���?a�&v��4�c�}��qkh��g�pK}����5�V ���V�q_���e2P\�c c�so���ƾk�/e��1p��(��j�ߘ�������U9��D&�#-�ǌ��c�U:׺z%́����2�5E�A���3f.[D�&-���s�8=�Q�=@�w�LPr�"���5K�yE[VȮN�mY�>~����W�JPW�*�3C;��L���o�=r.l"h̸��M[k�����o�_���~��/��xyP|��ɸ��۾|��s�X��a=}/`��')���Α�\�p7Rn@*�e��Fe�~���O6 �Yй�ă�2�H�Sr�V���?�	��*�@(�Q,��m}�u��7}�� ��}�Ƥ>����+tc�$�I=���6����S��R���ܮ��z���|b�T88p�د�d���ӑY��vl�p	T!�{9���)fF�4��>E�~ކ��2�.t�ज�	�V���5е���@��(�0��zRc���n�(�@	(����L	�M�d%só䟈���eN��RJ��F.��S�z������㜱�1�~�f�һ&�		�摹��&�B����,� ��X�#�i:����r>�O��7���`΁������>+�?����ڲ�{�v�,X��UsS/�q�p`sQ3ƶ���B@����q^�?Gg� &�' hQk%�	[�sj��h� ��Ό.�W��������>�So� ��K� �ʟ��oyK�Wo�ә��1�F<X�at�����~�;<8�fj��A{1"Nw�NM��V�F@�f��B�8�ar�*a�gL���DE�P�����A�����+I#8����Z�W�l��s�h��ݩ`YʮK5 �LN�7Am��bUu�^S���a�_�v�y�R�y��I�N!�R���Đ6�@�u���b �#��9��KXƮ��hO��Ϲ� pࠁ�`�΅S���6�yO	�4��z�����ܫM0�$bI��9Ѷ����
|:�"K���rN�3+A&�'�ذ?[���sᇯ��c
�~���L����>�Vu�3�����;��뢱��D�73�p{���
���X�_F[�\����P#���mzV
,�`[�&�G���)�ʶ�����S����l��
�5�tFH��Of,�Ҭ���10�u���w_9����Cz�A�P ��Rz��;����z��3;(�!��]c�� @�o	]}m�Hbe�I� (&���9Y&]��Ň߭�#WKA�o20���(e~!1 J�����z�h�<On�U����I��� )�U
JԦs�HBJ"`�D����qc��r]�������4c�s�:wɡ�a;m��]���#��}@���R��e !�f��/�g�D�����f�s������N(�~�#��%�R>R���b�WTb����C�͹���	�, 3����D0e�hc��s�E�$cf����� �1��-bc��v	�B��M���Dj��*�fIs̍������]]�̫@Ʈ�m� Ϊ�w5/�J��>��c���A��d"DlO,S,���cL �>d,&���?�|�ض���\�n��������@k:�1�/��X�؂*i�$�v� �w̻�0f#��.x��g>������ |��  >J���Ʒ}f��7���}�Ϭ�Q�Ͳ�� f�a��̌˳�1��ݘ'Dזh$����%:X�ψ�G��T� ..�J*��'����+a���<�8�{���#,==�Z8� .�����"�ޘ1��`�w�����<�Nac�+����;���7�d�I"�APM��JI�]����r��%s�j���g��������+p�(�"@Z
���T�8���kQ�`���E�}�H}F��f��9���0���&��'9��{��EWo�9�~u�5�GQ��� Yn���W��ۮ�o@��!���i0�0�u+|'��L���y] ������f���6}]Am@.���\����!P_�E-����m ���e��*�����$���C���|���g����l!`]m����V�.  0�%i� n�ˊ��m��7g�i���5�0��.����v�A�9k@��*�$�E!�>^��Mݟ�O���.��w� �� |�"ؿl��imx��&�-�@uz̐�G���}Yp~�1d
�����y�>�� R�e����u�&$L�D92Dn�R���� �(�ކ����+��6�[��9Q��!/���+��0�|�z��U	��$��;��������9#��2@%!%aFs����u�:l.���q{o�-��6R(I�Q����>��I�f0��3����
֐�u׳O ����md0����{<�����j����(�������m���C�``ϸR�e?}o[�y~P�͏K@&&�o��˾mD��s��U�	jF��(Q�E����4�ݣE��ľkj��� `�J��=�Tk
T�ݙ,�ι)��q"��1�o 2џ<���ێ��9�/ >!B{�F�P���.�y�~:a�	l���گH�KY��䑦���Vi��}`}t��|¸����gJ��b^vAs�>~�߄y��Ţ������1�F'$&�|��*�eL�gԾa��<���'�o�����������~�{��Y��� �K����=����������>��ŏ�:J���Q7���i���O탴�;�>S�w���f�:
�RkL�(��]�.� ��8y	"=����򩷈K�t�-bW�/� ���!���s��4)R銘�b�
�[��M��H'�1�����A#3���e��%�����~����s�S���m�ߞ*ڍڪ�"�y�['�>$�C�"�{�DE�� �ׅ�|�}����}{�r�9���J;���)��b�8hs�G6��i�~��@�����g�Z��;_37?w�8��`��;4!�Yb�mӂ��a ��������0�/6�A3�Έ�?��4B�ˆi!|�2�M"��{Q&bY5�n]����q    IDAT�L��1/к���
cL̡Ir��	X�<F� �Pb��Ւ�hqA�='�a>�xgl�i���1���f��c@��Ng������߁�]��W�7gU{2C�o�x{�cZ=C�@�b�\.Jؗ����{z��mno��	XOj���,!  ���tzs�|��ĸ��ݯ�z�� <�C9� �K�����F�[n���9h��-���Ĥ��λ��n.-��n��K���ͤQǶKp��G0�FG��.P�)C�$�s�H �xV�&3����ѫ�h�|�E�ܳo� �f���b��FJȠ>� $H�qA����=�1�pF��1�a���p�P��%"���OX8ǉ�u�=�+�
!���g, �v8�b�-")@��:����+��]ҀH0C���%Q�Љ�aԁ;*_�7JVA���	eXV�a�\�ʫ�*U�[�9 2��Z�{���R � ؍`Y���%C�uOǤ�í�њ��7�MM�w�eN+����]C[���!����b4u_�Ơ1��ݶ�P.��x]ԃ��%�>�m�zG���S��p2C�/�wE?��sWQ�����a5̽����b�\����ϫ���J"�A����:��{��;�z>i�m�n��|R7�m7��xt����xI�aU�>�	)����տ?n� k����+o�X ���
�����yE_o��_�y��?�?pO� �<�C����?����WǇ���>Y��S�҇���a>���j8�p)�}���݂\lO��Hl׌W�W0�K|T.���y(�9�@��޾1��G���3��"⎜�֞� �@D��H<���o�s�A�\���|���j�9�k+~ �oz�6���]7�r	��}c��p,}'\��.�#���F��u�˂�U�2q��W%h=��ܻ��Aꁃ;cNw�#pɈI���R�O����B<��$��ev�8�kЖKf����&�;)!p׵� I�G�h�P�'�2��<���|W6�=3���PB��V��z�x���4i��)߬��5 ��iY���.�4�#�aY�Kø��D>-�����Wy3�#��̙!�M��̘�0�hH_&�б<~j���s]�}W���j\x^͠O=������gնa����J'��r>�Y�B?�XoolcM%�C#�5��Y���%9�����%_2�>��X�����x�[�'o��@[���F������O ���O�ݿ�������7����|���Dy� |�rw��O�0~������sS__j� �ŕv��/+���~�a���DRd���< L�Zh�{?��"�bi%�������U:w���~x"Q=\M0�pJO\q܅X�z�b%�$
¡ � *��A<��wU��?��*B_C�E.�xo&�.9O�#O�32�_k+`ƥ�����G[�65�>�b�@)%B��9��q�z��W��m��@�s����π DiOe��Զb��J ��?Ɣ.n���������l]�E$��#���D�S�2�+T�Z0C�m�� �o��X����;���G��j����x˲�?�����o���N����i�̅�����ƀ�e�0�]	�f'4+�mߩ�	���o�Z
R:k���o~�1���1�]#�=�����L��@��g2�.����Tzps��۲�O������Y-L����2����� vSYΡ��M��}p�4�N׻��W�~��x>�����O����g?���X� �ʣ��ެ��nz^���4��TK�	�*�R����648�	)�W������� �� a�@h��U݋��A��D榄0����$gN�	J�?�DI��7�\[��b�!����
�3���E��e�!BU��/�Tĺ�Fc>^���H!Hv���È��Pb�/@E��}2�<9A�M�b�o����j*`)%����������=��/N�s���2y9(X�mIt�KB܍e��j�'�us�d�J�|.횺ę�x�h�WD�C�Z�����X"��K�DTE�-�
��}`�U?Y;�w�>��@���P?M1��aIq��m����f]Եo�0�@�5�f�O�[A�D�c2�p�/=����e��>0ͷ���=����IzD0�-TM�����1���hݽ�T%!���<�o��OА��eC�r{"u+���@3��%N�x��%c�jZb077��O��n�c�mןgw�����un�7t��^������[�9��7b���?�?��������*�Ǣ< ���{���G�ӯ^�p�\�У�OՕmf�Q�W�*������9v LӇi+E��Q���u�:�\f.>�����XE��H՝��t(@���S��A��:CL�4�p���@�z��z
�D|`������Jg�U�棭ϣ\D��r����iN�Ep�"�&�t�W�N;����G��qP����?�x�8�䜍�v"��|Q�7��F��/eb�i<���uO�T�+��SݞV��
2IO�B����!���G
H,��KbƎD����K�&`�|�H_�P+�a��̦��Zk`(�q
�Q\i�}�ωh1bgvK��?D Z��_�`�ݫ�5 @z��]-! ���`�k�-ܜ��|R�g�|��������&�oT�@��F��nN@k��~؄��w���/Xoo�ܞ��_p��G_,������+��}�^y�\>�0�u�+W��+��[��Hm `00��_�U�B�Ң�^��b�^�t|����ٟ�_�/����< ������j���]�O'�glP���n2��X ��2��5u���VΘíǉ>��M�-ْ����Vf�ϹU����v����v�P���A����1a $�= !1d C3d�� ��#�<@�e���W���=gk��X+O�k���.׻���8���\�2sE�?��R� Z7_H��\�ĢkU��Y_~FA����^�(�#�����k����֬E�@�Ft
�K���}�
���q|ARρ��ѵ��,"�6~\��@}�#
�g"r�!0��x���#Z�<tR����HCg�H"i5c(�+>����Q��1q��r��ȁ��d�gr�}ZҐ��Ɯ�~J��T�h&��8\�Oё[(���Ʈs�=r��AdLr��c~��<�?�^�s��	I�X��X$�t��лc���jmTOeE={�e�ٵ�^���;u&���L}�y�<h킩�''�Um����J�v�Қ9�{g��"��)��~�P�D���d�'��3�XJ1;�t�Bd86y��GYm������be}�qz���q��=�������֍��ir�ɜ��]�G��7���� L�~~�X���������Q���!x�?��R��a���&�y9��������}� ��m���O���N�D�ޙ.T(beHUBƺ�@���^��Er5���(��j5���K��IhW�^݈EV�)s�j��`��0�y�nQ1"��q�R��G�����I�wԛ�H�{4m�!ltc�B�A�y��fsh���`���]�����$��<z>F�B�0��`�F
�Cx�����_R����q�\W!h��6�>�#�z�"��,���~>��v���}��R^���4�`�k�@��O2��3��]���/asq�E�P{V:iF�:�h�lzɑ��ݏ*�Yjd�L\�-�/%+髍&�`eq��Zw.��%����;{�3؞n�66��\"�<��I���Mۆ�@Ms' ���(���8��N�6KG�5�I���������f��f�n,��6˥׊L�V-J'	2�#޶�m]�	(&@����0GL�W�_^=Z�>���bc��֏\hw��*��M"��m��m<I��d�Wd������}1B`5x�����gp~k� �<���R`��+��O�����o�rK�����������>����>�O����c�$��zX�
L�L�̠Xt��h��:���}_�CM�)9~�K������g�㩀C.��y�A.�N;�[R�d���-$���&1a/"
u557n����=֥;����p��b�,�Zd��vqUPWe��R�c#R1/�pHD�ġ_���r�H�_�DoElX���r�!�s���?��2���p($�'�Xa��9�K�1� ��=�
���Qx:���=6v��܏ꇐ�"�88��8E�����>�_mp���,a T����V����f�wĴ�I̡�9��o
�>i��B@�i�<���=eM�����xjn�� )Qe�p�2P�B��V��U3��iՠ�Ɉpi����y.�e�s�T�
#�-�RJl�޳=�p>3�rJ�ZI�{OK�w+כϴ��l�J"��U��W�w�I�Ĵ,�$l���L~��<�V[_��"��X�ߚ1�I���ן�� ��4�_��kx���ú��5�My��y~�g�� �s ~�����/���ӿ�x9��N��!E�*�Me�|_n�XIt���!y9y�t)ߺA*�4�E�Oi�5�ƽ����#�����uq�9���08���t#"��۽�Pߊ)�%�q�X�{�@��`X�6N"�}���ǋ�tt����b;!O`c%h]����܇w�g�pjҀ�Mx�������<Pnב�#�;q�f���1��Jcn�9��c�&9���/��r?��# ��|yx���`!�S3��,��詐vx�#��üK�Wß���`�[u���������V�[9��,�öz>>�qLZ�YM��=J�%r����W��Y}(�e�(H��#�ψ�UI��b�pv��̓�M�o�M� g�K����;�2��gRk��d��ʮJ�@`۩��]��4#ٺ�%wv�SU��V��} ��')!����|��م�޼��Ʉ{p$`y�-��^"��O��<?�K=?�&�*�������?��o~��~�����m��ˏ燇9%���XGrN&؃��(��W��G5^*�­�'�������$��K���0��t��U!R�к'�d�/@�K�v;�����+rj���&=n�\Y��ѵ��r�7��j�(�Gӊ���;Y��U;�h�ڝ��v��0����W�|�rwWCl(X�q��)�{�:��I�<��6��Ƒ0��4�	��NN��߆����[��߸��3ԇ�46��nI�9���h�hG��Ző�� d�%�,��ᩈ������T����a8�?�����*ɏ�.��}>�=�n�!�1�3����9��yr�~�2�l-iU�6C�e/^*�@i6R�s��}'�2��4�,�CN&�#Flɞ��Wt�)��:�)�����-ŕ-�Pf�ֿ?_]��r�5�ۊy��k%��4Ϥ��]��}gJB�a����B��j�����.^��y�׏�z�l���	Ng(&�Sf������d����	��{�?���?n���T˿��8�z��8l������L��o߼��nޔ"��N�KRЌ��
��	_�U�ݣk7�=��K�L�� ���rw�ۋG�=zr�ѵ�[5���2��0/C��$3�͛�C:<zU7�0��?��z�� /�b{���rQ�Kv�цq��A�_���������M8��G�/�Yi�"�n�,!g�[#jN�9�s|�s���<&_~��H��i9` �� ۿ���?ѳ%r�&B�H��eD��+�(��:�`P����D�A3�ݙ/g�^
�BA��n�Rz~���hi$W��Q�=���������uBl����`���I��K[b*�RU�zw;��wT`.�nUSףV�T�G���=�Ak��OH�Fb=wro��6ھ�{���S"�f{�7��SGctߐb�����\�F,�.���q���i2x�r�W���0_ �@��������}m	�[���n�ȇp  I��=翨������ ��n�9 ����ﾹ��a^x��;h�i���JPRd*ݹ�%���D�=J�ť��F��@��J��!�Pm��&@��Ђ��m�m�GV"�x�ͥ���"�	G��0r�q�b|�Ѿ�ʩW#�| ��A扨�����-*�N��ף�ZGǝ����ш��J=K�"-DͶ�
j���?���+i�;_v�0	1��=���� #bW�8��.����V9TB�;�b���w{{��^xMHw������wˠ�F����Ѿ��>/>��l`/x�%ݸ�4V2�F�F��4w�����/�Е'�=w�*v�f3v9���I�Љ��v�@��U��%�f����1!0�Q3h�:㥨��U�6�9��w�@��H4#۝����P���~ߘ�	YfS1�=�?-������W�R���u���� +# )3��ǋ�)���������+���3|����Wpz�OA:�=��7о LR��L��m�䟻q����n������?�����ʶU
�����)#u��7/s��۔3�j����Ԫ��hu���B�f���O�O��gu�;���h.NJ����0�\���Х��(gk�Ӫ��F�#2�ɜ'9i���6`���l���넡�a��f.֭�C�^�g1�kD-���rH�00i���@��e���A����w8�'Aƹ���E�$����()|�=^o�x�_��P��H#�}��x��\�K��Y��h��;2�ya���V!��xi�Q��{���y7�C��m6N��X�֌0�c%(w��ǥ��r;���o%쪗-�77���yUF�t���_>�=��;T�Q�9�U�T���l��*LZ+z��f>�Spe�i�nU����׫ ��]��ފ���SԋA<�y��	k��֘.�����ILa����x���|Z����S�9��J*�P���ɤ����p�O���3��gp���|���|�M@ �Av�>��(R��o}�~;�� ���_���ʣ�?��������u��I�<Y�����D���WZ�S�A�%Ӳ�ֻ�����oiFn_2ҋ�=eP+MM�T��Y�����ë"2"��L�HM8�.Q�����}wh_����ᰪq ��4 �a,�=
j��́:H	�CD�}�s��6[�;�S�)�8V�����E�C��~}b��*:Dl�	 =�Im�aw��(�3'K=B?0굑Z���$��y�:�c�,���%������n�����c����sp0b���p�'��Slq#��s�,��T���w"���L;R��Ͻ;�Qw��j�32x2�����(�~��)ź����8�9�r�S�ibF�S#�D��]͑��9�L\�T A�ɴ r&ͅrZ��'����	D��ž��;Y� l|"a*����p��hc\�bk�T�	к:�X�n��z�s�'.��A����/	�ʦpy�@k���n�_��>|�P^3��?1���@�+V��a �P"��A�-ܾs �_��_�3?����>��\�P�u0G �iR,�f8.Hi�}��`���싈Igh���la�v����K{F�1jh��Rԙ��]�Z��*�v_��W�,GC�lu��f�m�4#�(������s�V-��Ƌ*sT�Hio"�P��!B��øiJc�$'7�2���(�p\�5���蹓�{��-�ѱ���F����c������Qn8湛ЯU��pa���X\���j������Qo���)������E�%W� �9�!H> ���ƫ�,(9z )xt�Ü<;���t�0@뎭�ٮ�^*�u3�T��h��B���`��U�c�酤 �м�ނ7t�[�!L���u7��� ��������Ɂg���u���<O�l�m�n����{Cɖ^�w���yZк��@(h/�j(E���v�1/�q��\ΔR��W��e�LaP��������D��৾�|����|����%�x惈�헀���qn�9 �����ӵ�3o�<���Q�MWT�v>��vG��r�]o]    IDATw,x��{���3�%@G��@��'5:�g[,�bѾ��܁Q�$��H��[�#"s��G�0����ы��fC��ތ�ԙ�z��1��I@rA�Ӄ�o�pqg��v��|c���3��!{P��L|<E�}�Up����#���IV�u�g���׾��EYYT����ߖ�v#�^���v���c���6�qN�W}��0��D� ��2Ć�Z]�����Q��a�ݘm��B�����1Аq� F����T��l>����;���k�qN�x����'��_�e<ˆtLx�m�Ą2�RU��E��~��ȁ�5C��'��m��|t����d�Y7w7k��@�(<W�K�X'ÔH����w%���#��O��Ճ#c�4��uM�,�y2G��(����M�<b��߄�`��'�� ۟��&�w pV��i9��i>ў�w�}�TIbzJUw.I}1���j�<�h�F�,����G_��a�h��j�ﻩ�T�Xn= y��ѝ�O0$�Wd	Ȟ�G�#r���b��0$!��0��>]3��G@zZ�p�pZ�w�U*��G�PØ���7��m�<i��Dy$��H�u���K �m��;Hi�W�V��;7@�|���5���=D�8���q�'�d��}��eǡ�O��w��љP�E���gF�����O�wiJ����p$��k�F?��=i��y���{8J��h�t�1O[3��=� %w�>-��WkC�v�Kp>C�tIh��YsGU�&�$Hun���l�>u7'!�B*ŝ<E�ɫ�6{Fr�E5�L����g�Gd8��Ҝ���َ���`JX^?����8�4��i���'��������k<D��?��V =b|�ʇ$*�����n���^~�o������Y2��h��i�r5&n݌�5ں�U���=�tv�J��S�i���E���I�m�%�"�dC�h�ж��r�U��~uNB*�"���t��@wya�~=a���a]�8�=�`��nR"vN����"� �H��
�O��"�>�Qjƨhé2��	�h��VD��p|\ZN���!�.CD88�F~ȳ���/���/���ш��kG��)>��������:;Iz��xN�OnQx$Q�׷����p��I:A�A	t@�?��y'>�����5��S��.�+=.�6k��U~H�M�/�/� �A��si�H2�Cu��Ie����mu�@ ����ҹ+!�՝��,Q��c:�˥0-3e�ا��o�}��Z�P���/�e.�H)�eF׭�AQ$ɖ^��H��|6	���������<���m3��u���~���@���? �W?ȁ���G� ��?�G�7���o�ߩ~�,,��)�z���L�̨�lK���O��ժP����LݷA�M{��EYD
4
���0&�=R���VPk8"�� �����R4��u�'gcІY�S��؆��Q|�W|u�}sBz��K����-��>D��6��/��	X�#�yZ$q�ke��2hVv��E���>�A�����pԲ�*�B�ȍat�1�a�%9v��]ݡG�GT��n��aT�;0�`�y4Ώ�T�g� V�cF�C���p����ϵ_�@�4��D��H���z �ig�c$=5�B
�~���}!�ޠ�{����Ð��U����A2��9z^�7�Qd��T;Q��/M�}^㝅�mƚ����
d?W�]q4BS�L��d����=�cQk��+�y�`c�����̝�ԟ}��%�r"������˽q�4O�ya�������f�I��;�%�����?�t�5�@��ѾO�@��W���Rd�k�`߶��w ������2�����}z$���7���5O�O�h�P��;��B[�N�c�Zi��<�.eF$Ѫ�ʁV�/�Z�*�W�il� H1_�ޣ�����
��_7�$0ba���w�WsZ$��0̨���\ER1��}�qU�[I��p�ULPE��}3<6�H�Ҥ�-Ms�R��c|�t���A��Gcx�xH+��+.a�����2a �y�1���7u:s��"Sw��e�ū��A3����a�魗uD���0o(`�!�K���a��;�:k?6��yq��Q���[�*��P��bP�F��p��@��%��be��xo�������u�;�쎘����ԭ�S2A��ݭg'-��kk�T��	I�}]i(Ӳ�@]7{G����5��"m��*p���9���]k��Hb�{9-��v7���M}Oո�)����|�j�.6�<����r�.Sa>-�ӌ������������7K�7�
�L&��;'n��|�ʝ�
r��7��	�	�V��U��[��W����mS���,��>������䖸������7�ϒ�?}���.6]{ʖ㯻��+�
y��
�-.O3�~G]ۛ�;QJ��ڇ��Wua�hus�=�t�\>f�������2e'=��g,
�n�u�HȢ�v��w�@��F;_F{ϔL�y1.���j<e0�I��}I��Ѿ����:&��CЧ#�����.^�2�J�������@�Sܱi��X+edT$�5�J�����w�̯��:RØ�(2X��п���ԯ=� �HcxݣF�K�ciǵ*#u`���'WG�3�q�A|��:��]�l^���K&�視$w6�h���ttb<��_�f>�3y2nM���5��Fy�!cBvԭm[��/m�m�S������{�QUPO�4��Fn^�S���1�Uھ!g��g1�dbc�������(��")'#�-3i���ļ,��T
�'��O�X7��90�Wx�_!�&[�cn�$}�j��i6��4��ov����;�� ��_P������?طk�� �����@~x���g�dN���?����̻���WZm���Р�lH�{��К�gc�"���X��䋚�׊L)�WD��l}"��eG�
�=�d@��آ][�$%ϫ6�WvYݾ��Jt�:`F�l|7�h��"*�<vX�`�a����P��,�A �>��(L�d��4��DG��C��ɍZ��}@��e$t�B�X-j�����O��sRo�#�?�U�px�����T�#};�"��j'!��؉rv�_�u{�Nt>v><�p'?O�~��=�C?��!!��ƹ�"��sƸ2�g`���1��a��:����(��ZE4�%g'������D�ֿ�G0��YE��u�s�yЮ�컋{yEAΝP�rb�Nѧ̴X���|�������p��~���r*�������ٗB�-EP׍�v�d�-g������ٻ�f.����pz�XC���j��<��7֨�t6)�Z��/�����{����/�;���6m�+\�7��M|�zsD�J��{���?�@���l�9 U���,�3��3�g��-�^�Ų���λ�?g�]ٞ���� ��۶[9S6�Y������n�R�͕ SB�݄E\4D�}��{����S6*�nh�2yӎ�Z� �����*]�7�^����È��������}8݁�c����,1� S7����ݻ�Ĭ����!b�d��X�k5Ó�Y�;]�N\/��F��e�k����-�·���Ec�u�5���D^��4R��^��ޣ|���;����F�?�r0���0��� $��c�6���Y�kn"����l�n��/@r!{׼>ۑ��y�~�υ���p���r�^\k�j��V]3?%��1.��}���p%��U�l1g��mJ����db?�V��	�f}^�0��P��	8�O.�����~N+��T�2نX���jC��2q��3�\N��,��� o_Y���NC��閻�hNp_���C�v��y�hE��7�>��'H�O�7�	� 4�+LO ���s�l�H"�v�ߎ�;�� �_�'�Ly|���59'��#��
O_}�Z&�9���X]m��.�&��vp���������Q�d�!��b���К��3h��4���d�0�"�DS#����
�3���w�"��X�è8���;y(����*�^�fx��c�- 7����!H~2��h��<��
�q�؂�����h<��8��_ϯC/��|^�x�w A���1u��kw��:���F���J��CQ�K��p�:h/���w$J��@|���W��������u�qT,x�HD����}S�S\P��j(Y���"��(]���M����tP��[�օVw������c�����ur��W'4+�4:�MS���R���D9-�i����:�������O3���p&?��ׯ�࿺��G��gϙS��d����U�O��g���6����m��q>}��|��R�����r���(�t��`ǲ��O����������n���m���m�ޔR�<x�j�L��{�#�z˲$������/����/�??s��+SJ���hh�����@[W/�$ϐ�=���3̱�{	�Q�}�y����Ì��V�vWܙp�`�	u�\c��g���|nw
0�����Vz�ܡy߿�K��z5n�#�L�RDia�%fG'D�Y8����v��J��̈́��Q�tM�5u�B��H�Л1�>�n=��RR�"�c��(�M�U#D�!�ql���D:b9�3c�[uC��3v��GƋJ�Mk�CF,o%y�} ��'w�#I"�b8_�����I�fw��E�z�H�8g���۾�Z��Dg��5#�����$�O:�iU���7��ԛ��{�w��Yk��I��.Qw����� ͎��=��j��94�=�k�nJ�-�m����J.���N@�u��~�x���/'�<SN'��3��+���i��8��O������Q��O
�npu���l^�_�s)�B>=��=�l-��6VwV�'x���?�Ύ��m9v$ܰ9��{ￂe���<�H���s >�����%�ӈ0�/+��	䷟ �GD�ǜ9?<���K�������J��/���>?�=?��o�V{��^䊸Q��)SuC�NJلL\��W��%���	�+���ōl��n:v��Ӿ'#� �6)�ˢR���ˏH�c�mCw/�L����~^���I#u�ƹ���ʫ�Ց�q�^�^G�<jw��#pW�M�S�Ώ�$G��AI&�s@*�P;��1Ҕ�`֝ 'j���W�v^u*����Qg$xZݰ+�#:�Jxe��P]�w��E��@�[0���{�8���c��R�8����)!�YD,JK���k��9 	\|��y���!�GGs I�y��ҿ��+�d�Zm"lI��c�F�	�{�LG����d��9��r��ښ?��������sG+;��fʡ@ݫ�t��e�}��������#緯I����x�X�^,ǟ&�3~s �����NO�����/ߡ�;rߐ���bi��<��7_?�7�����r_�� 	No�R��ZnY8 ��n�>�孡"�?MJ��?�c��ot�� h�nwN�W��7i�</Aǂ�p!Ӹ��<s�\8=>�^�y�����
tY��7I�EL���c���qLPƔeq����-��<d�(��1��t�E. ؀�#�G� ����@P�FC�"�m�4�n���e����>���pmpK �p��X�t�ߏ6m�JH�z�r=�Hu���	�j!������n�E���i�:x��/m��Qџ�<�A���t6}8)Ѿ4u����1��_LFG���A� JeD��4����@��D�a�	漈}4�X{/	��%n��H JU�i#�d���F6s[��Ϟ�0�M!��⏚�vǷ��$�c,t�&k��q�꒿ 4G�*$%��V�~��}G�;�mߩ�JJBY�$�V�j��!��s�Q�_[3��u5b_.H3��3�^��F��L���璙.�o^��y$�y����O� �3��3���x�l�MF��.pZ�ӂ�+��3���y�������P>��$p��?Y�Sws�;x�
^���;�4�����:)Ftl;�+��[�t�dQՓ���1^�7�}����̾^>��a-y�Cd�zv�y|^&8_H�T+�V�Sa�? ���D�6D/v���V��O]WZ���b��K��͌cC��geyx�s�*�J F���ʌ�e7�__,Σ��Eq���1��s��w�{)��1����!�� ��j�=��-����a�ʃ~��?:�7�	�S7=3�'4��߆�������
9�"�ͣ[;�FO�Z���8H�v��;��G���2^\h��Z�5B^7�����RRo(�������Cp���~l�(B���$��4��SU�Q�%:�:�&ѵB��K���I��9#%Z�z�ߎJ�X���/��JowC���C��^s6D��<��N�Hq�HS�Znj�3���5�65c��{��<��DΙ}��5�J����&BNB�v�@X��Jʅ�rf:��׭ueW�˥��	ͅ����G�W�׏��0��M�lZ��?c������H`��,'#���fkEm�Z��(�U���8��7�����u�?���h?����!�^�� �ٌ�b������
�Fo�q{gh�gx�)�W_"y�w� �/�.����u �k�n��������#B���N�+�b^�fFӘ���3�L�Z�֕2ͬ��&�骂�v%���
_���nQ:Ğ&���D(e��TA]����A��2��a��x�F*&ԍ�ZAѢ�A��)�}�ȅǋ�#mFx��٢����X1�͗�呏�SX�8١z�]�$��/?�u�N��h�N�52b� $q�H\"R�D#Y� �o�f.��KZ��G7�5'�a-���ӡ�`���F�l�a��M(���:|�`���!"�L�0��M���W����؞���_C/�vD���&�P�	�ފ:
�D�P�������Y�q&��oͤ�[3CZ��^u8���2D���b�ͅ\,��S�Ο�P��"|��z�?�C���x�/�x�9[E��9:U�U("L��t>����D��<q~����1��������l�f�1����?+?:����`���I�G��r_�#p����	�|-`�ma�w����D��O�;6�]������[X��a]��/���R%C۬����g���`]N<�{��uy��paߚ�cv �J�V�����^�t��3
9�gF��}��n7�5�˅�������ue]W�Ӊ����OOl�;�L��B���׫y�^�JE���o捃9��cH辺�-`��1���Y�>� ��04�����5�����!�~n5�C���\��L�۠��A=D��4��A	Ij{�ԍ�v����u\W��틢��$H�A�/��Y\�*����'�B�CiqR�1
��{+�^��Bw?С���t,��a\i�CLF���Ѥ�|�D;����Mm"��A���5:�;���8+����T��d�5��/�u����1)�;)�����I�#��9�3�9�Irwj��g��W��:jT��U��Q��=%A�Nb�i��}M�%S��r>3_�� �z`~����D��r2�*M;k�����^ ����N���B��m��~�J$�o��;x�#��l����)i�'���>�q����*��W�߭:a���p�|�ۈ9��O�b�e_��n0�My���[�|�������\طv�( U����>{��ͮw�#���=n*{�r~����}�c���~�e���)t-�yf�ߩۆ�a�ݮlO�iM�};d�v��)b�&�u��-�?�[rվ ,@��Ѐ�d7o�ҷ2�1���A�s�?�ɢ��NS/!�1�s�1��i��?�F�n=Fρ0��R�H���Ԁ�{�oVd`�#��vm����&ZG�/"����#�>̗�:R�Kkև�����:d�$;q��Q=�=R?��wd�^���zp��t�9��w��q�탞�2<�{nѺ�b��6ԅ�Zw.�TF��EEE�����Q�Qs�G�q�p�;��T��    IDAT��F��y0�;�ksJ��"��T��'@M����Vk�Ɨrf�vڶڣX�ω��wZm�Z����`y�e!/���4M�ea:-,�L�3�Ù��9�F�Z`��H� a쏮�q-������u�Ɏ-�D�J��wD�韈PT�$��w��&"$����C�cF�b��2"�>�'�͝����~�w���\�ְ��p��}abF[��R�I@�_'Xk�/�Fk������:���_���?�K��/�_����Dl� ����W�̗��׊ޯ��H�wc]��������&�X�����¶��y�1�O�Z���3�9S���,&�Y�m����OȺR�H�z����}s2�����z=�m�Y���(���4ѽ}8t�F�"�:��#�(����K�� F�ܪ� ���a�Y}�>8����9;Y��a	��s9B���E��ٵ9�]�J""x��
���b;���u�K�k	��H��^�aF�~o�JN��e\��y�Q����>r�����#�j@��C(Zǟ� :��{pE$�����ꟸ�3�J�
��J wQ��@��+P4JV[���<tg����)�{�������]%S�imC'C�#���μ_����8>�u�i�R��h9��$���u����ݙ�ɐ�y�i"/3�<������tZ,����4Of�N�����������"��R���#Ү�?��ɔ���R!{c9����{z�j����P@���MH�kǌ}���?����zM��f�_�{p���lN����C���g[�.�$����W�D�u�����*�i�)��v�����>:@-�+�����#��e5�%7<xzͣ;/7۷��7oXoW�y���'<�y�4�¾���"Ô3�#�����v�Q���m�}g�^����W��w�\�/�ڢ��	{$+� ��,���~�e��+��/d���/����bA"V��|8���wN��~�y���_/�R@�A�;/���/��2������Ӣ� ������}4�9:"�As���y�[�p�4"�8�� �.���ů#�!}�C�B;`��*v��G�}n�� �Yx��]�����q�)P|�����C�>���j+��<��cӥ.�Q���Z�Ar�*�\�V����9��QR�l�Duf���_�آ��T��$UJΤi6®R�lW���N>��/3��o�� �
M
�'���|b��Y/�XNf�<��K��?�#�b;B�a�����>
, L's4Ni�)���|m�Ҍ9UxE��疎X�x��G�~�q/Rg�exҌ}�dM��ޙa�v��#G�|3�b���Z?M����e1��v��%���i���f�i]m�QU������I�ܔT�v��Z��>���s �A��ڶ�s�.��_˱`�d0�n+m���������F>�|ත a��"��z�e���TL�{��וu�Y�n7n�޹qHNS��f���z�pO�'�3�d���_����r�I\_@zӑ �I��cxe��@q�)�������s#��/��?n^��	��^��l��Q5(�<}J���?�tw+���3'�9܌x	^���O�㺐��Q�Gψ;E����I�ϑ��C���wsr��x��0���c�S���"��`��Q��nx{�_UT�=�1��E:!�~��L� '����2"���uys��Ͻ�Q�_���_S (���n�r�50]�19b��~�Rm��+O��G'�y9�b��9�&(�Z�����|��,��ss�!w�%�uk􆨍v[�}/���WZ�t!�3���t9sy����B�g�i&�σ��/D_�����W-�f����3(A�H�N�_�Dн��I%[���Wɉ�4[t��%<T��
/�nN�쓶�����]v�/�f�zo$�p�V�;�"I<=�g���Av`��7WkV�,�vg_W�i1��;�V5�Ӿ{���yW��0L�ʶ�O��_�k���+��_�1: �p��{{y|e�S�z��<��j$��e��\����
 N��Ч�&�Z���>j���g�^��2���WC�m�β6�D��P+�,2�23-n�[u��``c� b�G��M� ?J��Y��&��k��^Ap(�9�.�i�e ���n����вܥy#* �ؚK������>.霃.FV)�D���#{C�r�Яo���ޡ�1Q���8].َ@vIȑA,s�#������zy���#z���4�nD���4�?~T���q�c�tIΠ|� S'[�f@�:��wށ�.r�6s24�y\t��K��hWA@��Cs|<��G�u$"ąR��u�)e��'`>͞������(�+s$�(�-��t"M���|25�iY\�ߡ�p�{ğ�zQC�v�����%��'J��TF* �@m�&�r"�+�;�m���.Լ�Zb������͟�&),�먯-��0������-��o.�#Շ6��p5�%�}��ێ\NV���Vt]�[7�}%�3�|�6�Gw��/=E۪zp��{5	S�\D��������{���'|�����_�?�����{=�{��J{z"-3#�S3n�>���'Z�yvI�W���r!��v���?�Kl��f�����ٰF ���S��������������F[�E��j5ͪP\�<~�&>ue��i-_d�5�8(=�"O��vK�)הU1�z-J�� �X�|�{T'����&���ύ�/�Ԉt=$�֍��Q�BB8��pf��ۡh�z�,�ȅzq#�Ģ鈢p{D�]v9���]��+���/���n�)����
��f�yP�r�+��X2���kJ�q�5	��͉�I<rv'S��;A���uR8U���B�"�^d�H��yj@�+�Jk����;�A�e8���J�7��{����f ����[ip�MC����:�����R�E��L9�Yxx�@��^%��Yf�����ߣ^b��j����L�o��E0�_x���͎�I�R�S��ξWs���Y��a��H�
����i�ј`p���0~5.C@�`�=_��o;L�xȫ���5xZ�ֹ��^�&K��{Wz�ڨ�τcc��;�bN@tE�R�{�.�j^N�E���i=�7|�G� ���]�����>=�ߢe��}6c�/�{��s
㶛��(�n����JJ&䋟���ƶ�X�o��s)���Vn�B���T[`�gOK��9���`�Nm�j�Z�6�j����oC|��kݝ�o}U �D0eT̓W��z^�����r��:����D��:�����:���0P���n��"�G=�VШ{sc������%��t���f<T;��A���l�琀a��9�ޛ�Dj��	�'}%�W^�����5��2��Q%��@$"z�Kx�t4�t�Z�`�ZptEL_��ݗ�עqS���B�9��XY{&E�K@sW2����9(A���~Ѯ�NUJ�a0HF�%'�� n0�9��d��M}>���S�)�d�Y2�2C��}e^X.gN�y�,M��U��?���_7)� NX�^��w��a��ҿգ�j�!'���Ũ��w�t%�O0+��f5��vs�~B�ߝ��t%�բ�5*�z������v����ݜ����LB�u��<`I�:�T��J���y%Ծo6�٫�j���Q?* �c���?%����%�_~����|�!�/�U���땺�lﾲ��s�Q�Wwo���E<��N�JVf�M���m3���DZ7�q��*����Ӊi9�m�h�N������g3��X4YM�8��Z+"�Ȃ�S ]�K�����y�$4э-�"b��ES��оw��<�H9T-�{%r��h{��a�j��=�����7z$/D�\Txj�	v�Sa��G�6J+
H������t"��><����`E]�_������sbA��C���	h�]<(�o�S\�������ç8M �hWF� =t����������Uw,�ǇxC-q�ʅ�chR�9�1?n�H)o�YNW��s����ګZ���tHA����VS�je*��i���ɞ'�{�6%�BgΉ�P�,O���g����Ҿۻ��:��,#��ݼcI]�����w�o������6[�j-�����;��{��d�WG5�h�DN��n�����<�L[a7dt��@/�VmS#�ӂ�;R�-������$)Q�}ۉRٶU���ruG���.�}�D�ʩ�N��W���~����~��c�-~2������o������}���Ο�������m���+�}C��Ճ���ܶ��`kkl�;�����IRϛE�?��g�6�Z-P+�i��@��N���o͘�aT�4�O�C\.g@hm߻^I%�����͌�~���\@I�ǀ�A`ٍж�;���3��4�P�V��p�F/W��n�a�X_�-p�������^£���{�;��?�1��Ď|_ N�w^��"?��slAVG3��~��v�߁� ��h�l7x�? ��H��
��W;�8WB"r�Ɣ����o����<��}��G�)�p��t� ?���0�CwF\0�%����}+Y�D�*�p����&�hv�)�ܮGqns.�sk�fƥ���Z	�7r䠩��<۵y�.ѝ)S�f=j)%w ����D�i��N�<�Zcӊ����v_�yg�6[)	��>mA��]宣�|E_�h��0T���G�t�B|��� ���Wc�kJ�ژ�	i������;?��&`d}P�5�\Hb9ym�z_-�)�~)S鼑X{�)�de��te}����1ק[���J��~�y&�LM0���Q���v���l�;�5�fkmu*O�=u�j1�|w�Qh辑������������r ����7A��?���gh��|���ow������bJ|�fy�V����ve9���;�2S�����|���l�ۼ0�N�N'��iķ��ζ��u�`p�1]P�w��,g��(�D��d0�Z��l�mC��6��e�9m�[UA�������!_��dDDG5r�bp�r�|����r��hzÝ��Uj%ս����0����Rd�]��ɻ��[?ϱ_=)!��)=�7�>/m��2Y�l�<�	�'��!�h)1�).�f���Ut7�	�HO�#�$�e/���!�O:;?`��
pY]s4߫�N��xq���z*����9�H��/��a����2j^���	O�����n󗜬�Y�d]󨕜2Ͷ��3����U�Rce�����͸�`��ڹ���H)[$_�����L���tF�q��4����S�19'�����FBX�}p�|L�<њ�E,���T��}
��zT�рx�!І!o�	�`������[G�rNLK����4���8��$yoH�lH���J��u6\&�盕V.�Ͽ`y8��MG%]N�۝���
��o�J8_Φ�r]���Q�4RUe�����T
���D,�t4P@rf�76���ۺ�;��5�\��o��O�}�����TU��_��S{�\߽#�»��r��M�o7j�$�����Ja_Wھ��ɔ���l����v���{��۲�<�sε����\�պ��mK-Y��{|��V;��"&��)S6�E�o���AE���.��ą;���LlbY���HĊ�VK���s���{�9�<|c̵��XM���.�>���u�k�1��}�`��꺡���Tp��F]W��R&�Q3	?u� "h��ۑ[����Uu�&��i��=ǚ����#gM�Bc��yluC?\0荳6&����>��p�a��)��q�Cx|J�.x�ok�`@��4�A>������Dc����GkVqD"�Vy6^���y��c��������d�nHus��̃�)oѓ�ǀ����
n��L�qL@p��	Ȁ9����B�?�����v�\�!?����`p8?�&����e��<���K��vb�J(��T2�м� ���Ozƿ�a��У���D�<D�C���Jq0�?���B=�͙��H]��C����c«�ȁ(�$L���%�r�4Mn�5�'	r��iG�Ӭ��k�c�c�!j�ރgy隒1��B�R!~��!�����������Crg���	����!�W_����yD�(c6�VQ�m�2qO��zm�c��`�����ro(�<��ty@=m��)'��5���m�L2�e.�3+|RI���Z�[d�
9B����TSm��-��ޜ̸5��V�M��Af�P�hk����")ؓ�z�$ ��܇�v����9�s�|���u�A"u�h����a����n��[�z{K�	����YJ�۶�5�} �u�A��֠���ͳ
��eYP��zcI|�c��
�z���k��3ǜjc Oz]Hܶ3� @�7�&��E_x��&mC�Y��]^��gᆟ��t�,0�}��?ۂ�(�2U�<�B�D >��g9*�f7��ms�̜O���{ ie%ࣁGrb��Oә��NY�}!pD��ZD��rG���y˨�c�otP�M��_���`|�w0x)�<�8-��#����eF;^+���J���	u�#�" zf%�d:?�o>S|x��|��{�H�$��=h�g�-U���6^ 2���ɢa�+�>Ep��4OH�����!���V��r ץ�8.�G���ZCnň��k%�Q��b���;�z+�5��B�QZ罥[� ������=o%#�e�1$�Zcb�U��[l�Gl7�h+���!v&%S)h[��m��Ns�gI칗B�"�!O��q�L	��e*�w�oe�x_[�v{D�D�m��F��N=�P�\����P�	źU�	ݹU�	C��]��uϦ��=�[qy��� <)�g�g�{tU^�\H���)L�+�8[C;���C[�4_0 ����+��PW�L��悔c;9�$�����AA�V��9'@ī�(��>~g��7����RhR&$���m �F4[�.?T�����hy��o>M��@B��=8=n��2����7��F�sV~� �������g���V�r���<ރ]g����}uz�٬�o���Ur���ԙ/^%^���o���*��AV�Lm|f9Lz�@D,�B�2�~����"t�!v��o�kd�I�Gʯ2?j_'����R�' @����/ϡ�g�ęD0~��t��x���׭x@_�zv�C&�����t# g'���E�lp���ೱ#	ݥ�lI�W����<���-q9*ܙ�2�O|v�)�_� .�("������A���yI�Ո�W|m�R����o|$�>���ҹ��A��e�x����Z��'�Ga�����&�}�*^�Ǐ�� hmH"X��g

{k�e��E,�7�03�kGʇ��7G�2�	�g�q��a>�����Lb�+{j(��K��ly�i&R֕����] 
EJ	�u�iCG�v�7� �i<��7M��SoG�����-��5����#L׏�9c^.�p}�xo7�= �ꦭ�T��a;ޢ׊2M赢m��9�:4�� ��Ǉb:<�W��B�S�@?_�am�,'�:0�m�񱓛@.��*$!%��3�SJ��V�>����8�us. � I	d��-��^ٲM��iT�>�� V�n3�Ξ`Hoc�hA��7�<��W�7�^��������1an8���x��m8ZT�����L<�y���q��F�ţ��2�c�y�4��H��{��O$iH6�����^O"o��� �H��1E�&�b���!�"���VC���$��ϳ �KI.�#��Б�M;�[Km(���81�̜���P�?;�9�D8A慆2���i��'�<���O�pB`;�x�'燘GKND�)�� ������A3�0�5j�������vZ6��9��*s�*q��V�Iؚ�vT�����DO�p��;��"h��o���p��*��2M�9��:
a�p���JE9K��X4��� �o�V��6�꘭"fPS'�RّܩƾIf�    IDAT�K�ef^�49!�wX�P<�um߂�K ����B�����)�e�l�_fHJ����{��X_�zRg�Xo�� ��̓����R�`�52��0U����N�K)!UJh�V&C6��mc����sg�����A4�\v��Hn	y��u}S���9��(@��Q+��ꙶxl�\�*��UlT�1y��b� �Q��tG�o�$X�1B�XZ���n������� �p-�'Mh�hp�y����t17 <�{ �-�I=�����C9�7�^sY�avFrrm� PW�߃1J87����� ,�����Q����e_ot�d%�v���w�,�!ħr�Y��Ֆ���)�t��ΐ���{X7Ғ1�;y2����
���s�=�L4�IL��	�4C�	i�D�8����.�(vUMN���a�9�@����kb7#3y�a�GA�� i�AѶ�'{�:����^0P3OtQ}&G�rw�F���ֱO��F�?X<�N=֍s*�Fh�w$'�M��e���k��!��w.�hBHCp�po�,��bH*���PoO����O @�h[��ux��/I���i%ٲw&�ʅ;�+U����'��:�5Ȝ�� &gJW����V xS% �WJ~Kγ���"@)�����<� �����rp"_�Ž��+!���|�y>����Qo�h�Ƈ(gl��MP�,tSԇ����̓@�жa=�
��V' ���:W���,3�����,!��b.� �	k�*J��!-"�Ap���h�� g� �z�$%�/������P}c���	+���� ������˝ҞP�$D�!Ov4B$��<~����p��{�c���l����8bd5���!���U��k?[�U1��w�>l� �G�#���^���k&iI�"O$�y�L�'C��`Ü�y��	T���)c�v	��L�_ [��%�	���
�(�b� ���(���4���L(���LJ�y)�;`F^X��L���e'ު�;�����T2Jb5�n����nK�d�����ZCj���~�C��d��`�P��Ѷ����EJ	�}cE�Z�9��|"�ŶU��1M�Ǯ���z�TP��	�"��������mM`�� kE/�۠	�łÝ+l�#�֐��b�\���.�)�n+��ݷ\^ Apzx}�`�e�qE]�1Jks��\�n�����;J���琔��������4Ar���U�f�>�?�'���H �L�{!g@Y��=����d�� ��g���Î�ȏ9lO	�v:r����s�r�d�	��Ú{�-*>E[�Փ��!8V��xD�%������5z�����}����k ���"�Y�|��^��.�����sf��7Y�`�n���u��O� +�I �-#��� �ml���Y%d�9���_\8j���x�l��\�$�s{_�AGHeq)f�;{?%7$ *���8���H��� ������(�	�A��_��8�i��7�]���@�<H�>�ם�,��	��3��
�n�kގb Vs��ϟ?��7�j2~��aG�/ K�g?t]�O@�V��>�'���}�8/@��� /����[ �#����ީ|h[�N�L��i�]GN�g@�����ˁ�$��u���FO���4�;궢;7I�ҵ�9Qx� /�=JB�!��b>��1S&�m�Xon}.	P�y�?K�Im�d�}�ۆ�5�^����D$G{�nUN�'~�����]l�#N�+b�us�'�Z�OzWT9��{H)�����W��nO4(Z&z�L�,���)�#��y�H��gN�5_�!&m&3L�ކ'���H  �S��S$V�;pɗ�df��.űR. .@�	���(���2�T0_\`��$iܤ$���@�����f^��և��v_�#г�6�Ag���^QVc|���mn�&���%���l����	\�HomH)�<|s$!��V��ִ��@��-��P��z#ɪUn�~~<P�YKWX� �o��E�����<="�&w�rR��B:ew����Z�	^ ʲ8��HR�t�� �'4"nڃ�t;G����Ѯ�8Gۡw$G�Lu��䉆
� �,�?��~��F7�����$@x���,�_m�(и�<(��t��qe(N��Нː#��ց䈍���lG0��-��HP��J�K>�9�add�{�P��	(� �GN(ӄ��9�%#;��:(�л���)	.�r�Z�;	M�e�ݰ�h�:M(�}�r�n��,��ΡZ���V���sh��+I��a!�x�C�Q��gj����C+	ڨ
j�
����-�üs��0�P׊�F?��C�F��i%�nH69�_1����2B�v\ќd���������ѹi�~�kC�&\ܿ���)h�X�o����[�Q�G{e���>mȃ[��k@������Ǟ�O��>��z�$ ��ut��眲v���C8d'�,3�nH)c��t7��77���̇���sF�\�m:X�f��
����y5z��T�+�OU�,\�"8��4Cr�l���|��DO]��ʬ��]ȅ�b!sd8� ��W�e�ƙ'� �h����v �ԥ������z��*�b>L:,�cn ���$���4�;�R_�=�$@À��t�}�����W���Pk߸�1MP���*h�!$~�J����5�
��`���8�~I�j� ��=�i"a�3_�;�$����;��K0З��H���' �}������$�>�.*�P" P���œ��I��
�� )��$OD�n��@��s��f���<��P�4Z@��x��mĊ�9B$���l�����j����U��A[O8B�sF)�I�r������Q���������!��u�2����9�~a�[ە>cri�=�I���2�(%��Z�hG�I��II�����-$��#����u�׷�I�2H���W�E�0������+�<��Vȵ�i��վ�Fg������SBjD�C���۝6���H�CVJ���/_/��כ% �n�<9���x����]� �l]��}d�)%,�����F"R�}�#@v�ՙR�\�<�ln�+��>�cc:#����z��O���2��\�0��@Q�%{�;tl�d0��$*��sx46����ь��3E��*�:��bBaH������� p�5��4��J T� M��5!נ �Cz�8��1�<�(�����!����6�q��sF�,2����Q
��q|;�>�E���!	��92��	4ዓ_�Ch{��O��G�	��k��	����ŏ�pv-��x����-��3�G�=xn�#y���s+��x&�'AhI�߿+%�� M30�Lb���ؘ��0�w�%%LS��l)�>����G��+ϝ��.��^TrFwd���A�a�p�1�����trD��VF;D��r]�^�T,�y�.>�pS'!�����T��^:ܹ�uZ�Z��Oo,Dʴ�)J␤VI��˄z\�ݭ0%��qU)o*�N�~�9�w��Z0/w.����z{D�{���=�&!)�5��P�*���{�D�d�l���u�q����*�$(�߃'��fI ���ϥL�/k�G�p�����V�o��nn��"�L���R�E.�X�� ��D6���T�j����`��f���(�)ωb3�LDƈ`�Y��!28�7GI�\O����`���ဏ����,�=���4˘��*=�]�^�6�'�i��'�W躢�'B�-b?w>S�;�?�r%�� ���k��Xp4 ���db^��A?�!�ոW�!��m�}��,1����s{,i��C}���j%�$.[<Z��h`
{���d`G�D�Q���m�����I
L�q �����K�D����>eoP�`�X�H<��S)��:R)�dO,����D��RHB�I	�($�pGɨRU;���d]�V����j�d<P�S�i�F;���7>��y� ���
���1��oZ��e�	y����u,��iH�z��H�Ȭ��F2�[�Cj�N�.
 ����T;�z!$�	0߽�*_Qku���*��z<!�r�Q�,��SQa���z}�t����6��1��%#�����zRo��H�S���Ŏ�xDv4V�A 6��@_IB#R����z�$ ��vq���_�t���}�t��gN�/�����p�����"��A��pu��`��U�pH�v�`��c�3ʨ L�;�U!uC���c5SJ�QK�U�4�&�e�cH�@&0�|(Xy	4��G�$���j)c��~��wɢ�8��/Q{�x�-p�֨�RlX6��H��Ԋ��L�_�>&WL�	~�>߇'`�(
0���# ܷ �w\�h��h�vm��/@�|}34%_����Uէ*�����yQ�S�G$�1�A����)� j���%�@��?�~W^Ļ��{h��CZ��f�6<ν��8�����wU$�'id��7��]� �T��rFB��É�%�#�KRm����{C�0=�����0��{�!3^mۨ���R��[�Ԃ�6h�v"���!��i�vC5L����
���+zA��`����f葘wV�ڽ��ꉾ���/%#g&g��:n�<^O�k@pc@.C_Ip��w�DzW����B3�e�J���<��u�.)��J#���IT�J�|X���B[C&S�i%YZ�{�J��8�a��:r�d�Ӷ:PA�ܼ�$�Zcx��۬���`ƹ*9%$�)$��_0��כ$h�u������5n^y��-N�׸z�i4��u]�{����c
����e��j���b�g��!�| .֔�p l[�&<g�콾�qlzt�e>9��83B�3�D�/N��*�x�AY��{����x`��=Bk1���}�G�"�+�8��]<��#�r�B�<�M�5�ވ��a�P)�4����� �P����{ ��n��٫�H�"b�D )�P��̉Rc@���5	b�\��*8P���RP�B�ߛL��:��,Y���{����ĔE�M<��X�ǝ����HF�I3�
i���Ȱ�����������3��U��?2�e&�B���z���a�+=H�`����s|���v* ���p=8��:��!I$��J�����x�����y��������l����a��A_OȮG�m��$�8����TY�j�KL`��<�nt&%�V�gU�6G�ܫ ]a��./ %�f_�z��o*if2�k�S �6N�K������^���;`O�z�؎.�h��9	����̗�>�F�
�ꊦD��h��
��{b#%�䌶��0�H���S���^���zGL�Hc��<�F�,�5A!�v�o������������c�$����������Y� ٴ�#����b;�`;Q�GB�Qa�@�c���|q�&��UL9��md�)%̇uݨ��
IՆ�G��x����4̀��A�0��p�
!��n�^m�r��QeyE�B��Đ^�� ���Yr|pC�L�o�W�
C0�u�{T����ľ�bT�Y��ۄ4h��R�(�u��P�Vw7��@
H[�HC.�3�e�q|�(���R@%�x 75�1H|�Hzd?7?�
�% 	���զ�Q��B �`i0���S<��o{�''��AI�9� #6i�9(R;�$����v�!)��?�v��#1���P���P�p�_��WJ4~�{���M�	��$��<S-Rf�2C�(9O(g(�iG���w";�+ł4�yu�ŀ�E�����}=Az��Bﰺa���W���&1os�m��
��f��v��`�B,��qř3Ej���r(�ֈ>���q�]@�nq�a�~��3��{���n��HJ�����T����!	e.�nO��?;sڡ䌲LXkE=�ߟ� zuɝ�zm8�a�� _I����m)o��߇��)'O���Fb0�<E�����l���1_F{PRc��@�bM��%�I*d�<�M��� ~/�
}��~����΃? Xk�7��m'4��7^�b+���4V��a`�gM3�y!��ŀ�A�`�U '�E ���1r�UL�s��4q�߲��h۽��F��3�wb�=*MIFe�a�a�{낒��m��rf/�w�i�}�I�[��IG�hC^7���MJN�FH�h������)LF,L :Rk�i%4m
��ݡj@~��`�����ڢ:v�<�5- � !��?��)Pos�!�0��h8���T�-�Z�*��Y��!	o
���﯅�cpX�0О���H�`æ8��k���{����g�âX�\ V���G��n\��^
�k��E�	����8}��j��14jW �i&��,(��p�T&�dJ�<i�������z���N��V�w7�b���a8����(M}D iٿC˺�+_��ӴC�j 3�4-$���Mʉϕ��C;ک�u�}��ry �>�m��ޜ3d��A�ܢ:���#�����d�3�k.e����E�Sь����;ݐ2��Zя+z7���L)�a�Ն���ֹ���Iȭ������,b��b:L�S
۟����N	v3앙IL�#�fr������E���e�8cB����zG2����xB_o� �Z����H�9�h�p|���0��"��Ƥ>f��M����z���F��&+R˴L��!���͌�~�Fo3li���:��\^�=�
�9�ol�nW܁��%l#���k����w�o���j �`
 ٲ�sC�EF��x�����:���Mer����0U�m��2%�꽂v�s�����Џ�ǧ���IB��S���W�0O��� �s&���7Uh�����@�aI�=��5��Q�/\����d�Lv��c� ��/�
ƺl�4�~{7@xyƭK~���'QʏOu)��M �#%��?\�q,�ϱI4�q�
��Q�����B%�r��h���>�H17�k2��0�rL�	k��H�`]�O'Xc�K\Q�wR/��G������%m�2����9OL�j�6A��<�I��2�,�kr)h�Ơ/�AN�L9�δ�l��m���B���6��c��jޞ�~0`��������p|t꠶5����jRg���j�qN���0�����B��q��O���\|r�+�rB.�I�ݥ}28����	҃��,2�y��g����"����� ��x_o������k�)� `ۆ��Wq|�����y�����F�n@� ��ƓK,��[TH5�~�."�G65�V�Z@�G���zu�*�ORNc��A�aU�~��>�~��;��$���~s�l頻O���K��=�}6��\�;�W��qG��IA�ң�F9*)Y��y�<����sa�+��F~ozE�v6Mn��HB	X���>���"2�~9Kdζ+3WWx`�,�n�CD��RsAl�9�^9�{0�'�I$yg�}� ��.��1��ə�  � �v��ƒ�ҁ �D�"i0?D-~�¼�$�+\wd:�n��s&�Ԝ��=	P��cxU*R��'���+�0(�NV�$B�;�����g�¬�c\�5���@��aJ@�$0�>�{v(���!k�w�4ꁱ����*.��<��?�V�>�I`]�����;�nb����vD�}�l|`�\LC1E׎�hE.�'%}��Gkf#P��6�׷0��5��:�l��ċ��Y�x�_���^���y�٘=@ƾB�6�H��ӣ�C�*�N��̸xￄ�}_�sZ7��~��?��O�?�g�D����H��/fI��H�S)�s���^vnJ0�6��?z�?�/��kx�^O|𙏾(��>��g���*ӭf�^}/�p��U'�t��FC?���RvW1׷n'��8�~T�!%��E+��Qfg�����I9��F�Q���rU=�7�4x 0���^�&'E�<Z ����0��z��3ta�n�c�q�!c��88�o(������ ���k�x��*����V#�Z��G)�~�?؄#i��,~����    IDAT�c��t� ��b�@�hiC3!<���KB��K�ܮ�#�*x���g`�DB�9�	GD�ǟl|N�L�U�rL���~����d�t���\&n�# {��Y�?������]y�1M4��m�74eH����T�v�	���τ��E�����$�m�ЎGG�x�U��� ���D��t�`��Uz�L}8������{��߃���[����h׏p��������o~�N�7��8a.w=,Ю�N1������G�ԏ�5�2�ﺻ���?e���0����:�W�	�w"9�~�Q���V��%w��NL|��)��x�wn�^�F^�$r��[�����ɓ_>K��π���������W�緗>�G�������+h/~
i޽-$�a�Ķ#׳�ޔs�t�[���J/f$ ���3�+|�_|CA�+���' ?�> ��V�����zOG�����k/���憁/���B�7�"|��*'�M�GX挾VL3��u[a@���{i��Qƌ�� �v���QAo BҞ�ؘ�ep�� l������ �^S�q�"�u��b�8ґ�Nt�6�J?��.&�ŹG0��%נm�*7� �W�'4ra��;O
�كl���oq�B�In{��N�$�$Oך{Ō��]:�!` R&�i�=������_�֍Uv�0Y�PxP�f���}L@�|�%b:�ݏ/<��PRA�F"���	T-qɛ��G '��r<� �~O3x�&�K<�8C_�,���=��VF���������DP�b��݇bA�%�ԏ���g��e�Q���J��9���A;X�6�!���hGUz��-j-�lE���߁$Ww(�ӛh��_�;��p���W&.�������}�#�OG��*8\Pi �ZI�@��T�cÍm��ɘ�� �a<�4���� �ł��0��۶�m�4a�X`M!E %����
R� ���-��a61�{�%c�<@�gt&��͉Ɍ$Xr���S�rXp��{X��8>�a�Q�>��u����[��K�? ��>�g�}����x���^��{� � t�1ι�����,����H�m]Ѯc���)I��K��	x=�	�����<��G�|I'�}ƀ����~���)���Y���P�aX��Lq�p�������2ǌn�#Dr8�9���*�P[���Ű�|�L��?H�w���hW ��R5��P�ȳjD�J(��;̠�� �����5m�<`�"ȇA�J^�C�AHp7�U����a�=� $�Es�l�WOX"kw�)���DA�	v �B�_(7���+%)��mT�y��v��><@�6�����6:L��F�:~��!�1m1�2�.�� ��a)q�{�kq���t��SAz� 0o\�W$���_Ҿh
�S�<HTq��$��G�J�5��N��|�@Y4yq�9��m@����%����k�H��!; 	pw����:�O��z�^��1���E��jm	5�ߩ�֕���T!9������O���p��;�}�w��G���h�)P7V����-��+�iۛ��� 	j���-���$���{H�����rJh��D�uCpک:�D�޺�&w�;mt2uߓ�V�7G��BT�̓�H�,VL���K�Ņ;�38�G�����s�ik���u���x�u���������Ã_�<�տюD=,��+Ϻ`��ĝ��*ԛk���	�L����w�ޯ��� ���+�q���՗^����Q_}u�������[���z�$���GEkƌ5����5����D����f�!��ǒ���$/=��}mh�r�W�s]��=� ��݌Sn��,%�'d���`�e���e�w����IA>��=�(s�@�]
��k?�kCC�C�n��g��36���Q}{�%��	�p��L�b�g������1��,��9��{�ލ�:ׅy �������}��@>C5ܯ@�v����MSr��sx޼@��[H�4I���#���T:J�	��^�8P���Q�^�9��٨���N�t`�gK��A��!�J�MkJS*3�r@��A�˽AsF��RJ4&�����5��aE�9��AL���q�9��ǣ��}��چ֜�ɑ�\��X��Eoe���o�.���q<������Q*	�����.�	3��W+�X���9p��B�""��t���PO�'5\���b:�r��h�c�k����Ep|t���P�&.���z}��39�K��grj�|y��F	���!��qE�'G8;BR�$A2��~��w���z��w��>|��_���gq|��Dt�{6d �-���`{�U�
G!����[���[����O|������O����q:=@}��:֛Ghۆ�����/!�K����uw��ƗBb���+rQw�˃0�[	�jG�v)�8�k���]w"�����96}s;�ir0��r1z����{�� ��P��i���sg�G7X��=Б� ����g̼a�-z�C	0Hq���/G�^��_A�\�h���E��9��*7������'�8��,Ej͕i����ѫ���N�_��ܛ?&�A�3+i�4��.Qܩk�0{T�!̧�=k&�*;@����L���0."�#RI������`�^�"K�j  �	R
�|�w$,9��\E��V��%LF_S�X�{hG�t����Hz�)���m'Xۘli�G�&�w:*OI�3���x[��k��N�lT����Ɵ�s?�C8��_v�z������� ۊ�E����t�PV�掃e���)M{�i�|�0��%!&L�G��sA)4�)SA]i��J&:�6JN�� ".E�Vq}ZQW����Ӽ@s y΃�T(LPs�*gH���P���fg��m�H��T�'��Lq���/���1��_��NWw����g���~�gq�_Ü)M��9����Wq|�5�mZ�[�&>��w���S_��_O|P��:��[���vB{�zln[%C4�M�;c��L��$Lˁ������Q\&�{ k������A�����[�Ȭ�ǃ6Ĕ.�+Iz�x�����l�9F�`$ -q��pT�沧]*�A2�Z� ��~�
�k6�������Uh���PT�[\�oI�^�p�=�$7��Gx��R�f&H�{պ��:�x,��;���?��>e��#�3CL�H�<P[���Ŭ V�A��ŒF�v>��ȃ��I�Ц�@�+�$�[����3w�5Ь����e�b����`,Lp˅H�C�0pm���Pw^B�d4������<�u�_j��!Z5���1�K;'N�3���d��+&b��Y�y�gG����Tʜ���?�ZѮ��?�w�[?�����s!����/|����>��+�{q�� �D�ZWtO��m'�����0�J�e����i�h��M����hS4�Q�>l)M�2;?�S {S�� >֗:����AGV�-�L ���Z��RNhnv�
 ^�@�
������=�g����ַ�� o��o�ų�ħ�����fI(P����p�����n=Bm��A.5��/|��zC_��z��vs�5E;m��#LN.� �$AZ���x��w����m�s{�F`n�6sdz"4�0�XJs������r�,�J�!�<�C���;��:�3VvyF�����6� ��&D��h#�M��H��t��lOb��$��|�1h]�\��M�-CS�f7�j=�j����P������9����b�av73
i����H\���NC~g$ZW��9C?.���q����BzG��ǎ���Do�NZ�^��gX\��>�y����m� ��$WCX6��I{G(ɐ �����,*�������̤D7�2!�e�!T����d�w:%���ޑZR�? ��u�|�7$�m쿇f��s@���e'	�T�z愾1�i$�4�ə��b�&[;�v�kލw���;>�}�ˎ��n>�/��O��b�k2�\2�4�R�	�W��9��ng�OS���Nt�u�K�W�foqr�O�C@I	V�O�.�NG���t�.�����L ��p��c�5� �S��2���f`IDQT�0#�L0zS�LT=�qb#I��������˟�4�������]�g�����?�����ſ��Po�"������^\#A򽹾������o苾�^O|�J�o�:����涝�^�4�̇٭m�IG�Ć��iuC�8ij�L�C��Z�ԥ{�?��( �.X�0�<�h���rv@�J�Z���
p9��6weR�bQo��BIOJ!�B����u]IxS���mu�Zp���)���^^T�{��ubd��4HxC6�2$�� H��}���V	S������0��=��p�y�H"�O�]c R�]��k�͂�V�l��'R����`>� '�
�S�~��*pe�����O���vß`	�{$�+���0J
X��.�6��HQM�5?O��Z��ՆD�#g��8�0S�'�@Ԙ���
u,����?_6nIAv S��u#!�	�%4�$��_����b$�zf���5�}� �E�N�$=�����]/���1�������/|�S��� ~�'�׳`]+j��9�`�r�q���)3��T����N�m�Ì��urJ@�L��mݐ|8N<�T7p�V���C�j�Ȓp�s��G��U���1Eo2TrBFv���v���2��W��ND"ISrgJ�*�@j��W~����M<������O?�U_���\���(�����O���?�|�ր|��q�$���^�[����_a�'?����(��L+�v�S*$�ٍ�LT��eY8���w�C$����x��oW��#7�\��S_���z��-�2{�6>4vF���Y��kw"R�d�V}��	�t�q�����m'7�Qk&6��<�Ԋ����K����)R]w87��$*!9Q�sA�Ge=JSֿp(�Ĺ�7F±��ed���9R�J)�L>*个���;�X�2��d�Sݷ�mJ�д���Xg�#�y�bo07u�Z��'�������+�ӯ_H2o"P5nVF��f�f���y 3 ��)1' �& q�7A��!���D��A�	�9#Oi��ߧ�V�0���F�5�;�����1=����H�������z�ٟ[��D[����E�G���7�d:�Q�����կUo1u���ND��h �*����Z���������_���G|��i =ɌR�>cJ�L�qe�j�#	�	��z<��f��&q��}\�.	h��ݐ&��<���ڰ�V$lkC�&��;�K��J�#�P\,�u�5�5��&���i[��U��v�8߹@�e� �OD�{� 课���������?�o���������>�4��'p���2��Q����&���5��'���' ��ɒ�nͫCp#q?l��l�1{��Q�0c�Vl�[�R�q����b�����:rRԕ�; �l�>Ӷ�p��������&�39�g��A�6�m�n+Q�3�����$��r�W�����k�hX��=,���'Hx��>-��,ȣ���\=ɉ+Y�(B�F�� �7; s=��̓ ��?d����x-J�3��Fe����ju9���s>8�7Y��		E��!�Ԕ Q Ӧu(�@h]!���S�X��� ��#��CB,����������b:�~f�����D t�H�N&�u�%'X�������[��{�����������޻_��s�c~�)LWwƳ㸷��pz��}�E<�g������}���6H�ѝ#p�B�-q���ƕ3��g.~-L��a�D����BeS2�߅#ߝދ��;?���������O������/|��RG3J�e�8��9',�	�ѫ[�ry�4��[���ɓ�� ���6O&�ƽ@�Ίi�! ��a�ܰLLf�"��#I�t1q�u����ôWzs��H�b�
�e"��(������ӈƖ�xl^T�W̤��Bu1,H(Y�䌫i��:^��?���я������O�I<����}���/ԀO��O��/!�aV�䅅΅�\�D����_q�'>x���{��v��n菎�!�A	��u�Y�MB�
S���N���E.��\���6��6֡�~�h` <UڎR%@�������AHl[e���mh�z:��+!�Q��;�_�,��gG�f8��=V{,Hke����i�P��`K#���ţn��fFC��Z,�<T�C�������R��GG������G�F{"��Fz��@$�ը�
�6o��������ZT�%e@�K�����10���;�ɼ��ʔ���HQ�oap�HrH�B�a;�݁��CNL!�f7�nA��~�.�#������d�@ɫUG"x�;d��Zsb`��'n�����ߏg��[��7~3��{�w}v%gL�W�.�p��x��	 p�ҋx�[���Gx�ÿ1�e�(�̉��Xtd��jwN�����gd׵��Vٟ#_�W�~��#?��ח����"~�'?���2�x��.3��8�N)XD0P�$d>,��	%S�Rl���t��B��˖�љ�0CM��GX��d�0�M�4�a��sݚ���E�� ���r��� M�o3��*�h��rƹ0 �%~�lݨ*t�����:��h1��9�WÜ�%�/�����O�6��#?�wӷ|�{�5���0>��~
�/}*,�
V�\��Ƚ���� oN_k�؎+��	@�,���+T��i��b���`�;���фC=W7�`�r�����v#�2��ֆ�V��CkC=��w>��Ͼ���	u�o+���I>�^E� x�=��x���J���1v�j:e��S ���L9+ޑ �$ �'��H�l�
u�B�c��M�q��ǩl^����DwGs�<Gp��6�t�v��(�$�6P�da��&?�D�v��,�m��ӟ��Pѝ�%�ܔ&Z+N���S��l�Zh��wX��@��1�аC����9�.�cl �"�� M %>��o${H���Ԙ �
$>Q��$L2ʝK��ۿ��k�1��������p��sx۷};>�뿊��ݿ���(73�`�k��#��a�������PA�<Oځa_|�]/�=?��o(��C������2~����}$�)W%�nθ�nN��	�,�sF�	���T8�W(�����]O($��D`[p!�WG����\�*"�D%�p�{g��z��e�q�\����b��]�aA��w^lp?�����I�6G҄ɫBQ��v�$䒀���N��V�2JL ^����_z������/���7����D�џ�	����sҝ<m�\��佞�@U�+��0n�C����i>�7��[E�2����O݂�TêW[�}�:Vo�*�-�Zız<��4f��tB�̘��]
��à�: t��?��w�p�?���^�'�<9jc�'��q~yl<F�Dx�w�V��	���c���`-��4���Zh�l��ra��Z7'-����� �vxco+$/<���Gy�+jP�e��X,;a��օ9�=�3�R3���~�n�d���]�O@DΞ��vft�;��[FEd"D����!6T,� �c�2�X�tO ��$o`.rv�b
 �Y�doEG
�� �~�wᙯ�����wz�Ww�|?��������s�a@Sd�<��cV|ь���KSG+������s �Kh��^��G�7�?�+�����~���! .��
2�,�Mw�	ws��e��T0%A�"|�V��:4�����9�����C=Q�	����u��N$��D���GȉΑ�PR�1'�4��P�(𼩡��L<�tB2jC�LL�tiWE��-®�.P�Q�Į��yqL�W!���
��?�����A���7�^�����؎G��� ��C���@�(�R��������R���R���z� �DiS    IDAT9 4���}�y�x�[�&����>>Ƀ� ��ϭ�a�T@U�Q�I%n�j��{Օh�҂	��rmu��!���k�eWq&�e���9�Q�7/	�$!@��o0O�1���pxbbf~�D������v�Lw{l��6`���C��zX�0H�$z D������=g�2�Gf�}��uw�L�*��TW�����k������D0nm��+�h�`.g-8�'�qDtЫK�4�XLg�Nm?ܕ�m0�JЪ&g�G�6Yٍl�̅�מ�f}����r�OԄ�nK��G�&��4gHJ��`�FNb���1��?������"~�xX��ȵ�՝�<qj� 'Y�"�"��)���=�����т��D��
���L(<�u�jܟ���p�9�=F���lIGT~����W[���:�&��C"
�M��fL�$%82 Ɖ�g��x�k_g���ů�O߃����w�\��Z��"yg��,�qJ����q��T=� (�Z�H���Z�<�,���/�o��J|���O��{�}��g�:1v��9���u��b΄����XROI@U��A��%9Z*R��<��:V��%0����\�nm��]�c�^Kb�u������������fF� ��:Y++��2 J��-����0��#0UںbD
�"Q+��Q��U%iF��Z�s��q���q����#>���]�~�����?�d3����R����q�$ ��+����O b�u8�E�59RE��e�b֌0r���!����Z9���9�	��� �Z?+ޫ�VTJ)AƷ��U�[�U*�6��a#�l�@��'b��F;Y��Bޛ��Q�N������X=$/, 'Z)ȃ��Or�Hx���W�d� ���>'7i�mp�=/xB���q�v���oI� 1�G��� Zp�9���(<�G H��!SN̈́�Rj�~�Z!�4m�Sr��	��U��)�j�~e�GK&	�5b��`��ao����lp��Fa�2�h�;|�ՆRD��p�>�3��A�:��_f��?�խ��_�0�8���~}��T���޺�C��!(>ǢI]��6�׾W��枳q��~누�Z
���O�?��xz�~�߰۴�vq�z"�&ź
f��'B�	@����2  ����>��ϫ�K��a����Gd(B��$�q��苵K�k6v�36#��̠��s`Ffmτ�u��	2F�B��VQ��Z��)����9A���ն���K���I@����K�3O=�o�?`8x����G\C��x��}x�+䄤��3A���*�������km�f��h�AD�r�n�V����N9�SR��"@6�K�6�k�����lCIE]����0'�T|�I��H.y6[�c����Iv�Π�jS��lfl��LE�1���D��'ԀrFr�jD�8�,%� ц�H�MJ�z��; +j�p�%�M��ؐ/hR,jA�x��p��j�Z#x�݃�
�p���ϰ��kř��h�:�Th�ϊ���b	�'ИnЪ�֞-x��تbj:�)�������^o�w�ȥu!�gGm�M�0&IPv儔��N�
O �h��-Q��N��>����JV��-�G�1�H�_����I��ſ�/p�>b3+�?��q��~�x�1<��/�+Fm�ͪ� �zUG?��i�?&$$t��u��8���K<��o���|�Q|�S����'�#�
"l&�&��ݳ�f=v�gȪ�@H��``BU�m�q� !�z�sg���r�4����rDJ	�,�T0,G�����%u`�l��v�����5�À$��L�6��(@J�Z����'��EE�ɉ�E+\ �#e�V�Z��f�aF�������s��l-V1nWf$f���#��	Oo�w��'��qч?�������}�<�O�y;�Ŋ0������|��	���W7b�-�P�����0XЬZ� U%� ��ӼJ���~m�|͘�N���ֱ��x��Łg| �A���Mtk��q[[��z��	����l69!u���6]��0��i��2kfp׻}t�w��a�Yۃ�8�C������w��1#.ۊ��l��;�o�AA&�g�pW2׎�{a$�
��{�}��袢c���N^��'�	~��P�.T�|�,�4w��G�rCs�sN�Ơ#��jmHT���
����$��8H�}�������r�ÖJPb&#!%n��B�*�C�M �C<M�Z�k�`�=��æĳ"bƮ���������w����G�{/~��xb�O���1c����=g�s^�N����w��K��>���x���cWf�`�R����5�$k��orc�w��~�����~_��O�֯~Ū�@�D��%l����؝�s�f�a�,Y4���
Ţd&�C�s2x<���e[��Kc�L�|A�a�$�6�}ׂ|�R
��9r�0.mpRF t}�X�A���q�/�����tSŌ|RΆ
�ܸ-IV��6��6�+d�L��:�P飿����Ff%C*� ��`��ܙl��;��g3������t�x�?�[�~
��C�;T���2���/r}�	���=p�v����� ܻ��(F�?����ص*��|d��T  dӹ���`y�  �=�i �S�U� ��CdxD�m?���Ђ!��w�o���M|�viV��m����Ql�KJ�|�)%�O�jǂ���R�R�ָ~&pכ�'�9�.��&�8	Ӽ���� 5[P��� ?Q$� Z`H\�� �r��Q5�A�q ��	�>�!��p+����,�����[����ɗ X�`Jm��@e�`�_��F�T�a�j�Q�����P�����#*���b��D��}��:��v���C�Y�Mp�9/��������;w܋�_��?��:��[p�w����>j����y)�E�|%��p�߂���_굟����췿7�}2�V�k�?h�B�-��R=�T�:�L��[�s����o߄/����|�}C��'�F�ؕ�u�]��DXO	}��YB�dlA��.<ژ�.�K"��0.3�!���a���<q^G��m
�K�*�V�39/��,c67{����H��M}�;��Ȏ��a�`���_�! eۻ�݊�8HN�L{����Hf�Ť�k��:�H
̙�s"�3<=,��s�E���s߶�U���
[����՟c��cޮ�.��R��+V��G��1*n��?�W��4���O���=��lc���ɛμ���,�&2�T��m�e?����X۵�	u�<pR
��t�9��\by� �����u䮃J�p�@�ۭo��p1�۔i֣__Gʝ��e�t�^�
ƫ����M�`#��ل6=6y���֐�s��@δZ�eG��M�C�{���7ށ'/֬Ho}�>�4j�o����J+��q�ن6D矱%P~@��?#�9�e-�:�b,@�*hm(@T����H]o��L����8ڴ�aٜ���8�4��Q��-C}8�
<M�K�����J���mD�?z�S�;���" 0�=��mm�D�l����:��w�#N{���R{�Gwށ���3����������Ƚ?�����F������}�����;��qq�Yg[�z��͓Oƾ~�'~33���S���6�)Uȗ�b~��8�w~/xǻv|��v+>�������~�����	�r��]�q]����R�ZΘ���PuP˟f�,�8�b�W��T�>N�y"�Dk�t���m-H���s*D��	7Q[�n���紪p�9Æ����t`F?����ˇ���{Ȟ��`��p�l�$]�Qk'�%�O��)��؄2�g܏��'��g�gz򞳰��{w`��ۋ�[���۴��G?�Q��k�����cآ�	B�b:w���m����W�j>��)�
j1V�!
ϸ)1j��y��m�yiw}?��~h���X@�DĂWh�i�'�UE����o$1͓�o5/�"��:�\} 
�H�Р��?�W�Di���v\��=9Ȩ��4 ����Z�$��aus�!ރAK�BŜ�`���3O��F��:��t"�8���[@����v6F�F��U��d�WT[ =�wEB��A�Lm^
��.�-���z �߫r;Zˡ�Q2����f}���ܟ���.��Ѫ|�粲��|2^�;��K���~�q�__����_����D���4� ��t>����=� ����������q�<Ͽ�"�s�7!}o�ɟ5�=af@-ȥ�&3(�3�����i�~������k�'���7!�,C}�ݳ�P��I�����j3�
��RTԫm	B�' q>��W��_Ԓ6Tk2FRt٤{P+rD����|F_"1!28��
�+� ���,7�!�ȋ����wt�VZ
O��Ѷ�)����F+�GF�/�~��GK����:��7��ӿ��/^���8��o���^��_��~��~�X.ij?�/�G��J/���ˎ~��N ��0��Q���I$ �iOu��(|O���l���U��0����o���;-�����L|���-�5��!���l_D�)�~�U�wa+��)=$(#�X��sU1��hP>�B�%�ⵖ�q��Ao�����T���ۆ4$b�o�W����(�nh>�(�ٻjK�� Th��{ї%1>GX �2�)1H����Z�� ���#j��ʪQu2�)�]͛����H:U�\)b(�'*R��ETN�CZ�����/�z&KN��q�*�-��EU��W�7ڼ��?۸��IO>�Ue@������a��q�����u��k�#4P��}G�,%�g=�Y��km�A�T�~���3����{�u;��瞇�ē��ԓ�%��ů}H �,�:{=$�g|���������b�o|��p������bN�.&�%�E,�:l�;t��q4uN�6_A���,�d��G"�g�u~�9�Ƃ�K �/��������j ���+p�����
��i��3�i�D�
O*�PX��[�A �=�@����eL �TL��E�F���|����+��"%�=x�cms���|���gѯ�ᅯ���w���W��=x������{�ew��l�^p�[��6�Q�uL' X,��# fT ��-�p�#_(@<S(@+�j)�R�ŪN�`kbFYZ�_nm!d{@h���&��&�Y0H�X@�8ސ��%��l�/f}�hZ�����$C]H�C���iPmv� j�:�˅U��O��5y 2��}R}�z����ńf'K�Ky ���"qjF�-���7U�R�׈��7�v��^���Nf�oĤaW�M��Oa������j�_m$ps�4�A�|�@�Z��H<��5+$̐��I�z ��P���ޤ�q�~m�pz������Z��&�<Mm��N-�}����>��G܂w�t#>�o���:;�="2?��	�]�y�am֛���G�u�7��GU��bY*�{���3��[?��v|���ك��8��?�9�;^52*.q�3\�{%&<�-oÙ���\����W>�ǈ�Ps��]���b俾�z�#���q����92�&@�Mo=v�"�"wF��q@�k�iG �'��+"�q�T�3��88!�V[[����yA&��R >>��\Z� iȫ�y;0�bfTfS3����|� �Jf�v�%���!f'�j��l��v���)�ⰷM�%F�uH����w}�rl�|ʎ�O;�%x�%o���޼�'�6t��<��&�^z��|�c:0kw��Y5�\0���"qg^2���xe?�٘�R
d-�׊q0_~���z����� -˭H}��u(��b��X@k�h$��¡@�:��xc� �X�Ɨz�2��V@L��&ҩ؁o�!R�`Ն�vw7�-�1�[`��ۘ`���X�<��g�}A���8a�� b�a�-V0ed���}��8�0M.tp�4d��V�5Z)N��.�꾥3�_W	z��o�4�0��sa���}Ѫz0�lӑ &�,��L��P*�~?�h�\
���A�#�{0ث�	��'����b
�H�V?�!}c��L�/x����@���q�}��o�s���������Gk�X�	k)a���w���Y��|n	@����<V�v)��w�58�o�)��q���}�I8������7`��7#c�3g��-��l*��y/�Y�86O߳�g���/���ޒ�{����{�e����e�Ht9��3TpP�usN�%��B�TK���q⮡}�'��r��Z��v�:���{����r��d�<@N���f?��/ ��>� �����VL2H�O�'VA1��zU72r��$�����Ψ��27��0��Z+(����c����k؞�𳛮Ý'��7���`��a�.�����;�m\��/m�n�kϔ�n���a=�2�e�8J��c: `Z܄�JE��4,�g\3Y�t�?s�uƻ�XMX�<K�e�J�TX�@��n��Łg0<`��;[�r6��ƭ-�n�[w�b���y���h3���O��6x���`R��2TM�o�F��1�+��-#HlT�:j�Z����*uh]�Pb�H��* ֆ����Q�}�%,������@�.S4�� �Q�w����XX0{�$ث`KN<SY1~&2���$�U�����#�Q8��Ci`�0{K!0|j�r$!��4_�p��K�Þ��'���r�Hg��%�n�z��sj�,�6Ը/���o�z��9`��g�ƥG��졇�O~w���SuƄ9���f�X�F�[�2ֺ��Ǭ��g�v��R��I�3&�8��`����1 �O=�c��sRBrFf�@à�L{>�1<��o��5��w_�U����}�|�k���΄]c�3I�`r� �W�DM��Ԇ֑?kjI��C�FT8!�It���� P';{*H�a����G"�,hrt߀,��0�Ir�:�K T�04�(!�|�jp�F�>C�Lkk11P<A#�x��RA"gn��h���k�FtGdG ��|�]k3,�fx�_ƽ���}�}��v��o}��-�~딺<�{X�1-#v�+�y� ��̳��O ��ZB�3no�:� ��GxА�`��-��-�T�����ĸ�"°�-C%ư���\��#�K�uP�$�lo��Q�և�e�Ƨ��!n4dL��U��ǡ-Ո;�ie���y�	^������ܧ[]:ge�@�]t�A��q4C+���o!��dЌ��1YVJ�|�jא � 5�RK^ ��^��5�^#Ǒt\a���I�ٌj�k^������`E#�X;¼����n\w�{�!d�p��S�7%q8a����6�!,�G�6���hIM��6QKR����C_�_l$I����k"{���=I�;�E��#���8��>�)������&`=YP��	����.cƌ���Hѩ"��<�j$TQ$� у�SF��3?��� '>��>�(�eǳV�l��Х8����ނ����?��nOh=��+1vu	k��C1�}�ka�4|q��'��J`�D������-Ñ��s�a�	2�CRO^��ɏ�G�[}���:��gp~T�����F���d��I��پ~�,
؄T�vƠZ�O����ڊ� ���}��A��&�Thf0�ê�ޗ�D�u`�L?�����QBG3fltu1���}	'�}����L/z�%��������s_S�e���������գ�pL' ,P��ϰ`VPK�c�й�$�K���XDQ�殃�߾��b�:�V�)���g�ϒ�2b8X����bi ��|���R��& ��[��e��lXƈ�X�Ym�J��u%)�V�ۇ
����a����Wݐ	��&�m6Z��VYõ�������� =}�Z�at���5ZjA�Vتd�_Ϫp�Cݡc���Z���$QH�>�{)�����B�t��o�    IDAT�OJ3�5Q�N E��A�=�`�ހ��DRa�7+&���_�����;�{h����+��Db�X�Ϫ�<ϣ�T�ĸ����p��������]�n�����iˤ�����26�G 2���������پ�,��Im\�zJ(O=��u �q'��ncu�0�E
���-=�?��p��>��~���c?����ㇷ߆ �%"�g6��.aw��EϰQ�2Y����Xm'��fH��O-Nd����jN�s���T��^��̶M��{��+�~2�R<C�raո'��d��nϕ��3,`I��_��ǉ@X�8�����\x �+��&�%�P������Ɵ�����)��`ZE�aD����x��ޯ~	'��K�q��7\��g۷���rw���	�=&�]=U�t0_ �Q �!&��0�bpF�9m5�TJP��D���Ʋ��i�d�iȐԊ���#9{2PZ&-����4��6��M��l��v�	��$?
H,���lS9�.fx{@e�E�}�r����H�N
�찞e�9� ��0�C� LZ@B�ح���d���ξ��m�d��+�΋���I#X�AF��9���C`�|D��� !��D��;���13�B�H&����R6�פ�S��HL�#��)��=(��.��vKj�&��J��(>#�ߗ���>1b`�����o�ė�<���;��o|�ϱ���`��f��;%��w���ȇ)��H$�JUK��.1J$54%���}й9�?ƺ~��6
�hBU��}@T �8�C���w�ש���O
���UN��5�޹��aW���%� ��#��8��KSJuTG=qw'RoQJ�NH�� ��g3;g�9�����B3�
·�9�(��aYH��>��L&��!U���*�j�&���,	�4%��EKH�c���0�}�
ǟTqs";#-(;rh� 6�lz���n�-�i��]��;BXZ0#CW�I��W��Ig��s�s��A��M/|�;���/|�.��m��E����˾��{� W���G��1� �`��_V����%�o5}7Da���r@j5�����M�r�>�+�ZQ|0��!�����;��kI�~�S�y�����e�aĜA�&!Z�2�����Vˢ@r7@"P�M%ի^mY���S;,�g@����R5�,܉k����=��x�@���Fw�tjv�q?��9+�i�EM*�=��W�LZ_�^�1�q�s���r0�����ĠV��!~	-зjv�����Q�屵�j<��Ц��hS"���n0Me�5X�lr>n���O�\F$m����}8����q��q��W\���vkl7��XOf���6;#���}�W�a{���:1�@ȉ_D�q��Ᏹq����Tac�E�&��
����G�l7]�|�?�iC��)aW�F��	뉑U��}��xB s�5��y&䯵Z{��sH$z�y9�E��2"��%&TǞ�T�1ݢ��d;'ۚ9�'�Ć� &����6���;���U�n�Kt�����d�8�B]���P����≜dG7 ���Y
�*HlC�b/:K&u嫈���S+�ZK�뀮C��ja��MX���^�S^|.N>�E�]�����������y�5Z�=;�X*�����Q �(J��?r�~]v�Cx胣�,�.�$���ut��N@"�������2�ꆪ���w]�r�v�f4n�o\l��%�H� x�.�nZ,��0��_Q�m��h�x"!�@C�~4����lm߬L��	I6Y�Te�D��V��V1[�!v� �4�l�q"b��ivK��ĭ
����<)�����֓4�Zg�{����Fy�utDH�aT{74ˍ�'61N�ڏ����V��WL��h�M�E@a��A[�!n
�|ͨ1�I_��ip�J�z�=����g���$~��\bn}�׉6H$
y}�����w��q��p�q�_~��W&�Zb�%�z"ld���9a�2�d��LpX��n��~���Z�1ګAS�-)<�ד?ۇg��9�J�(��pݭn�K��߻s[�;��՟�s,p�F=�'l&�.&lfKjz����_.Z{O� m��Tu��!֒ �\q,�?HZ; �JYj��j"�62[��e
e��e����]ﮞN�.�:V/p���gt���J�I�����6f���:Ȇ�š>(Kڞ3���1�<Z��:r����g�Z\�X'4�.���[�v)&O�����{'���Wv\Og�������~�U�ݥ��Uh}�[�NX�3�y�QO����~�Z���u�
@�A
7��
?t�2U_Ak3�pg��^��[��a	��m�a��	��,��g��["aէW�쇃&��z%�u���p�!6D�R�aa��៯�ѐmG5"q�R]a @ F'�v� )w�2P��U,ҐFP##J��Y����ؔ�I�f0d�BKTT!2�1%D�QJi�5�*�FR�
�1�h�Rj-���'��ޜ�έ�19����:.!˅>���)����P�ੵ�|��Ww��_#�]Wp@%v	�UÓ� !���+����jɩL�NI���p�{��މS߸���������%�W��6�l俔0gBϖ�VO�*J'\Nl��h�ߑ4G�8b��yD>���іi#�U�66q�G>�� �_w����[�^`�k 6�3R�HG���gsp7���g�*R�]ŔH�0�T?\��[;(���!b���9�U���\u>�z4�J)K�bxHl���U䜐���`X-��RPK�r�DF�a�ֵW����!�jl�2�f1��<�ك�;}��o�.��mQ�E{bBF-��\����Z�d{&y10c��W~����%o��_��]����.760α�G�e�����:���P����gP��� �Ec����+��vg-�C�s^��u��#����iI��jT�h�l;Rv�a��ph2���6Nj��)T��	�+�-Pk4}=�pW@�xe+h�V����A���o=h��\:xRS�TD�W�K�#�L&Cf4�j=���N�S�+�<�?M�z\�>���MEՊ
���i6C���?w�K6U̴��K#�noa8x ÁgP@�޶�R��������+bm��~�?c�J�7Jqt!��#9�sS\�7��j��uD+eՈC:��q��-PV �{Û�f��ٍW]��7݈�>�٪���V�3�gB����&i�B�JkͫI8¢��]$���`�?�x졇�~�g�x~ �x�qگ�<��+.�՟���;�ϳ�u��g��:2����(X����nҊ�D,D)!wp�L[�>��F�6�OZV�d�
�d#�޷c)e��h��Z�e�D�	�:+k���h���KȥU�D�.�KԆ|f6ñqPǂ*���+�RH�>>��g �,���gv,�P�����-6�@�4��$�51 EC�f������qM�I����m��c�5J�
���8{��u(�Qu��5_�H��n�C?O��%�����f����jH�����"����6��6�mD��V*u����������~nlZ��Q�V�+^i�j;�����6�Xő�`�WX�"t���w8�B��'i��jd���*�L�I���s`q���)y�ؐu%�07�I�1=��ZA��E)w $g���*i�[m�PxL�P�F;9\J}����4�A�M�SX¦㈺X`�>�r� �g�Fy�iK !â����EW%�l����՘����X�@rVT"�QQړB("��j�A$+�0��{�k��W]���{�����۳�8��d�?�XόY�
3ٸ[��
L*ik.�[���^�6�cK�|�	8᜗�x]�~�~t�'������_�3�C;"?�㻸���0Z�`F�L�Hk���sU�������M`,��"D�K�b-6���k��[<��@����08��8 �JG����a$f&^nE�&ce��8X�{��Đ9�iO�30�����FkY8�	��>S[�m�A{���n�Ը e4D�0I� 'K�i#7����ԢE@P-��A�1aߵW����qm]��7��܋^�`�PǍ-��i�Gҥ�^��Y�ul� T(��9f*f "0���02	Q�u��Դ�ZV�+(��~������Z0!jnV���8:����#g��h��;��>�A8pfmY5�f��)� G"s���A�P���JsK.¿;�o����Ԑ�P�Շ����c0�)|���cFF�NQGY�A�~.z���~���-�">�$�5>��S��%�t��F�RZ%n�xl�D���x�:���gi倏*ݒ�������df(��.��! ��Z��֚�����#V����*�����Ҿ�k_�c��&_U1�yJ�a=�3����$���m��?�k-%U���V�B{.yN�`���܏G�ϐ9"�h���=�� �?祇��Z
��sW���nE�_�R�Fbl0a�kP�sƬ�����/�!���������*!%��ȕ���ٳ�D�e�<S�֗�^��szlk���=zO$���s��-yM$T����kȈ���0��+w2�'/-�%���6�(�T�% Dd�G��Rs��/##�ȏ��i�P�al\�h7T�HŹX���6d9B���曒d0.
��'���Ş7�����z��Åw���۶o�m�֗��x�����W���O B�� F'�d��1���WU�ŭ7�J�<UQ��x�p�U�1�W���4�W��et�\�oџuW�詙5n4�c�h�3l��3`d�*�rX�+�FuíPԠJ-~ ����Z��[� �3��g��&��N�P��H�U��7倄epm������N��YL�bU1��W��4]�B\*�KSEx�T�l��È�A����5�5d?��Z��ס�6y�1�ާn��D^�D�`�8l�%?�F��5�b�T�O�45�@��m������W�v������~��-�����s�9���32�L`0!�C�b- �m0|MG����^�
��������޽xr߾�Cg�ϼ�����G�{���o��gZ2��1�`�6�l�FN�R2Fl�EZ�T��ޫ]�'���u���'�%&G�&�čC�Pq7i$�1�XZB�R��=�L~?sΆ��Z�e{#�`J9�܀��r�����o"vN��y���T��'7����zl�LJm��Ue+��k�M�̵F��b���ۀ-�q���@@��Ғ�R�<���	;:: ���[x�MoÙ;�B���׽��SO?����`V:0��S��'�)G�9�1� ���a�%6+k�9��z���4F��#��7�pj��J�f�	:sH��δ��Aأ��S�f�s�1�������`}7�E��W�pP�F*2XάC3���l�2���Y�zҤ��z��2����ȩo��D69p�,�*�M�7��=XAIV'������!<��9��w�[4X��^@�#��?��Ll�@��y��<c���V<	3E@I��>��{�f9z��|��D�xb�}%	p$'��� qxy/��GT�vϚ��~���격-��_�}��� ��x�=�@{>��Xg�z��H�3����#A�޾��J�>�d;Zp�:yix����q�?��;��z������ok��L��������Kށnß��~���Oc�u�Ǯ�uf�1�΄N���R c�r0'��W�)9BE&����t��e0KwU�&4	EFG����� k�(0d�
XK1����U�*eb#�:�>��"�(Q9��3��xPN�ݑ�)�dZ���x�0�N�Z�q02l<�#*id�Z&�1V�(34����:�mͫ�{+�{jH�����O����[ۆ2���+�����I<t��\��/x�����-�qsQ�͑���?U��y��-�c>��-A,
�݂�ir%�{�6I�+�8pm��CMx�G��"���b��J� �aa*�	&t҂�
t���ޫ4���4:XZ�0Y#5qrp��,J*���u�.��+��"��4#�&!k�1 3�a�d���2x`��n�N��9���C$��D.E��jpB��M(=�@"���E2ɫ��S9����Z�n����ZF�4�"�O@��r%���9p��ZJc�G_68%�n��ɜV3RU���ad��	I�������Y����b��HkA��Ƽ�d1���Y<q:�U︵��#���k:a��d- ��x"s�K�j$O"14$��}��2�b$�2�������q�{?p�m��7���n�>oVc��Ʒ�#x���7W➛n�g�衘�`N�v�*:"��F #�5�{_K��ўur�(#����-�k��i(��|���9#���"K-�&5�}��ˉ��� Ĝ�q0.%��&��tjj ��s�Vt)5�O���Y�)c���=����J���$�غKt��H�'�Ը}CS���^�Pj��M;D��tb����^�8�zpu{arCb�|�;KT�$`2~|�7q��o�q����o=��NzA)uC����l�&]�{�~>�|@�����%sT��Rʽ/���6Հ���,n������+���L)AJ���wx���72��!�� 8�n� /ym_��)޷P���C�u}U!e	�@�C�4�,�����Fftϵ�)�N�*P��W�,��ib6@�o��
�ǿ[��	�y$�,Ї��'X���~�����.�o��3 p��P�������_U5/����R�^1O�h#�� ��z��(;��B���BW���BӚ
���g䃐}Y)�\~��_�����PW���7h���SOޯ���������=�|w�p���b����gl֮",৕� s�[5�� U&5˹�k�{N}�;v�& xh�^������SOd�i�*�\p�|�[w��;�y5n��D��'�362cWJ�H	k]�z�1�{���Z��'�_a��E#��Cv��ܱ���g�s3 '�-������Av�[^=�]����Ƹ�RQ�L~�{�Th�������I�R�ZRo��>cdO"EĐX�3�p6ȡi���2J�%�0�`�wo}&�aZu��D�8 �'C��/�(%Ol�9���B���FRAax�q���p�k�p���׼��.~���|�K��ƆЁ�+-NX�ǣaP�1� �'š�:�&�s�dFZ&6+Z �����y+2M�Dm�8��C��/�S�prxD�F@`���L*�G����>}p�R�i���s���A�h�����'���]ǡ�-�	{\��K��B{�9a�nA��JB��K#�+�bQo!Y\KBH���k���M�>SuM:��9�.��~�5f)]��|��V-�GT�� d�3G� 0�p־NCP�F��0��!raj	� (�6B�Ѿh�TZ����Oṯz5v������oh(VO6��'BG0Y\k3����@�!c)n(cn��9%w	��$̊Nz��q¹/���۸ዟ�?���m�Ȏ���7�ԋ�j|�)����7� �0�`��$�Z�R1noc���T��9��E�Һδ��r�P���r�9{b�c���q��8Ơ/����#�vl؏b�p[�j�>eS��Qϲ��XQn{�tzKh�|2�Qm
��G-q�D(
���YN�-�1&��-Ȇ����9���F���[�q��h'�Z�83~F��{t�1)�\�<��^�R����n��}�a��|m�{ݛ/9_�n�R�E�u����<k��y p]�0L�r�*0���&%���t#�s޿nՔ�_�鷢���:`zriN0�#تW�>ɮ~eq�vг���O�s�~|�2��rrO��䟱 mv�t�G�nA��	��F� ��h7�(=�Hp���E�f��qo�Di���#z�A������3"OX\� ��'��Y{@	���{fNT�=�@��YTaя��.�+��Z^��O@�L��(    IDAT�_���[ۊ���9�G9y% ��E't˗j��{ym'���;�{�}3��[���uOj�>���}��F$ Bu�d!SD��x�������u���;б� ~ѫ/ƙ;���櫮�uW|��������1!1ZPJ)<*���$J3+���T���=j��uu��(����P�Q��fS��gm��͏�0�f}��mN� T_�@S�H������}�Ĭx����b%��Ʉ�WH�7ɢ6B�%��L�}ds��!;�&N��!BV�8�������*s5��v+@&pd@[�����#�������s��W_|�����}疧G`�'��Axd����g�c ��oe�~�Y���{����)6i�۝��L�H�-Yd������ �:���9mҳ`؛�|D@
�9v(>gP���~��W	R�p���	���BW;6;qs'�CdG���f'�p��C	��g�oL̀(�czk������Tqߢ�σ��Uk=$65S{�C�.�z���nY� ���M�{p�����1b9�j��3�dM��y"w�j��*��	�XZ9�EL�_WȊ�)q�TS%�d�$���&CU'�w>N|���� ����A@�wD�ǡa�Z�>�L�`(ښX�y(�8b�Ar���X<��a���\���{̒ =ٟs^�����W��������/o{�U10�Y3�/��.����?(.M5�"iU>`�tR`�R=}6�2x��4�^I'gqx@�9''�:��M�����T�u9��3%��8�v�a�Cγ�������sR������ь�N~U G������f��?��Hk���N�V$�>$�V��0I�*�00��4�@�s�D;�c2��6tC�j��!�)��}����������q���/�l,G^? ^;0����	?�ѳ8� Fi0\�P,P��F}f�ZB��� ��Jo_c�+��=�&-�ޛU4�^'=PӚZa>�g�W�Q��;15��t����z����=ͪ��|S�K){�^An`�:;P� ��M*�t\��Z�\Z��N
̝�V*b��CG+i"nPih�[�8=`'�*�Ю-�F�b�~���3�j�A��rg�G�#n����_]	PP��� ���['�.����5�V�5��ƹ$:݆���*b�R����_���j�;���V��HϽ�"�����x߿��v}[�����:�)S���=�v�F�)�KAx�|�_���܆G����v=O��|���k�������G~��������?���~ ��o��{n������s�U�9a�2ßQ��P�6]�?o�zj(|�K�>8�
�F�����)���
��qS�,��+eBR�R6�aJ���`6��Ι���Go��v��Z�j>֦�{�E� K�U����0U���t���h$��r�q9`�^��}v�\2 �D�ܴ��^�؛�>XY`�s����\�K'I$աR�����=w�{����N������_p��P7c]�Ju�U�v�J{�^�r�=����� �[F�Qa���As���\ވZE�� �`,�ؘ�����*�v>�IK�!=�T�!A��u@�D�ZE`;T}��7�,�0�Q��,�cX|�Έ2A}�A��ܹ�%vR� �)e��g�W����~�;D� M�%���FM���	s��1�*	?�`Ռp�984�x2�!���z>�9[�o?�[�*�ߟb�"�f>qC�����Š`�$ɼ�>��q��O��DT���J��O1�`;�V`�J��g`P0cJ�����"��8�ܝG��{���{�-��٪䵜1�Iq Y��,	^H�#�b�Glh�D���>ZlU��g���O�!�|�!�:�"������^�;���MBŜ	s"��͗���y�a?��w|7�͕vo��m@XO	�L��ӟM��|�_�H�C&Qj��"���Z��'Ӳ�wx��4�=���Q�ql�õ� F`9�׾_1xHZ�G�vo�2�atbtb�� ��-�o�|Q�̮�De� m�:�.e���bI�� ����^�U�2��l���>_=�.!��&��Ʋ��J�B2����R��9�b	�[+�|M2�˭������t�a��Ņ�]x��/��������:-fk��l����0�oo��:� ��r�$!�H3�D���{�M	 V��O�Y�EX[T6D $�ϋ��d\�MNw��	���R�}��bq����)�0F�TFP6;`�8� 2VԶ�pՠ��O���5Xp�L���Zh�Io[�J�bބĦ`����8B!��F�y�s2S�Nm����
�����/���պ�]���qk;�9�B�'b�6BQ�"�������mh��.Lߛ�H��`KU@�r���Uu�G�DO��pbwp���V�}< O���׆,0������_�����������Aѯ'B&XK��%�6gv�?E!Q�Y��r@��~p' ?��x����R��P�t�8X�}UŌ����8�,����y�wݵx����[�����nts�_|꓏�5^�op0g�.{Ш�C��u�͖���w]g(U2�+�mȔ�bRʾFk�{��l�8�sy"Q��������b�G
U-03rgn���J[�6�:y�Hί1��xkm��! ň��tTQT��'�fP�7B��cH[���|n��$���=_������?�!Zg��SNi�vDbc��^	��6�!�:Xk�+����釿w�MO�윓Ny�)��5�u]:�����U_\�m��|1��8�2N�?^v��8*��O T�o���8!Gk��A#`�I�H����x�K��%�*T����T��=5�:�e�:��A-(8��j�<����`D2!N,�.��$61�[�VPJP��<��C땙o���V���x ]��a���U'(�5r�P']Yr`,����!�|�:h��A�׹��U>S�K0��P�$<�.)�$e����p$�
HKCm)�� ��pif%2���%t�&-ڀ��}.q�L�9A�Wʍ0x
�EB���]Q3�"����VZQ�r����<�7���@�C2�YJ�I��`G���?�{n��~ޓ�L��w4 �}�q@�|�kٽ���Vq	��3|�D�Q'�Z@�	�3���g k l2aν�m8c���G�]�~��P:z�$`31z�|�P����!�R+4ٳ�1�"��AF�!̝���IP��8WG�}*�/�ޭW��s��}�T��"Y��W�b��,ˎ� A�:����9��z�K�<�@�<�@�����ȗ�R۲$�%Q��*��*���K����^k�a�1�>���I��	%V������Z�2�c6rm<�"u��_����×6�D�c�����px������t�� �	6U�x�'�V���I0/�aS� ��㺖e(
:@��!�%�!w���봑A@�����h]��6E Xm-RSU���h�m[����$����W^~�͟���.<��K��淞y�����>iXN����zw���w$~��?pp `ۗ�P	�u�n�Nx��Fj� 	+�U���Ό�P7��j�1����i��P�P���H���K�L�~��pr_:T7x󬋵�����N���������JyM�E���r,$ԥ�q'�������e�e> *A]k�v�z_8m�{��TV ���vH9���o�<�;5!�k�F�q>8�rp�yw�w���e5DeY�Bps����,F�K��]ZK��2���x�g����NWhBw�(GZ}�ʞЀ�j�p��Td�I��׎����_ƛ?���Y�f!�c����?�Y��xh��>J��38 ��:��b)�z�ld�~��ւ���\-8W+�MgK���?��������ӿ�s��O�4[8� ��q���P
�%����,����lQ��IC�X�,s��޳=��?�<���5�O��ѶIR\L��S�(dFc�n@�'�*��0I<���2 ��1��y�bYbN@�ġ� U�qO�ڦd�0 �_H��D����83�j��F���㌓�$uA=�5�T���kpGU���i������ۯ������_�ʅ������v�Z?uzn������k�  7��+�i��J��5�B� 5�u��4
�� 5c�|�4�)��6ѭ���(3۲��n+r�F;��!1f���5�,�HhVYn`OHߨ�������M�yPKڨ]��LӖ��<Y���+A"��F��:d�ϯ7��"��<�B t�C���I��A�1ܕ�K�t��zf�R8�=�2[Uu��6KX�t_Ec�����],�D%ȃH����D2���z�()blȿ	E���2곕��˪}>�����o|�o���뗯�7o� @�_� `K��p���T3�d)Ƈ�?H�2��Ky'�Ti���x�֩u�1ŭs��d1�x�����x���&l8�{/}���lt��T�����_�sݣ��A(��P���هv�I8;v�@���Ue�-Q�b%I�e3q<�~�1xޖy耔	����ac � ^kG�x]<�)�_��p�ړ���sǄ{���UI�]�B���9�4[�;
LK1�F��A���"��Za�� eL�+;m��	"%���v)��z�VK{����ׯ����pl�+_��������S{�O�[߷��������#3X �8�����> �������m7�;f�! �4x-�`R�O�$`��u�H�T9k1 ([�ll63����͸�~�&��a��������(!j��� �D0�\@'$��0������x�
B\Ιk�+T�)4 ��Վ��'8�1��:��Ҙ���H����9����L|b6i�l*[�X�ug�@p	n���!�!��؄k
@f��@��;���xF���K��փIԣ��*��
UZ�Qhս�	�H�5	����A��_�:���c� \y���[+! T
��`[��c3��_9 �2a�W����c"�24��z� pn��ؒt�7��Կ���x���'����'�ѿ�rT����5"�\lA�F澂M"/VsAdntr-��:o��b�A�Tu>]6��oKc�u�@-�G�6`%3��cp���:z�#8)j�Cv�ZQ)$�==��m�ZmB�bQ��ʙ����(�bhK���*M�~�S�'º��Q�:��T"��ʰi��� �A��(<)��<�Z��n3ݹx镗^���_���/U>��_��9���v�#X�����m�6�������ES�� 6e��n�^���}��KG�}�t-n�9�ʲ$��1@d�/��;�t��
P�P�V�\0���h>����uF���5��c���������Z�	������i�{S�k��0:�����m��C�U�X�(Z������b���fM)L^Ԅ�%%��Q� �����B��<+u�i�2�{H��*ө��+�ަimtخ?�(!~3�*M�!2����5I�U�� z�b5d�W�,,�@��E��6� 8R����3�Ⱥ�\������{r�	�;p��gO��w룏��/�'�0�$��>(�m}�;B�4���V8�u�$���9m��;f#݋��sC)�s�����?>�^ �����q�`][3엊�9*�X��,�d�k�1��$��s �9t��qv+ɢ3�וhU1�+� �;[";^
K($�Y)�6�o,�xw�rH�jΟ0$7@J��3dA!}���{O-���Rw��ܥD���Q&[Ϡ�g{-�ҁb阍F���C�,��m�}nQ�����23�1cb&���(��ʳ7����Ч��T̽�����7﬿��O���rl �կ��c_��o~����
��dm�p��;[��M�wOܒ�_{��>u���������`gN��s��s���.��y)��e��_��%7(�`����?2�vC�y1*f-��H_���1����0:����8PĬd][< �i˂e�l}]0r0q�����;g(��͖��d�7���2g�Z,��a ,�!�������vI7�0�R��ˈl����/����e�<�;8�����9Z����],�!��,h���t$�F�y��3��!��Ap ,�E��.Ě�Ad`ڠlHt�A��[�}Zx}�|��Cl�ڒHBB��hNܲU�k����e�̺zo���_�-\}� �s'8�H��n]
�1}PA�d`U�nK���;�8n�6^{[��n�ao
���o*NO���F�?^5���;�տ��2�?!jTa�j����;�hG�6T���ήD� Vy#���0`Y̻]����r��N�	.�	|�b!*�rq�>$y�Y�XZ���Ad%A�	�Gh�O�R��=jQ�/e����?����>/�㿧�*��n�dDg ���o
����^{H��5�v�X��!R�#����W{��g��RR�3��b ����Vm[qX>1[�/�OnU_^}���G�8n_=��Cg~���ܼ�}o}^�޴��<cz�G�p�~��x-K�9}
�L����l�Y�z�y��Rl3�O�%�d�>7,L������ԫ�sD�P�D��U7@�0�q����Ff�b�`�ꀣ���m�:j<t@��`��HZ�krȮ��}�3.�n��%�0&͉(��M�"EP���P���*E��k i�4@�V�(b0hs`�w�U"�=6e��̵�D�C.5Y�]]"|�k4���* 2��Z0��#U��Ek��ئ	���H��K�S2�	E���Mr^]�:��>��gp�SO�x���yW߼�h�1`c�CN9Lbp~�e�a�#r!�X]d�7��L jed]�/��}��������������k�R7l l��Q�1��8������9d�z@�1x'εUq?�rx�nF�����
�)�*���}Q�T:2w��E��y����?aj��st�z��P�]�-.�b>�E `B$"�Ӕ�������ʀ�a���^���ζ��ZT"��4Vʟ�DI������D)�eW���*��Jz��9,�67����l78��{��z�Ϟ��.����q�W~�����	A����<���l��~�f��=U1m����(����> 8�O����/�q��o�ɜ��Qh;"�5D��Q�ET߀��I ���b��$���)�S=�@)�	�����av�M	k�n�F���+��)�ɟQ5�ȃ��1����� �
��Y�x���& Q�kk�
6b�Ѳ̠^��;z�Ȇ�ڲ��lvd ��0j��SGFĦ���jliB�3�4��9t),�W3��4#�g�z�~O��rdq!���P:�6a�^0�2���=�Ȓ9�vI�r@�D���,�;>��b0��̳8��3'���._�t��]ީoPP����A���l�[2(X@��5��2�|!�#���� �]��g�x���x�{�����4T��F����Th�K�����XYX ~FW���Q7��6N��0م
��:��,���Y�JYPgƈ�p{qu���ܑ������y/%>G�K:Ķ,D��ղ��̒968��L5�<9 z":&T�]qM�fk+��.��ԁ>�N��l�m�dbqV:�Y�S��o�#\S@0t[x�(@�}�[���������O��n޸��kO
 ���o?���/�����m���ʶ��p�^�v����@	�;/^ܹ����t,�çl��K�Um�	KJ�.�J����X:I���t=-�*>O��:�����e�5X:����  =J�4����@l�����g�|�<��n0�Z�X"Ek�[��뽑)��1{ ۙd�#�Wk��Y���Il(	�\C����+�!����טFuYR�\�E�٧ĆJ/ʄ�mw��l�sP1�I: ʢm�4B�5�2��wG���'n|W�(    IDAT�1�p���;�hH��.��:K�d��������Ν;�,]}�2�h�4e/2���8����ND%��(OY�K��(����7��Z
��sZP�N�NT�4`���o�މ������+���Q��o�gs�q�"�t�=���ڄ3��(��P7�L�e^0/��x]�[���)��7������Z�G�N5I�� ���4��DC�8xt-��O:�gX��g=���Y	�iL#��X���`��~�la�}�ͣ"&7G�u&���f��8WG����48��l������l�+ 8|���_}��ƫǏ��#��}��|����A��;�{uoL��lB�=  ؜��:�y�khx���o"¬nl:�|k8k��0��]�YVv�zaP�����?t�G��c�󲄷D�����ӭC����� 6j%�(2�]ڒ$'%]B" �.��=��t����������t��
w�����#A�e��X�oX/��k�?�k%�R������q�:1bM���l�� "�2>N��� 3�|/=В�
6!�C���LA�HG�V϶����R7��� �O�u�>�,���G�˗VQ��(�	�KF��k���.�ho�~S��K�"�䵎��WLD=<��o~��7���O�_�Ͼ���A����ݳ(lj(�zMc�x�	�1(p�8.ڢ��\��`$�(^x��*e�e�;�QDDDԃ'q��B^�
�RF�+$x���⩀A�ʚ�%��:_Be����/g������ �f,1p�-�1���m0J)�cm����Vg^,-��F &�m��ZG~��.5Bo�(�vG��軿���������lW^{����|�_z��/�Ϟ}��G��~���h�e��Y��t����Tί{" 0/7�2���p��Z6�iB����i��K�'�En0 �]d:���L#BR	��F�G2��m��l��gE��҄���@,4����0&�����&� �Z��	��ޛ���8;#��Uh> 5�{�����Y��1�hq�@M�X������?3�+�X:�BU���S���:����r"9��3]�/�`������[�<��F`�Y?uu��12'�!�x群Ʉ�;e90ˌ5����(� �a$� g?V� p��%\y�uH��������S:����2�8?�� ��J�䌠��=+�@�p�CAfl��q��G�������p���@%�s���`"0F��7���=p��O�!�[� VO~�	2rD:R��TǌY
+18���݃�`^Z�E�����K�*��z��YD6����������Kn���/�$x��Q��Ie����X�����тS�Ö�eA���7KL��k�����_ղT �$������^�p�_��~W.~��;o� <��s=���_��������i�5L��m�������k_  ?8��z���]�wa��ׂf�{8O����vp�v��l����}7R�b�ږ�p�f/?m�����SG�K)�o�L��}��U�0��\j"$Ge��H� a�
@�?�	ȹ�C�������(�0�����vנ&ƾ��0\�Yҥ�X�����������%���{�6I�
�.xd�#��gф�s�z4�c]�2��K�!m�UP��C��Ђ�p"��d�3_ti���n��0�=��귥��@D�KB#��B�:厕q�~���D ޻|9 �n�	� TnmiXڂ�<I�zQbp_Z�ݚ� 9XqTG/5�鵬�-�S�Y{63έ�؜:���� ^��qx� `*��;����T�-�HwG��+X��ԗs֞q��܈���1x��c^̍ãlp)��㨞��
��IJS��;�e	�JW)�eIs��M<m]R�5z��BK������M�Pa��!��U��Uɴ2 �a�-�K
0+�F� �O'��E�]zN���%�q�X�R�c�1ǦҪe��W�M��p�K�b��~��^t\��w����7�x�}����=���=�Y��=��{w�ӌM����8~�{�k����Ͳ�f۰W��4;��w8�I��2\=R}A�V��'v�Y�;�f��S"���4!t�	Q���zL�3�m�=��7�6�\�DÐ�|���W[a�!�4��ڬ��h�n��4�d���1R����s�^���:"r�/Hl���^�}�jby		�"�t8:�&;�hX
Й�5�U4�#�g���D��Ͼ���uX69$W��`����K����ᑣ\���@�=���=ڰj��<�Ct+$��D��Jmʴ�h�R�]a`e=�3
��8�ȣ������w�NC�-բT&�_5�V�3S��jϸ��J�����@�T��u��Ce1��|R�$-��R+�ַ��	����W������5���1u`�5L�P��GaL���pq)%��;� X��!�NG�*��x��:��Di�5h�V��;�� �����,��a�{�g�`r��h,U�Vj�+�:����9�xd����U�*�z���4���`�����#��e ��0Q���u�v��\��c�Rk�%gU"0��Hg�| �)�� 8�T�s���5��|��o_�{���o��-�R�_-�q����z�/���ث}��_lo�|s�f[�[OpPL�9�� ��������{����}��m�� a$�%zA+�q�r�����d ��Wu�>���𞕂���R`�(SlL�uH��(����deu>>G51e�>`��Bxe�b��>����JCd0*�A�y�i]�=�O���L bʙ���b�e�l2Ϫ�[�j %8K�r��̓p|�������:f�=���2�� �ć��
y�\o����{BEl�D��sJ�,@k!,#����1�])x#�T3C�S�;�Z`�u�]���3�I��
O\N�����ӏ<�S>t���6 D�yc�ZG;�c�/���IU������"��Dͤ�=�1��\�uo�)?��o��#����~�#�����mQ��/���p.�Zr���Q�h:�V�FG�r���#;SzwT�����gl�Q��d��@5:��(��d�GI��c�t�=k9<f�	�i�1X��T�3��8�e�8T�N[m���9O�m�)�J��$C3���b�#!�^v�B�����wr�0@K'�DN#��u��m�p+$�F�����;�����z]�p������o���ۿ��ĳ������O?�oˌ�2��~�f�6M�}T��?��������{��/��wn��,�g���.7�<z'�!��In��,�r�i��@����g���=��l��6[�w���K�m6(�=��e�@À������w�T�
V0��bKe�����F�Z��¹�iB��E��Ddг�0"f� Ojy�`�eh4�'�	��ŮC\����G�?���;�F��2��=uq��h�l;�v�j��A�'�
��w*Tu)P�,���n�"���X<�4uWL�:�Q��4���.K<;N<�XLv!�J!�8:X>�j�Hby2�ڿ�ȉ�9�w����+q}	��2^-��W��,�I�2ώ�$uu�8�h�����t�w*����澳8B� ����8�{��O!#Ǒ�FN��l6ҩ <�D��FIcIh=;F<���J#�E��#�se��)�q�OS��g�l�%qI�Y"P:�y�ܻc�5Dǆ�;��G%2�w#�HC����A�XóLxN?T��n�3��J�4Јת"��w��k���k��d�>��,!��Q�/�4X�,�`'��x�/��˭��7^�x��;�<i�=���Yݞ�ѶKǶ��mvP���k׾m'�����@  ���V��㥵s����^8��Z�Y�%�ج3z�2F:5T�`%ɦ�q�`r���
� %5��-��KBb����0�0O1�c�Kz�Fp0��l+Ġ�5��.$;���\���T��a�C����=�a/�q
T���lr�0�5_@�$�.$�1�	H��o�lS�J ��sc0���u�` �� �ѹA\�x��Ŝ�:��h��A7{��f�ΫRk�	opdp�����Q�;�>�%��������+�p�Y�$���W煫V�Ǵ��S4 y�\/3�Q6��^<���^�LVP�:��o��	��W������"X1�0#�s�`~���3��{������,�tu�
�{��f��Ċ�Z��g�����Q��t�z~����X_/d��/?����V*,Z�
���0�1���{��ܫeP�k�K�D� #� ��6�K�R���W�р,y9�
4���a$�ƾ��,i�{�?��KL�ifX̰���_�����~r�v��K�n8 O=��C����O����ך/۹���ٟN��[.���
j��^�L  �;��z��[�wl�
/��I,�0�u��=����:kp�6QR(�0� ��{���ӱCQ+�k���.dk{�����ߒ��2u��e�;x?6��>4mNэ�~*8��Wӄ$�HY0jQɏ��Q
y,��:zz$�33R]�G�o@>A��xŌb�ᔘ�kS"�u�g����^�ڶ�u��K���3�go��҇�y�� �(�$> A�\�hJ�y]W�e�#�T6t��'s������̓ǋ� ��׮��ۿ��Y<k�
4��8��5�`�#�!�>�Ϣ}'َٮ�!(�.�����ZQ@<�����'��o��Gx���	��6�ܖ���B,��l�M�k�X��g��_��1�f���!�߇#���z�q!\H�,F�,?���Oۅ��3{�*�f��n��|	{��TgA�(�_��g�3*4Q\��� ~�^���rD{�-K @/��`�r�����+��~*�	��i�j��:���m�uZ�0�cv��O����[7�շ/�v���s�������+ۂ�o|;����r���U��w��g�b~�u��:!�!�e���Z���i <��̤����>�L[��ɂ��?���1t��v�?�{
�X�ޥ~��Hx?���{��FX�F?�n~1�N��F�w d��rBr�QMM,d	[��(S�q\ݧ��1[�(X����Q��XGݾ�k!���W����,\���D�0d�=\r�@��J	��bm�;�GP��"��QW�V`������*�Q�Ur��>pp���8��㟩 x��%|��~t|/u��Fi�6\+�c`!�{$��'�U�`6:Pd��fg����?����?�!��	�l�\6�D'��H�?2�G�mt��C{���=��W�@���zLf	������>�� ��,C7W�ռ�ų�F�{�����5"'�t��ŉ�r|^�dA��Ki�xg���Nu�����k��{p�R�4f7QNr�wy�U�?�N��ac�F ���[\:�w݈���/�0!�n@�* ���_��.^��g��]���O>����O�y�+_}d���v�}{0�M-�������|�?p ����J;j\�9��Ӹ�Bv}:>գ#�N.2X�ى��>�t���^��
�z�e�a� ��;	�e�j�f��"kc�&p�:��e@��G��{�oP����e-/(O���=�h�����TB�\�-�T�,��DB�sLs����J��%�&��*�pc�$���� )k��>B�Q�.���)MdF���c�Fi��p��	���
���-Y��Z�g�=��4��.[�� Ը�Z�,��<2�Y�Ъ�Ps������y(�{<p�ٹ��� 2�̭�@�`�Ǯ Y�TA��}��H�!>�)�B'�>�:����V��ݱ����&���=��?�~?��ܱ1J��a� �C|
y�^$����$S���gE�f]���p5	�Ĕ�U)Y.��B$f�e��{T�`]{ZN���y��l$PȄ�W���6�ࡸX���G)9�C�H�@�H�.���ן֥1�2d8��[��"�^P�����*��l��4�
V�3R�(�c$uN�aC+�Ըc �h���Wl'������~���_�z坓�ǟ|�|s�̭m�i��n�C�t��<�����'H� ��w�#w�قИ��1��e߭�D��b*ę,$��ʑ�!��C��'��r>�ķ��w;����r�6�ݻ�u����߫,;|�pn)YY
J��!v�u��m�P�M�(p�n�C��z�0#$�yw�%-s8�.9\�,&���Δ��U���G7y���X#j�i�����h�AU[��=���y���2��I��=\�y��226���~��ؿ>�����bz�a�6(��2���R�Tك=�RB�}�Lj�uJ�魇�T c$uj�d��`'�t�E����t�>�?p�3��xvn\���{(q���JDFw�*#������@�(S�EAB�v*�{���H}=�������.��%��������Z�)!e\���(���9���j��Hǒ��8h��#��j-XFu�0M �-� �y�Cx�7ЈTe�\GC$1���ﯠ�\����U�T3�)u��@�ɇ��Z
ɯF���@�� �O�L$S�����'�c���y���hڴ#�������_}�� �V�wK�����}���{	��Y�?:nO��_����������O>q��G{hi}�[��f���� |�A�=�  ��w�ݰp��Mu�bq��9�摁��n<-B���t�����1�A��ޖ��� �þ�h��A��ZE� �]֣&�iFGo�62m ?�P�(Yf�.����5�%�j��zD�1�s�G:���˄����Š�(p�f�e���n�f�gp�����ߢ5Nh ���Ml#@B������
���>��lAk�����u���H��nB�V����W3x)9�=�ϓ��l�S��u}��XU����f��W<�����̙���׮E�hA���Y0E�&���~u�!�Lc]�uB��؋c�{�Q�q3��-��\����_8��߼�2n~x#���b���`�j%��s��x���Gט��F6:��ؘ���FϿ`�$�y��Z�������WkÝ��⎒`\�T���Qŭ(`D)+ŗ@�@A��s���hf�͵+��;����$��W���E���X♗ {B�G������Кx6G;DN����ǀ�! D�����'��f� ^o7ڍ������𣏝}�'���{�w˲�k��^/ө��� �S�ך����lk�f
�t��H��WadY�zBb��`w�i*p0ZC��w�#z%�'(J��ڳ��tM$��q+�`���"*�����y�5^�%h��Q� :eM�AK)b�AZ�>��s`a��`��&��ڷ��X���C�s�8O!�[�k�`"A�$Fx42!���FN�2Y9�R	5��Z�A2���p�n�M,�'�)���z�x���B��˔���%
L|�|v���]:J.9c �e!b j���Oc:u��3sx�.���]"G՝*}�3�{�T>J�X�g!�Uv$� ��#(�]�p�p���o⁯~����K?�IB��X��m�� 0���,q<x�%ɖ�lo�o��Du>�
�u�X�K!k�6:X�Rp��v�����F�#)_�=���QA쁤d �/
�=5Jz �F�$�� 7��5��EY^��bN��R"1ƀXa�Sl�r�@r����̓��]j@��s��ek�q{�����W��u��{��O?��#���m��M�ئa�n����v�\���uO �38�m�_[���Z�ˀ�dO(M�0�Nt�򠳥����}�#u�W��}�� �U�t\�����Zq��AT+�D�������ub>��]'��}͸W� ��4j�u��� Ro�z��u_2�Q�X�8�zf�X���̫��h��}p rnM�P�֔I'$�x�H���23YuY�� ���#Ἧj�y�`���    IDATk�����qG�a[y�aluO��ZUA~ؚ7Q�4�۱�% tp��޼	8F�E�:#K5������<�7+s,nf�_bU�Q��=��3�<�����s�{�������"3E�`��l��2�gI�&�#�'�
�#�B*�a84@^�&���Z^A��L8�B�G�j*���H�זAH@F�o/6?��e�@h��M#hނvv�[�#j�~�9n7Hj��}R;#m)�*(�V��f����:�������獧�vO'>G�Jt���ف����>*�  pfo�?����'����S�G}�\��f�m���m��p_��s}�S@k����G̶ͩ���N�'�����2یoܸ�3lo�y�LЁ��ۂ�#�W��m|��]m}t�m�(�������72T�5��Ѽ*�dYIL��G�e���Ψ� ug{�{v0�'?�[�7�0kC�|
#S?���(��8Ji�V׃>�/2�L� |�#�F�Ή��
�t�i1x�b�Ks<� �x���
�a�W�d��d�̫)��rd�Ɖp�}�0���GKrZ[�S:$�fl��*�G�s���N81���۸��G��<J����"TM�ԕ��f�ϲp�J�%�r �f�Zrz �{��_�
E�~�����;?��	l����g곹���@�ҙZ߂?�����R2�,�b���̰��)t�ED�� 
;�g?�M(Cw��Ni:N��;|��M$!�*�E)*��ҊG�!R�Ⱦ��j�*�"�j��.�
S@��,�XUɰ&����4(Hfu$N�*l)p�4�Q�zG�G��Xh ��X�_>����/��_��B��=��;<<�������O���Ͼ�o:��`oY# ���
 �����A\]<�L��IjYs�:��\��3Kf����d��KdF��mh��m����33�ZW>�Ƞ��Y+2:5�A�Kg$��В����D$]l�Z��3s �]'0c�8cb3��2$*��F�����::�bp��G�+X�����O5�$r��u�IgV��nb��R�����.s*T�T��F7G-d�C0%���s����1+�����U"�i���U׳1�?H<K���cN��ANH�2���"@7?����_�}f�`����Y!Opǂ��#����k^����܂p�#�p�,՘�+�2X[PN����_��s�7L�
@� ��g�VB���G��q�g2�l�D��:U��	�����U�`i�+F�e��}����oβ�p�Ͼ)�C�[� �A�%�0��T-��g�Oj=�2C�A	C��D��YJ ���\3��k��)�}>4>��C��pi�=��ŭAf�GJ6�E(�a�x&��(e��,��ZG]��O?����w���O����훷N �<��S�>�K�l7�i��/D	��� �/^��^�9nk`��	>��
���|(w�8��B�f�z����\��=c��*u�GAA�0C�la{{����>ʩӨ��P7{!\�$@�
l��Վ��}�.�'e�H�F��g��枒��,_5d�%��(���}j?˰�ܣ�S�Ѵ�#�)�bTKQL�z���*��
z���e�O��>�j��[b6��,s�]�s+%~_B��j <%��=9f���(�0�i���X�_:��x��t�@IFW��p��0� ���;P���SO��g�=��\�t	�����6X�<�B�π5����5p�d0��J]>J4�n���\� th:���~|�7O���._��`Sb�фP��>�Ar��8;<��A�c��m �s?��_�;i:U����S�~rH�[kAF4�Npϐ�g�/��ai@��=� �L5ٵ/��?u��
9�Ό���U�N@���
d�oɫG ���~羮��ۊ��1>�Ö��I�\X&�@�NTc�C�J�G��?��w,��]fx�����~0��'���p!n����û�O���>z��G{�u��lrk�n�� |������]�g�ֱ�T�R��1e>B�f���̩5�j�qOp�P�n@�D��������M� ��)�#�Ô�VrB'���y�F�g��qK��6pO��`6`�(�G8S�sr�7lu�JnV����2��p`I@��+�v����l���nсN�:�v�\��[=��[6Ҙ�$;2p)4�]Ö�!YI7�Y�s ����X�"��}�'0��4:V�B��:H@\wnh}�m��!�l��,�a���*�Ё���������o��V4:c�,q��t�4�G�z��W�����T ��*X��h�j�y���o���O{��>��@��Qϲ���>s���˿�b�W|]��goeB|���{�����͒�.��HM
��4]�k9�$�B��H)0�e�Yf�h����%<�[O��3p�����+�]�`�W4�ѱ $�1S_L:d� � �}���:�0��q<s���ua��B�wVR��{�R(=��7�8t���_B+�x0 <q��r�k�|���G���3��܃>|��9�ѵ�'�>�R���|: �\P�{. @��<(���xl�l��Z�0J��]��(��^���8�6)z��!P���m��cY�@N3:V�r�e��(�@��9a�p�pN|��	�][���A:|��1P��*\\5���KP*�~�@)��K�ɠ��3t��h�y�qO�:#�o�`+�Y_�����H_]�Z��.�$���(�8Y�� @��"ᠬA*#������fso�ύ��m�9@z�`J@����6�*q�Ű9{��'� ޸z5�z��4 g ������������9Y�!���~����R���������~W.������jR�*] �����F� �r9(��A~�۠d�����c8{���;�� �����;5��)���H�r��L(FM�I���z��R�Q\L�T-����:��3%����s�}<�s����k/��t}ƽ��c8g�� z�q?:r�z%6��W���A����DO�a��;�������3��.��7�x���׮��s��n��s��>y�om�K�B� � �����������?8���ݲ��:i�������;��f4�B��lmx�����`>�#&�9�N(u�d����51Zu�o�1�����PH:o� z���#��j`�C)a!�_:�e� : :U�7����1���A@y��b���"?"�ˁ'G �f �z���+��^��Kx�6n<M،.@#Wh'iK��r�{^of��/,t�7D楌.�)���U�S7=ۭ�O�X�d�U�N��J4̰����S j ���<����*��uk���B�	�+ �3L�7����%��v�T���t|�D����o2���j�Q��Jg���)���̤U�V!���"���5�.�y�~��H�zI���jO8��&�*�dƟ	�%���z��6}�S�ь�V3$�`W�T�8��g�������������>��\١�p�H�-�����dd��XG��ak����f����!����?�s�������o�w�D-�s<p��>���%��'�}	�sz9������K+}��z0u���/�Ot`�y�2�m#����1e�z���nf�*��:q�-�����X˅#�}��P�i�P�CR9�u�>��Õ��P�5~���Rʖ17K"��ʬ�%@"��5��V����-Ur�,=�0�d�+ ���C���Q:��5�Q���58��f`� ��W�b��J�����*��i�ݹ�cѵhzwt1�8Rc�V�6�hW�Xk�WA�q�ûwp��- �69j�M��` F�78a8�Lu,֪��O_��w>.O���{���>���ޛ�3ST�5Yd΅k�
q���i��:(鐓;��S�} ��XR���B���S�<�KH:9����?�R2` ԭ��)�1R����\"��>��j�4!��ü�+
�hN��(����"�Ar�J�Dq	��N��Gin��v������$�1�r?*V�Q�o�m+�a�88h�w���֯3{W�ڕwO� ��>x�7�(>ͭO��lD��ܓ@���ټ�s�Xz�T�t,��L�����݃�	���i��UW6\I�۰�KcR7 �: �\9�>��ef=�0�0�}�3�����x�2�� E��,n}�Sx2@�<�~��NuNE�e4
�/��G��0}�����ћ;2E93�eg0c#,ZO���@�y�jf�V)��V\՛��߸Lj��:��6x�NቜFf��V�l��:�ޙ� ��c�5~O�+%���*Vic\k��4�X�8����\�Kw@��{�#�Kb��G�83<8�0k"�`������V�����٧�9��߿|)� Tjd��d�8$PH�����b�2�̄u@��Iȝm�̼{��2e�
҅�(�JB���J
zJi�s�X�}�M�G{�(�z�t�Ê"���l�.~Ī�j�&������7Q �Û�e��_o=��ݦ6�5��sV�����#%Cm���ו���9\�8�sa��-��p��O�M�t���������?�����Ɖ�A Z�}j�Si�iu�t	�sy�S] z�o���'��?��1��4�zc�H9��#"�Q���/=��u��l-�W�J�v�R7�܀l)j|��P�����×�͑���BGD�9�#�.�DvB}��[�"bG��^ۘ�P���H�L�YN���+�ݕ9��Gm>� �!��<�%;ʨ�{LX�cіe@�FE5��}Y |#��h� �6Jcfc]5{AmWR{[��&���Ʀb]�`Ƭ>�|��\ʃD8�,4A-�����P��8���9� �%��K��h����8�[�O!� V���U`�Ε��3��Ƚ{�S�`���C�n}�!޻|)�
`rO^�ɒ�*���Y���	���o�&�����#K�X���ZGo��Y�3�s9-�������|��2h{zS�f���=��� :UuE��8 ����Ȏ�(�!I$�� �#l)�i(�B��eD��z�D�V%#~��ZA�%T)��I���J�H�����3�
,�����Noo}��~�ޱ�S������w�|�,�q� �Ǟ�ҹ�Q}��̫�.A��5�'  X��ɮ��nnm3�a[��� ⣱NGo��4L�-��m�y��S؊�<@�+3-�ۅ~�2��� F��Rڵ@w�WD0@� b\�_E�!M�U� 9�Jl����>��BPrt���B"��gFExܬ��	*�i ����S.
wXf ���!&yK]ʸ�n@ �����E��Z�e&��l\�kKm�
�c�A5U3Hă��08�������0[r!1�74Z��``@�l���):+�i��s"?D��g��m���+����6	>�,����T�8!���:�#���:ź�=�@EP��>s��{�/�K�a���D`X��j�e�P�}��ٶg5�!*[	#�{�Z#To���:5I�����g��}�I�9�C�p����[OT�n�HiM�l��$�U`@�R
�т�S|����l1e`��zg�+�ٜ(�;.V*�1�Mrޱ �^w�@���e	��|,(0̚^����\&�<��ܮӏ���Oz}��v�[oso˂��h��c��}�G����Z�S����&��l ���K����߼�k���S��(0��8+�N�@+����J[��a�5��B#�d�F��,hޥLp���7��>HΡ��$���8�`l�.��'*��ӴB7�f��P*h ���t%���)���qf���]B
���w³΃]+0\ґt�0gܛ�������7��J��9F�^Y<?�y��Yn�C�8nUu�N�2�k$ƻ���l�S�v+�%ce���ei&!{�}�/JAU˵��<��Pɗ��w�g� �(w����X/�`һ�!C�0�� ���8m���Q2��������t��'O�/��7~G�&+�c��û4�U��{���=��lE�ʾ+	j�Z〴)m���Z��E�7�Ζ��U�}�S��}=.yd�ɣ1I���Lڝ%�����A�ʑ��5ω>����������`{�/q�6t�e��H{��o�'Z���FF�1�B:|v4TN�����z�}V��c)��C�=�����w������ʥ7֧^��=��y�������>s�C�����j�>��� ����V�;yݳ  ,�����˥u�ZPʄ�s��a!x�	�`��jt n���&���"��Ńڂ��-���!�,!(|��1�].?w?��H���A��0�����A�b��l�C�d��u@��� �kn��Z7�w����@F�!�SV�:���HiA�M���N~N)1���F�o0�Q�t�$��Nih���.��g���#e�g��e�|�����R9��{���#bՑ g+��@@G�L�m��:y�|p���Af�EZ|.��Ƶ�V�:��L�3t4 ]wp���~_���<��g" ��/+��8�����} 4pfCIZM�ި9,6B#뾐����x$����BD���hj��$���t�
����ϳ�g�l>K{t��1���^u�9-�B���@DFA�E�|�U��l6�?u|��A���x��iAþ��-�Mk�y�i�F|A;�Nt�����o7�����͉�W��g�N�9�=}����6��jv|����t 0+ �^7�MpT�E�c�.�n��z#��,[���[C�M�+e�ƾ[��r�g�<�SuN">N�L��藳&�N��~. |��{:��H�ٞ���gv߽ÛΙ*eH��8�l��&�+�Pd�22� �uf�6jrŲ]N?�����+��@"	�+�P�L���|}��2��i�=E�"����y��Wrl��/d9�Ξp>NޫbLr�g#�{Eok�uPw����C2�jKf�r��}�o���up��޺��b 4���C_x?���1��b6�F�s�;�,2��&`�S�?���>�� T:����!@BEt�BN2�\=���4�&�{�	���4�p�<�Vڣ����`��f�}����{�!x�fZϵ�/����T�	��И�t����n�xӥ�k���>��F�b���w��|�Z�������SaR�@K�J�B��l���@s���z�n�����;�?�?/^ܝ��~�렵yY�����i���Y���m���.���5|��C��Oj� m
9`7h2�a�A�L
+L�Y��}Af���xݗ>������p��Q� {�c����C�:Ga��TL�H���u�@��V8AԼ��dqd�ñE6��bď�Dq+�A��A��=����T���DdUM��Uv�f�V�W?��0��Uצ,��k���%3-+��{B�z���	��w�_|8�q�ðˁ�� �FfȆ��B����)s�#<�)�g�|������ɵk�NBO%�ٛ�E�	W�h�q9ș���6�#�v%H�g8C9;���O>yb�rx�>|�=4���p��FB���[O��KG��?|�~4p�4���~V?�=�X9\:l��%k�p�l�/*�Z����4bؠ�}�^�ʑ���.��:Q)UXVXݳ�z�5L����X_k1��4b)3X�]:#�|���,��ܘ��p$b׹�Q��R�$0E-�&G��Tŝw�哥n���Mu�k����N j��4�����6�k�����������/v�y�T�l��l��M[�}l�ʹ��ctޭÌ�� �8P:4�,3z[x� iW+���$�*��@bU7Ng��3)�K�̲%L��s�W�U�~Աa� 3v��;@r|~_Y�t���}|�N�,�Q+��z�� �|�̄��σң��;��K��S�N����lXJeP"�%R$i�5�~�1���]�g��yY�o����Y�9���FL�gĝ`��g{�?چ9    IDAT�Nz}x�
>��z�N�f
�V�}��E�];�՚�9 ��j�gR�T1[�x�ӏ<z��'|�W�M���	��R嬰���B�'���Ϡ :�|�~���	��1>3O8��� K�8����`x�=���ʕ�r��; ����u���ukF�Ih���
XC+` 0�Z=	�t��N,q�dvek���/��A�UP���T�J�M��d������a�p�p�;��6z�:�u���y��̓;wn���'�Ru*���1�;�{�s��ߙ{��;+_�[ǞUx٠���x�:�p�Q��dzG�/g;��s��}��L�엁�7��I`f/��qB���=�p�LW]�Q�1�P�8��,�E=7��B��YC��yWi�?���U�-��t	x�5L< �0!�,7�~����$��F�t��V}ٽ���g���-��;�߻ַ��k��
(@FA1cL�M��&8�5!��t���vߤ����}:�c��7�L�Z�(((��2�CAUPEU�i�o����k�C�٧ ����9�S{���ַ�z��{C��\BѰR��A=��R!K���Ki�r��.���z8����T$�#B��hc��g҃;B��)@��Vat�a��]۷���!�)�Ye^p�W��2i��@�5��fZK=��Y�P1#�Q0)��&^����۱]] "��
#��)j;�}�kt ������K��m.k��v�t��Cy��cI.3���}�� ����OºW�S�Q��}���+���6_#s-qˀA��}��D�پ����S��P�d�G�ŊL̮��87"3x��g�,������ٙ/�¥bP+i0�Z1��I����gI Bfpb���0������G���+nص����z۵}�Ν��X�H=�ѱ����T�9��C�'� ~( ��4 ��;��;qm��m�������.B34���1�$�����\L��
j=
��T1&�����M�0��8=Te�I��G��/f�L��~�5�Z)�{�:2a�~����4W��1��h�y�Dm'�d2'�)�a3q���,F����v\6{��0 #D�`+���7�SNE��3�H��f�	_ �:
2�@�j�xAD:���Z�`�֐>?s����1U�X�[Q����{E4f��j4���SREHL�V�	(�o���)p�L-Cgb�: ����}X�C>�4����%��s4FW�Fw�rđ1��e�S��a��]���V���l�2����*�*gLlX <r�<��C�]
�`MǔE�5`��*x����fj���8�28�Q�:e�����YQ%u��>�=`�J][����̫p�y������x�s�[q��/�=�f�G�I�,X����(v+��K���[wn�a	��um���:��l�$�w�瀻���1w�k@�����C�P�S�,�G���[ͬ ��Hu%�af&c��r��E�"����xt��a�;l�a��8�� @��]�b�7 6m�{�M?y��z���9�&h�NӀ;]eJK�؈;�"�m��\k3u!¢R� c�l䄜[P�����Z��Ї�j�׍̞�&��B��B158���iN�� �ā\~�8�:��[]w����E���"W�[��$�LeZ������e�Lsk|��}U����8qub3�*|DA� KNr��O:$=�X�Њt*������f!Y�r��1��w0�B�h����}�@-f_�M!R����l�%����,������ ��ȣp�^�{�s�/Zsh{�Xy��X��x�8�x,;�L=�hLl8ck�여'�}���1����u�xt�5����a�}[`���g���6`l�����mjv���B7��|��P�����mRy-��Ǌ���dB0J[�x8'����u:1��,��bX����$Fi숣p����$� G���7�=|n��_`��w*cd9�LՌ��F"%��* �3�����eMIj� �V9&�*P[�l�CJ��XRft�'�������G&`nۃ��c�׾"��̋6�5n�̕g��l���XtC&�cFh2b'!��~���>z)���u�~d�E�H��;ݶh=  X�a��,O:p1� �0[漣��>�۔�<pJ�. dV�U5%�p��LYWan\�Z�Ghb��mKd���J��u ;�Za�b1�B�i�v�X�*�U�UV���4T��g+S�}����*@z(Pe�e�v_?���v]k��o�9g���ƠZ�D�2�;D��1�9ˮQ,�oo��Ek���KyF���Q��k%��긚t�F���u]#�0��:pDY�.�d�]��E�q�_;��/Ə��z�t:���@�s?l%6�p"֟t2֞vVwVw<&�����t0�|F���a'�����y�s�í�����h�h�>"�~8FW�Y�ڏ?�0 1Qw������u��c�zo���"���ZYɘōи�ھ؂��w�X�� � ����S��3�qo84>�����{�m���T����t��~`�����@�͑��p��"L�)�7�V0I-pYR�23�x�9Xw�k��'_�������!�]�>�	D=����-*#3;!��/��ȩʙL�A%�"��BB�3�{g���pɢ�����G�  �\�R�c`X ~h� �olG��}�����EHZ��Cb"��tA�>8$��̅�τZv��HNl��4V@o��=�<��a�`����#�=���n�c�� �ڡf����[�\���u���m�Q�>�o�\��3�Ys��������e�\k�����ͬ+O҆Ms6PY�Z���B�÷gS=�"�L�����,ry�����u�XI3)P��on�4�U����SmYA�'Z�����^}޻q/�̎�4X�zV}4&֬]�3<����/Ag�
LO��}_ބ� �LN��'��.�ر�"�0k�a�� �A����b~�sGT�������}@��.��{�,�d@���>'���\Yt��Íg����������ې��i�Oq���F�0�M�����-�
|�~5q�jY��o�E�;�5�!��8�h��s��曰�(�M"fR�l{�\�d�d�jnb�&!�fP���s{��A;tb����.�k�:��x���>�nݺ���X���<�����Y ~��߹��7���w���W*O" ('<� �v%`~@_~�I �T��0������6�4�TI4��Ьr�3)�.z��y�(#a���"�Y��u��� ��.�?E��e���ʰ�f�1a)]z�ʒQ@�= %�O?�����y�T�<YD�:׾��*�0��۟�ν1��|Ls�C�ʼ��\�4��m�/�n�pJ9j�pa�I��(o �����r�ZD�������^��vq�t�瞩��ē��e?�[7}	�&4�K�02�fd���3�ٳG�A∠��$���ڽ�-y�J���#��
ЗQ����,���I�Eq�w-j��F��L��o��n��~����^�df|�������X�R�#�W/@���tI	���,���,�B#o|l`	Դ4E����sq�[ގ��;��+O;�����n�]F��r6j��j���pPR��(E~@�ȁ�B���t	�s��\�l�w~�ڻ�ڱE���#�;m���m�f:��V��X�z���Ƕ5a��
P��?��o  ����>�M}�絩Ei�"#����x��t�^Pb��D��Q��h>��]�Z	��k�"J1�`ۨ�)ڲ�����V����@��?��ۚ�YUVS6�
B�2����sa�"�<"���2%���k�`��2���`ڶΤ���:��O*���X�<vc�3M߮�`���9`@��f�*��:P��NbbϒaEr2��%�2O�]oZ�H��{Jk`�?�,�ϛU_��39����Y��M�~���@� As�a��1�	����$� ��� l�d�6��C|΀	bM$�0�P�V!��(W�T�`;@�f��^3G[�MR��H��g��p����Xq�	C��ğ{-��s���w�lT�`eB���e��A^�����쟰�@��*k������p���G����dq�6�t�x�0�~�D#Ѽ� �Ȟ�չ"�������TP�#	M7�������W,�c�h����� &&&�c��]�<`a&��&��C   0ߌ�<��7�������v�Y���?�96�ҝ�̵,��i����J��,���­J��4Ni\r�MP@M�0���"�l�a�Ӵ6][».�1�΢f�}�����"��%��c`Z��n�&N���R��T��A��NPA�`�넧d3� ˢ��}�c���rN�Uz�����y�3 �G�6�D���=cV7-W � ��fq� �! �4Ԥ</�A�p$�+R�( �ov��$�������G��?���ٶmق�3s������@�Ng�
���M�\�ט���d"O����@�@��)���Lõ畡�
l-���c���y|������-O27�rh��/<s9��ލ�g�`�<���7a���?�}h�1�XkC�Ӥ�f��X�PY�g��|]�rR^���O����X������n��s7��~v�	�T�k�߈yP������@�j�$��BBg,#4��	����~����:��v���4�@�1���t�9f惂(�ȿ�v����1_;ϼ���t����8���(hdB�(�̬����Fw�9D���d�<br3�PO��-
�)�?�ռn���):z�$.����v�)��`7��������5m���(i��gh��쇉�{U�����C�JBM��Y�3��Ϣ�i}M5=���~����K�z�s8��y@���
0. �Ȁ��&,tۜ�곱����o��ز� F׾2X���\k�i��v��R_��b0V�x2ƶy����>�=�؝2���ٔ�a��LL.Z��7?��ܼ����9��odX�>��l}fٌD�'�ۄ^���Y� ���=4Ѕ,;��5k;�֓�O4�63���V��D�������wq�g.X�|����s߅zY�{���~�C��\YK<DY��\r%f9#�̘|�8�������=��������ٷ	�)c.e�`��ǖ
ǀ%.QReSC�Q;a,�#���g[�N|�l�NP'�ӆ;Ӏ�� UeSd!����C ms9s�u����wn�S��Eh:"��=�� m���F1(�/�A]r�]D���� m�B��L��V�c�����a����Z$W��ʹ)BǶ�{�I�}V���F1뿼�U�0hϪ5{�o�{�D����%�6� FA��i~�2�vi�b	p���՝s�UAb��I��`���ϴ�R��S�g���*��jŰ2� �d��3{�&f��2�̬��n����$�����Æ���Vk{=�Ԣ?7_�i�r�����n�����?�{o��A��G( � �a5 ������=�>4��;h'*�e��lZ�2��a*y����^"r�o�Tr֥(|�(V�����nK>��{� <���ۭx讻�w��e�dE�LN��_:���~�2d�^�@^e�3kUCB�E1+���\`���
D�:���~���E���v��7��>�M��r��&�<1��h3�C%&H���P�H5��B�hF�H����5����W�ٰ��:��֦^�g@�	�I�Ӿ\ �z; �]t�-����޸��~��v:��R�''Ph�� t��Mn%P��j���]�4�%�e#�Ѓ>%XY]�y��;6��:��h޹Ȱʬ��1 ���L����MY�|C����_�3�V����嬭-��T�D	t�ۑ�S����u&�UZ�^pai�4pb}K�n���Zd��I��o�|�1��b1��?���1�^��d2��:R� � CXl�?M{b�*sX�� ��Sq�[߁�����<����}�B��m߶{w�D�7���Y��fћ�Cj[X͔ѱ1Bܻk�w�ff���5�_0>�`�Νؽc�|� ��
�l��-#��
g{T�"d}�:��gO0b(����,����8��u
�PP��Ab)� �߽W�������+�X���֝t2����p�=wc�}[0�̩Z��)!�܄&Tqd� ɭ�H�`�)%<~��8�~�^��E�Qݶ�}���������7߄z��PK�}-�iv�"� /0a$!��2�x�Ůy��c��o��� ��,I��~��9R�Z���q U�??��Y�W��-:A*�!% v���t�؈�	v����dEk�V. \��\��1mNe���UB��� �� 9k*aM��(�,��������BI�*ڭ�����m(qz����~5�k����H�v4��L"�b�K�?*��'�u���&���%�W�iz�3��jr�dϬ����Z�ip�&�p`asH�S!�:�����{���¶��p����ޛn��߆�n��yǀ�YU@�N�����HZ:*���P�G�l�c>�\��E���J(���P���8�Dn�+�]���i����v �������}�$�@)���#DH�1Ʉ�>�O "����7�:r�ŝN��W��{_�o�I��L��DUXB����� ����֮�����K�ӻv��|W��I�s�u�y�����6+��&S��c.��L� �ش��1=<���'���ԹI��֬��S�qQ����؄�XLe,��6�&�<Oᕽ~1Fdj�r���2	E0:V�4#նu�)<9�
Л?z�k���\�� ���5� 6	j���
�3X5H�LI�rU����n=`�6�P���'�;��r��_����k�(�{A�x��.v�Y��~#��,u���g>(� �E���qS�j�r@j�!��A���ډ��R���Uj��30v���k��j�I)r�a@Y5��1�|5�x�{p�KO�]���p�׾��z���
ش��L>�O�4�`��j�� ��`4ƈ�e��ɵ�c��u��q��P8�c��Y�2Q�65����>�b�s�F*���.����o�������0��)̅@'���!0n��?cb�r���~�E�_��b�����aI6@ �A@	m�"N�_h_�� R�bZ�8�Wލ#_΢���=�m�e�����3��}̚(כ���0F��-� VfR�C���43@�C�s�C-bӢm3v�x|>`��l^�F���.��%Z ���,I݇x ���+��󺗜��ɘ^9��)!P)�iRJ�j� d�Z;! ��d��w8��O�ݴȁC(BT����o��m���_��M�u�Z��Y�����t� �4RM�[�l�_z�kD9�Us���mt�y& �2��u3�m�y0��ڡK$��v��_�����l+R�wLP��F�c7>3�:+!J���{�O�pU��U�\&�_U��K�	\���@		�k:�R9������a�����k7���Ǖ��s3�0����&L��H$�Md�p/`p����K��0F�QF�Ѐ0�f-Ɔ� n��\�$V�Ƶ{yFk���boT�7Ls)
����<�P�Ad�{�L��Ծ��$���*�@�{I^���"ڜ�
�!dF�����؍��w��~�fdrg��x�������‎����cԹ1����&��?�:s36���x�;�]��X�����������W���	1`�����M�x$�� :*����D�B�$M�,�?ń�Y`�hnȝ�U��uC��Km�|[CZ�M���Y� �����o�۷���5RM	�i��9�4�(��t�h�h��Ҳ��ٽ�s����e�Ev�PK!�uu:J��*"$�i|v��ڼ�h�|.���5'�!2���&]�ҝ�@
�y�    IDAT�iG��&$��)!�D���5
�X62s��f��&�K�F�:Va�,��v�2�����OKєg:RD�"��rN|���i�R��%9e�LM�����2v^	W@JX#�} �)OP��$Y 0�v-^�����kO9��~�����߻������k�f��
^���DG�](�um��F�
��:D!�) #�Gg|q�=;v�5���G�3�#��$b�a뛼�,�x�����	��<3)��r��.!�"�"��¡Z��1�,Q8��1v@���BREc �,DI���_c������y�~���?���V\�k�)Q��e/���I�-e��Yx��ށ�Hf��뿼	���?�=�_'3��> �M�d��t�0��K��^@�(D?�o2�V���@-�i� <�8cw�����=�gh���޴��~ju���ǁ�C `-��[�)��Dj�M-���x�t���G� k��T���k�t��LKU5�Ě��������zUr����-q@����9O!����1u'��a��E�����=K-PI����g-FY�f�[q4f꯭	Vn�zf�$���#�̐�TֆP�<��f*y�5���/��E����t�V�`卨���['�tE����xF^�����" +O8/�����^�Yv_m�M7����x�>c�{�C��
�DkoH|���WA�Xd`V���M� ���3�|2!��.*h�gg0�w�\�����{+�R����2-��;�\,���h�T^GT�ek3��&h}���� ��H���)>q+I����*�Q܄{�ۂ��{�>�X�=~�dA����q����=�9��h��{?%R��|����|0ea�^�c�=�����{�&|���w�M:�r�.��(��x����@	�Q��D@k$���T� �L�D@�
���t3�����iFv5�-��'?w�CC;} -�� ֚�ԇ�U�� �>�����M��?�Ji�Hj)���!bh���D�){�����D^:����8k�>;��������zbZqP-&s�ϳ^3P�<��'��e��WZ�	��Ӡ��	�E�kR�f���ׯ�ł�>^z~W�e�@��?T�� ���=�;�y�����jj�&�g+��B���v���g�!�7�<%�4�=B!ʖ�gS��Y[ʿ�a��+��?5�O:/�����W�O�������o\�:-��a4����QM�CB��-A� (e�-���'�us�4��[g���@���L���Yq�ëg�,�X�����UY'.�=]��I|֋2��� }�?PH�,�|��rP�g�,�K�U�O�ۢ�l��Rl>�x����!�~�>�+Vട?�|�+�ٵ����\���\�!��_�����Ǉ>��_�.����v��!ḍD��˚��@�cA���@hb��W���fB�_@�1�լ@ �E��{vf<�E>l��Ͳ������� ��]���CD@�h;7^��r:6'�m��G���k��(�|"p`=�m�� W�{�e
��,h(g.�/HhZ��e!��J�h�@��l �mb�U�eT�8�"��.���ԍV��]��z����Ӛ�_�Pi��5��y�B���_7��_̵��AF�]��i��:��e� ;'	�y�9�t�^��5~V X"�k�X�e���su�=�T��3 �`��7� �~v L`Y$,���HX	+c��0�"a*FL4b���b��� n���0��I�_��W�]\��m���{���-.���Xc3�zfu�u���^ڹ@!��C�tD( �R9W��:$��E|�]FB�x� �[?�Q|��ŉ����g��ם�Yf�1�ˌ��qR�Mֳ%yQ1`�~~n���1�o���uw,�5+��eM��&b*L��4!�{NGuH�����{�8qst�>c�΀i���ׯ��_��M�����c �HC?��C `����?5�3�sB⌜��^�dn�%�UšP��˟�Y�����N�s���{�p_3LPԂLmk\K8kB-��2����3�S�ib��\�A�(�#�F�!���M��
;����M�T���Z�6W?v?O+�k[̂��/\i�5��N��y��.s�!����ԩ���a@�L�2��*���uܫN<?����qπ�l�Cxx�����x�m�ˈ0�\;Jb	c�$p��B�!q�P6WA������frfH=�!-��=}a��=� �-9Fw[x40�l.�k���se��p����^){�e�B]�Yo�Й�<�:⎙���������q��suʫ_��#��LΘ�}.��h�H������w��_�����{�}����㾛n,c0�ǀ1be�X#&c�x��Cp�r��P�%X���R�>���h��1���k:���]=���
-�c r���=xzr��^�;gS�|6'�S��~in/r�Ӝ4.�tJ��v���D���jT?[(!��3��Q�q��,W��A�� z������4Y]mv~yk��	,�.����o��d�:�Q�c��y^C�^<Iu�\!`��L��*Q~�����5��~dN*w�� �J�d.�z���7���4P{����c��&�D6�\�,�c�a{�׈0�Į<�T�������m���}���/��8�(��>A$�?2�F��̅�]\�	��������X�@�'�p ��QZ�^P�1&6�ـ�����Ù[����֔8H���;��t)}�+��>"�E�9{������t���̛U�k�pt4��y#<z�U�e]�/�)���7	 `��#� @sCX��5?��8�Mo�w����E���p�u��ɉ�L�7S1H� �Ē!P�F��l4�+����*6�) � ��A��{w��1q��ͫ�SO����Zbj` 1X���!z�^�m����m�r6%�S��  �8�\X ����W�ffA+�KM���&����1��c�.�����Х_��Z�)�ʽ���u�sۊ���̕P+&~K�Q-���I�Q�<�ſi1��ҰL���������t!�1�`�qM�!P�T�'����M6I�7P�����Xd@�S����m;���-p3����Ym>�ʲ �71jʕ	2rkL2 ��c�ɧ�%���ψ�om������ *��#$��K�H�u Y��I݀*�C��G�,�~�3"hV�
\�4N�-) ��-@n�υ�?93�dg�"SfMw�g�����	J]��4rҽH�Ϝ����#
"�,=�[I/� ��>���c��mbD㥛�|I��76D�B��E�ݟ���+����p�x�K1��lΘO�8�uu�N���үbى'-z�mw݅���/p۷�0�L6Q��k��?օ�����-�� k��m�0�sF�0�{��3y�
���z������}v�i������d�!�v �]q�-{��ٛ�'�S��mE#s��M�LQb  f�A�I�xQL���, Iɂ��-4. ��m@��=.�Cnl9��I\2��P��gsE&�5�p��E��`9�5U�Mv���j3sS�<Sx�A�<���Z]LJ�J� ��(+fq����.PJ��r��9��9̓�q[�^�r��o�%� UϦ�쓚Z�U"KW��Mд�Z_�m*�f`�I�����l<�K^�Ki�>p��9����</�K�LU�Z P��m;p��k� ���0+*0*U����4b�
 k��I������J����x�>h �2�5�ЍA����3��3z��KY�\e���Yq:iyh�,e��9W��,;%P�.!�K@��p�g?������?��q���2����f��gC@�G�{��?����fgq��>���X�X���a*�����A�%E2kp3��+����ٺ ٬m�u�~9����0���7E�:阭���>z�����p  p}8�vPu�kn�M�����m���2<H~$�����Ǆ�����ѽ��)����rK�>< ���w�&|U�3��� h��&�[�4 ������K���g�^-^��I`��͛ĕrS�a��r@&=��z�R} 	ź`.�X	w��H��^ȃ�t���5����|F8��n?	p"&	,���:���t���!�����`�@�}�V 곇�� ��ץ�U�f��m6W�!�?+�$�x9�z��Y��P�+�yI5������[��z6iN��
r� X��	F(��V�d��q���i�"�"�w��z�5Y,`�Y�^��X
�\���-nY�t�0B��?�)ܤ�{�kg���q�9o�ޔ1�=������_y7������?�al�뿪�(T)~(���(,��G֜ځr!ٛ0e���	H��B@K@j21z}��,!�X������C;�4Z�K� � �q�� X�]r����f�����Χn[p�zH���sr_~�X@Yi:�k2E�Q��(V�3��~\8��Q�������X�XM�z�Օ��i?�F�,o�S1����98Q�kZ���g:�]����yʓ��ޗ���Á�#��msj��>8�vK@Q0�jPY#T���Q���>�s��o��G	�� 2��4��o�k%���p���0��_��ٳ7}���+_����5��ݹ��������FG�s���qY�������>�V���� ��  M�Q ���X޸��-y�rs��7$j��V�L�sYK)e��Z* W�$�a�t�����l�q���k�-�n�#�����H@d��w^�i<r�m����+p�/��e'<s�M�-mf�{�k񜷽}�����^��?�ea<Hd��0�y���a ��J�����9C��<@��0�M&uP)�r��{S��Q�nχ��,�����p �;�p0I�C< CZ��u{�t��&�`��"� X��Tz���L#�>@��3�i9	�Amo@cP�[֐
	�����W��kX.SL�O���@�2P�m	�,���������w�b��s��s�w-�m�G54�d���d�Tb^�V��<��z
`*��Ъ4�#�>�^�Y���LV߳�N�*�Ǚ8�'.Y�}�wp�E�����. ���/?�-x�ɧ��;�3ػkg��bBA�h��@JY_WƲh,{�Ma��v���g��J�C����@� ����؛��H'��5]����h��� ������^]쳈u_;�y!��
��n���J�@�e¹��� ʾc�rƁ]b<��o���~�����w�N{�+��}�����w��S <�g���s���q�'�[��M|���=�U�K�C&��gJ3H�b�(�f�(����c ��?X��e��&��ZȞ�9�e�̈́��&'p��5pۆh����T�P��W˜s <c,�O� C�(�^?��_�N���Ǜ�c�D,�A��B�7��5R�m� .9�T��
L�(�E �V��,��B9�J\%T*���
)�Ӄ�U�_��7s���l��bn]�)
§�u�{��Ȭ�+܄l��~Uw+£�s�6oZhu���p2~1�G�3S�^�j�*�x`,5 a]P�W�4��u���㇯���^����/��l��&�(���Q�=qQ �������8,(� ��F�F��g�p�3[	��
F9H�p` K(���4\"w�,<���뿈I%P3T_�,�J���Na�d���9U`0�`(���,��Ȫtl(�Ŷ�c���\*NJ��?��^�2l�w/��ܽ�߁��Q<��jtz�8��p�_������?tם��o>�{���Ϲn�bN�1${dD�*��be0��l��(8�3kC��DY�����sB������_�����������@M�9��� 41�����g� C�E�=4�9���Ծ���vڄ؉�D�7�������O�[S�5�L�9��s\31�Z�v�%O7S��(-�_U��`"�?^�:��\E�^��RW-,��7�I�N�z����P=�@��:T��i�v���'�����V�},�<��Ε ���YA����Q�*��YA��|ƌ�+2ȁ�	������Z �~�7q��b���K��������_f��m�7��k�Q�r���S�}.���@���5�p�Û�|5k�X
��׀;���rۂ���]?gtC�$}�4Q	UL+��`jf�`f/ �W�7�� ��bY^[��5
��C��<[��0�/�92WW�}w�����/Z tG��o'v��g��ŲE�[�����~���%�5qs��T��x�7�w#B2!"��Ӎ vvT@,�`���6��d��rB�;��W^Й�w�Sl� �k��'�6����P�����k�l�I��fr�oS�S�Z�M��Q@@��=����աo���@)�g93ڜ4x.�<�ZS��n�����v�ilQ~J���5�A�j�j(UL ���`�@2.���37���\�}%�K�V���	�h�䯫�� K�dH�]�O?�iAJ�<-�/+{�y�,�	R�����R��,Q�DTY�M%eά?"\#�V�癿��8���-W\s������k�9��T�[B�ygwE���Uγ X��U_fm��TmMS�ڜ��`�ԟ���R� B�8��5g��:�Z� s� �DR�25,ӂ�@��b��'��z��j��a�J{2�b9�46���-���$M�jc Nr�g�À�%k�� l��s���K���u�$��k��86��|?�L�	5�O�1�w�Ee%��$*����b-I\igd"��%���m�T휑ی�~BX�lK�|����O,i0O�5�R\ �N砒�Ug��}���۶���B�re��*9P!�!�V���r�A/�MXԶB�#.���z�Fe^fUoK�\.sLx�yяG�VU[��Ql�j��h�v����[8X�Rf7�2�爴b�ꐚ�]4�,X�T�M�X=h��	0TP�*5�ʁi�pN�c�����a��VV[�A�]
z
��
�`��ո�3Ş�q�ϼ
�;�<4��{���O�GR����(&a���+W.z@�-A����ÿ��$,#̮��1 ;��o��pe���9���жp`��?�P,C4 �˺��0��~�J��R�W���r��i�x ��a��*�B '����'�eN�©�����殉���v����bv׮�����.Ŧ������P4� A�FU,c��S��b����7t_~� 8mE�{jnf�RB;:�&�Z��+�7=#���R'!Rnƻ�<���t; ��.�|�-=��}&��� W�t&F���c�  �OFնu��N6R +�� *)W���p}�z���Ȉ��j�i���϶����Z#%��BE���j?8�S�x��a}��+F�-���4&����_\U�d�v_�!�N�c��}��ޭ{������:�a0R�r���Z~�k`v��-E����!t	�M�Җ{N��_��!�X�|�J��g��T��1�AX�&����X�~���4���?�
��y����+�P!������g�R�h��0b$�b ��BA��h����f������R�i؈%�� �<�6In��Z�d������P�o��F��#�Z� ���z���I �����DJV��Ht�C�������m��p�<k�u'.�����o��B=&bT��X�ZCMq��{��fbh�?������)ؙY DJ@��K�όf��{����s���ǟ�`k�M@ ,�`$�&,t G/����殏�����'�h3 T��rQ3�`�j���{����\��`������5Im���_����Y-5��&=*�\o�A}&a�.g�Z7�W�߬���q��t���������RȂ�����b+w��U ``,�&R*�0�>�VzCIM�>���S��q�y8�����wމ���7_���:R�Ǆ�-��(    IDAT6�߀����ځT%T ( ��V[/T�2�\,��6�����GFK84S���Y�j�D����@j�*��>c���ȨRvQ�x��� �-����j�'�X�a�|%����d�^�b����g P	�mH�6�a�볟��!uk�3������~�7^�ZA���B���k�� ������H^��-�7Ȕs6#g��,�,���Ho��G}kr��k�� �M-kO�'7ui�ۈ�� h� ���Ŀ��m�OJ2�b�Q����4�='v߰T��v�ņ�0�*���GOHR�r���B\�M%��;A\
n3 ,�<um %��gP���:r�]'A�p��мlzp�ȡ�*�r�������f��fB��� ���5g���%�� s�'?�k�T�&�xƹ��_�%,��gf�������t����0F��5��HX�f��Y����s����: �&\�|�i��%BXюj%p������A�0����;�Q��c��Z��)w����'V��vc��NJ�-b��A�^��Y�BX�e�^ڬw���@/�	|�l��K��<��?־6
 v\s�xV�+>�ql���T��2q3Y��$���J~��חyVw'��P�'=C�JS��������3�@�Wo[u����=��S��#BC� �C�3zp�ރ����l�ۻ��%�)�m�D��6���h;f:��?1Ë���%gP6a^6�U�=M�=
����\%�kU��:3`}���ʃ¸��Q4�Z��m�K
܀/t�rm���[>�/�l}��s��t@9$�|������a��Z�۝�p Hlfpy����h���~�?�� _H`0���Է���I,�.������b� �X�d#)�:B��e�Й�X�z��{1�gϓ߰5�s!�yE�v0��mڿ��[�T	L�}�X�]h�kMmj+��&Hn��1J�)�lQ���aԺJ�5@JUĲ����_�b������J/]���(���ܒR,f!)g3ܪdEt�?��I��2{͆-�����n:�ۍ_�_����h �k��D���7���XB��*��\�-�J�׬>{�$h��tj�1�4��3O�r���_?��=���p���ͷ���F� ������C � ���2=�����~O�M2{�W9VXN���Le�E ��X�V�5aa��U�9�SRS~U��M+��C.Lz�;Юa�4P�N��l�0lS���@9 E�A�߀U�Bu����M��܈ٹ���.��q^�krcQ��9��L�AZ�-��m���+���]�U�{Mت,��N���3^��ڵ�~���_J�^w�D�A� `� ����(:C	�ؾ��Q��o��28��L^@���1��o�~2��)UE@efe��YZ]�_b�őq�& ��٫��?��9�v���4ki�Ni������y��DHd����:�Y
_M#m8-��hB�'ױ�Z,�(��
�e�w�~+���C�n;�>��?�l��4�����o<��?j�OLEaM��c�8 ɇ�Ir��Q�h,+����U�ꥄf���N9��^���2}@�{�mtdt�i��R%�����g�{1�� ~� ���7���[��^�,��w�AM�M#����$4s�B�{D���@^N���*�p�נ=%�R���!+� ����@�pZ`=lS�~P@9���ۻ�ݻT�r]��޷6��^��F���q�{dڔ��r��3��ׯzV����k�f��W�9.� �Ǭ����U��M}���9�#s��p�;��I��F,ֶ�y.�����߿��a`'`��/;Fb�Ef�Ȇ�=��n��l�t�s��o��JLz�<	E�7��u�KV������Z�YB�4+�	�HE��Vh���_bc��&�J�$��hH�4[�AI+��Pmo��ZK!���8�P�m���G���X�%�V`��$Uo���>�U�n�Ÿ����aTM���7��3r�L���^����@��j9H�)�c@kt����I)g�儙�6��y_y�����3�&&W���齻g�ٽ�!�W�~���!�Sh�n�{�tN��j���T
L�����j��g����X�Y����6@�_s]����}�i���Z5�BҒB���$�k�u]|灝oh� �ES�;MC��(�g�����`@�/ )/����v�2ʡa��8��3~Oku�
�H��'��[�X\<dc�0h��6V�'��Ѐ�b��~D�#^��8�MoEX$U���p�?�,��<F�=J@@��KТ�?p?LO��\�Zf�����΄���%�p�j����)������Hd.*��ř c}�mN2DH:� yt����;$�L4�/ ,�uVC����R�֩\q�$���ZÇ��k׀.���YsKC!鞏Z�ЂMK�K�$#xn��4Jڽ;w�+���
��?4ݏ��S�'v���f.� �,HP�Jb��5��Ā�D��X'0��>�,�20q���3�󿼤=�mͭ����Ժa�{��;w=�c����v�-O�~��v���|�5O����g�~,�4j*�Dg�U�'X� 2���I-A�C�T=�j�
ʪ������%�hԖ�o?κr���T*���+���z�C�I��V5f;�jٵ���ީM����Ί��>d�X�u�z��k��]�[5��@����`�{��\x;!�_u:hd���CM�_�������ywL��1��/�dtq�������PP�|�||\�pͯ���'�	e���M�Y�ZFe8�it+��f� ��$d3@"�B!k�,s3İ�d}��*c}a*�Ϙ	���Y8��@��@1��^��Lؚ����3�v�L�7�X���-�%�3R0��Z�zQ�Y�Ƕ>�G�w���<�'�u��!�b�אɬe.�#�Ʃ����n�od��"LZ���ȫWb���������^����ɕC��vl�	@vU����SG�*8dx���wOʛ���6%��m����%O���UK���eԁ[�W&�W��	Y�#�DiE��%��N'� D�@��ځ%�x��������ʦ��.�k�J2���Z��]��-�!��rp��T�Ex2����B�?0H�oR�c}��N��k�E���9��P��W�:~�;��)o|kw}�:\����̴�u��H��H%�2�-�|��J�&<����@�_=��D|YȺ�և
X.��S���� �Է=��t��������z��T>�u�HF1�1�Xc.%�4��m���Q
�Yք5�[g�еRsL�9��*�՟���������26��$묫��0:�i�R� Ţi�,�~%C��on���qM�q��ѿI,%��1�i0�ܣ��9�OЀ����h9�lձ�>�s׎=@!
��j�[���rK_|����lۢ�K���h�JG���Z�yx ^��s(���V�aS��f����6}��څ�n0T�� 5��"�j_l�ՁHV*��`-����]vM��j(�����*`@��^���^��m�̱@��
b�[7(SÀB\���@�����:&F|䅜kW�]����3q��<���?�#n���ޗ ƃi�@V�p0@sX����^e��Tx�����< �<S\����2}*�ّU�}�����b�����	�����k����*
̕�Y�~��h6�g@�\�����_��^����`[W,�wŅg�S�
l��6��Fl����\�m��5Xu�Q�E0� `,F�����-��3|��B�+(�$v�d�HHQ����V`�HH1��]� nX�ɣ��yw���j�������ё�Æ}n�����41�@�1mi?��8 �V��m�m���g����M��m�F*�Τ��'���ʹ"pe�h�wF)kr�rb�ɪUd���g�R>S#�͉
 *Y�V��l��2�V��nr��4�0AU}Թ�+��}\���d2��ɪo��Y����Y� P�ӻV���� hQa_�|��C����8��on�����#�k��d$��_��"��,.���Y4�.%�iaH���-jX]�y�^EK-c�,
}L�/ᆘj+ ��/��y�����GU=s�@)b�r ���⚨���C�螓��m.�kPi��u�%�L���O�
M�4��j���V��[S �5���Nıo|FW�^t.�r�zl|��������G���à�(.�����X�J����b���h(րl�?K�_�3��]�o�����W^y�9�@K��u�sX�tͭ������N����iR��Т¶8d��ז�z����䄔2RJ��5��$�n
�x��4:�A"^M˧d���DQMa�C�dF1�錋�GnKb8���Z?2����
()m���fXi-��tv2�jȦ	�R����i>�:���*5|Z��K�Y^o���eC�R�ݚp��k�t6Kt�6�POV��_x#Nz��X��wۭ��c�������� �KH_s�;��+���F����(�wdK�sO��l�ż��y:'M�j���߳��ŕ�5G�}������g�#�ѹJ'42k�<WMGD	f5� �)�mK�������s �97�~:�m�W�}����� _+nU֩��q���8� �k���'�z�hh���ZSB8�R�����b�#Y�������)d��� �~���ٰˎY���o[����?���Q�t���Ȣd9���T����!���v�-�����ζZ$(W�>�.i-y�Q4A6
�_�).m)�߾���N	!C�U�K`a��@@�3�gBLj��x���:��Ț;��h ��W�k��gU����k0Pi�zF�����M1-���A��栳����5�����HӼLk3fAcx3�af`��י�SSx��o�Ȋ�Xa�}�S�č�����h�%��jʃ����[1��a����\<"4�x���[�I%���߯W�]2&T����a���ޱ}�~�Z�k�8��hĄBihx� �0� ��ٚ�1�|��f1p�Ke-��"*�zO�o*$6;e��eF����&gF.$DT�Nx�8�o^t�מ���:��H6��xF<v�{M��#�@��K�@&�UQ�(�s�DKe�S4��3xlcG���؊������E;�l���T��E՜ 9"���P���v�m۾��͟��
z^������L[�a�~-�xlGq��{]��"��uSX������VT�rH��ה3��
X�{t;� R�:[F&d�@]��y�)W�V8��QQY�!\�^g��g�r�,�z
x��_ʞ�坨�=,�K,6'5�,�q!'��l�ʳ�X�|�q�?��ωE��vTM�V�澷�9�<�E� 9�H�����)%�a�k��Y\K�-�^��r�*`�f��y�!���Т}_�f�V� ���婝�^�����P����UV����\B�_v��ԩ��=8�z <Hή�{��O���ɮ�r�j���^�"l|����,�X;�Wc��u��j��@~��?B��|�"�� �c��Z�@� ύ�����@�u�f�m\w����7?�=��:�[hbjj(@��k���$�%P
D�� �5�>��J�֞�)�u!�pk��@�&8�u�*�3��R�͛n�$�� ��45��ӄj�0�2��dm`�)��� 7so�bE��gHw�U���_�OU�Ӿ�����Aԯ�	�}@g6t��o�����6����TH�V��k���4遲8.�W	̘\{8Nx�k�yk{v��W��$�?���������!FÚbjc3᪪�:���y���V���s[>f����
 kN}�
��)��B���
��f�5��n]��c���r!mfo�����?�1�m����O�m1�E�5`�4����>o~����cQ ��I�@����U�����o?����E�oX{�+^�3_��3�2�#���y�\Gu'�=U�v�[�$Y�e-�$a0`0��&���`�Y����L�A�M�IH 1KⰇ0l�7llly�d-^$Y����izKw�[5�9�궤n'1���J��{����Uu�����{����GA.}-��[��^��GKsFXN�Q3N��ҡը�����q������=m`ڬ�����o�my�=y�q����*��M������Ǜ���!W�*N��.Zz�f.JL]ޚP1�5���!�@U�	
_�"�w^Tф�x�)��k�y'�y�r���
R$�6��,���S=#�(6����T��$��OLگT�J��E
; �|G�
�jP��#�t 9�g�N�ĉYX������#��\�J?�書�_S\C�����ȣ ��LM2=��/�`�J���!�-Rp����:-^�^2_�"�R����è��%2ߣ[� �eh��i|�K�-���i	)ȑ�2.Y�i��p"0tlv�u��GJ�HA�K�����g@�	�W5i%����"P����^�r�[��ݳm����pZ ZDhA���㐱x"XVk"Ŭ aD�4iV�d�|�_|Y�%Z���4{ϴ�s�t��r�s2�g�3g9���0z����}{Ǩp��w��cҦ �s؊�}o�pW7]������Z�� �t?�~&����w���U6<>&-�*�������<��ʽ��sV��n0�ɿS3I#���*�a�C��Ǣ�yT�/b��4(_9��$� ��5 +�2���/��:�n#�!i^�B�Ĵ�X��22-����������ո�k�� ÀP3A믓��20�4xS� ��7k6�{T�/u �2�����	�|Z�!��8���t�)"q~b�
(���Ğ�1 &d@G5F!� ���3��IX���U��3���Ò �R0�|�
��,��[+2�Rx��5X��_�y6T�Ϣ��앸�-oä�h�m-4�8�6���s�`81�H�,)��dJF���5PJW�Y���+�~��c��{`r����',�u������ٵ㠇wEY8�M'��1SL��a���݇�r��o*��Ԝ;��G�[%��>
Q�Q� ���D6�@L��'.�TӚ�Sy�\C^pb�H2�F%��S&A\^H;8�Y6i�.fJր�֍�  �U���D���-��*�Ɛ��|A��e�e�,=N�@�\�<jb�ں '�o��Y�#����qK� ��,��;���X{�*=���58�	2d`�+�D���� j=*�Ʈ�[��NN$Y
`b6 ���t���r�k�'I�8���� ���(�ɉ�f2XNq�-�H�A8'��5�l��C�<IE�h�ip���	�o�<�J�h�	ɘ�K�֋��pF�uj(9/	ث�[�iK�����
��v��K��������b��(�-Y�e/�}Ӧ����x��{�����0��s�X�l�Z˹�	�1��������	P��P�a f�X���w���+v������N�5{r �޽�@p�:o�w&vZ �w0 ��濵qתw�y�g'��&�h����d�06��"e���O^��%��� +���>�[F��d�`�DE$Q���Hd�Z�}M��8>�0�kq,�2��qC�d<:RA��+v�3xP�S�(l�
�__��T�|�!"��h��Μ�.(�����W����X��4@�+GZc0��qz������7X���5C(�SP'R�X�A,�X"���)�#[�@��
��̃E6�3�uh�r@�s���	�mH�	�s�B,Z0B �]��w��Ͳ��� <�-���Ċ�C�!f`��=��0�Έ8x�d\P��>�������K�+��B���gK?��6)�b���dN���c�+_�u�������c������̳p��o���A�<r�Ȃ���oyn��4AZ��x�}�����Q:�i~`� %�u�zp    IDATlmN,Mxv����<i�o�����렞�v�WЛ^�	y�螾���=��d6+�ܔ�7�< �r�$����wǋ�v�\�E�� e��,`�?�q��BR�P:5A;ﵰ���G��M4��&�i���l\��ÁC8�a�S˂ wcLE3��1���T�C�_��w�h$jQxLqc	]�E��hub�������{�.��kP��������d���+��%���ѢÄ"-�{,y�z��������f�;gͿ�������Cuq����H2�B $m��-�x����cx�K|J{L)� ᰐ\#�.�����C�g��0�!@�5K �8:����18}�zߠ�����Rp��m����(���	�Ez^� ��Ω�(#	��%i� !�T ����yI�:l���������w����~������}��=x ����7���_��݋�����.Ǹsh{�� 8�䙄*�������HK@k�I��_M�6�uTvՒ�U�;����M�w����l�1'��� ���� �YW�奭�c� L��H��{�tŗ�E1\(-p�lU�o�?��w�1$�����9�w.����A���}����u�A"(�&�nxQ�O�_�G@���+�
�Y���8c�R�O4����x��'��{��T��?�'N��(�&eD����@����0�Z1d��W���;�=���_�m��N�~6��B?A f|���_U�/E\)�:JݷW�ΉeKC�y ���6�%�1=�
pޣ��ֱ��S��!�<�bIy�|Q�d�>{�����ޗL��P��dX,�ϔ��C���L�<}-+C�#���Cx!"PI�T���J}�1%P��S�Sh�_�,��w�6�^�~��'���]���G����5[�㟿��?��Q�?0c^����(&K��'�U��s�b�%��!Z$
��>�8p�?<h����~w�Q;�<6���Y�=S '&ƛc���,C�ee��e�1g� �O���7�
�ʢ/�bz!� ��J X��@A��'
GUj��g�w<�
����l�9�pM����4�y�v�«�z;^^�j�ᙏ�!��z��I��T��eS��w�g�f�w ��-���^��W�� ��C�;�����=���n�{v��9��Z�1k��H~���;�БZs|���+p0��"��H��v��P)��V@�:	� ����	q,|�ٳ��Ep�аc���
�0nyIz����%%k3�Cp�e��+��Խ%���!�2�<CRK20���*RC�@ &}������
f�y�Q�l�q����n���'Ԉ0`ӭ��Ob���:�+^�j�x��0�	p�E��τߟM�Z��8}@a��|�����j�3��v�yk�e˖Q�oF��C���'Mc��Y��ke�MY ~��?o�{���xY>��%�f�l����e�NT�}��}Y��{t(G��I��$Z5���TC�؉Гk��U(F�CU0��SZ`���j��^M����'\�G ��i��q�M���&�z? �����XI�L�EU�����>��Pԍ`�Y��E��4獹F��OKq��Փ���wi�,����$ڷ�b5�)Aa���Hw� �ԡ��?�)=ab}�D�1��
$�(~y��F��A<w�ɇ��7�"M��kA�)��HH$�<��F駰
v���+(���{%��iqa�u>�e�D�rH ��Y��X�����o^�[��y�C@�1d�?������:���֣���9���u�f���sh9���(��ϧ�q�����B3�A��Aa	%1� �7��7�n_y���?�k�����{u�ྱ���,C��^�5���g�b ~��U���4e	g ���O�����U�H�v��S���Ta�0F�&�K�~�f�1 �Q*�tw"U_���|�Ԫ+�;P4ј�G���S�0���u��l���ûXj$��:�Q�XhL�V��$��GCL
64>�#� ���=���o�{��f���B�?�4�_��M���A�6f�D�#�d�z��H��*����WF:��4�0��T��,UA�G��˳D;�{c#���a����5��)J�����`:�2dy��	}!�隊+9�6�p��VB��ᩒ��2|b5	ߔz�Y����������~��=�[��94�ǵu	�i-�[���`ff��ۍ��}������Wc�~e��H%�*OgM��7�+ŐH+������1m�[�~����?�|l��Z>���gdׁ�{v���<�ʬQ+�q$��� �O�}�����(�Sz#]=|0w	&[�X�'2�a��J���;TH]� $�d�N�!T����)3
ǲP&@����?��YqHҸĂ��Y��A5y�h6 �`����GQ������C#�]�u�v���� $�t�F��$R����G�c�4���l��'�����{��u߆���(�Q��Bf"-m���n�ڹ�6�Q��3V��-���9"H}y)�9-`w��U���4�������o� şơ���ϙ��ٳ!"=�Z��-S?!Z2�t�~-]��q,P2PU��X	�g"�u� E�x.��b%P&�м�o���zoW����(n��W�ߟ���G��bВ���tc�喛�����:���u�_x2&�Ǆ��t!�{�.�8S{[{`H+�yx�բT����g^3�5��8m�̡E��`���{G �5�4Y-/(����L�祭x�룭��<JcB��|(BV��& d��!x�$6SO!h�
���]�9�D#�xR�.�٥�9R^8%�I.�6�kzY*��y�����G3s��9u[�0�������b������6�諛��Z;��Hj��g�_���L~@�����i�8��^�E/y�Q�	 �sӍ��ڿ�����b��蓯֋ �K�.}����w�Кl�99YAB�E�ЍO�Rsv ��y�	.� WZ�;�k��vc���:�G�����߻�̝A����}.�}�,��{���@$�����q�v�i�dJ�=�󁐨@�DP��/���}C�Y�̼�B���������?}���?��{ �G?���%4l(�[3�1h��ޅM=� +^�J���`�{�{0;�a2�Ă� ?�֢�!߿$B�� �Gi�̦��W���w\}lJ��]q�J<�����z;2�} ���+��40�:��6 ��v�(�d~s�]l*�+ǵ�P�!������\	)z2 ���8��M�]���c�8�_!��_��վSS3X���#�bւ�H�TOV�L�?����2E1:�ɧ�ǆ�V�h� ��˻a�H �eD �Բ�
3���$9�V�B��?��]�����c�s�ͺQ�?���@Ȑp?t�w�q_(�ޣ@��{5�8Srθ.ȋf���n�
��<&"R������F@u��wp떮�h�oڴ���" t��$ZJ�V-�9�59$O"�c�^y�|u-��	H�9Hsj�h�W�!D`*��������k��4+~�C8�%�v���n�7�*߭��5��dCzi?��f	Чo���/��mX��kF��whz�ɩå���/,�	�UT���V[G}���E�a��q�1�+������Α��  &+��"�LA��p̄?0 ���?B[&��7�b���lxi: L���9ߨN�6A/; s��;��LE�m�t�j�����Z����3jݤ�4�,����+/��:�)�bg�7��u|���V�P����R����c`�`���两?r��7�XOR0��
6Ͼ�eX��KЭ��k�7m�-�c����T��%�UB�/��4�g�ѽ{qp��t��m
�OXk�U/
+	L���.����Gt2�X3"Lb,�\�۶���8�8����g.���T�3:4�!�o�OZ�8X�f:�ɝ�+����A�P�D��4>�J��f����>Z����7�����ڇ��/?�| ����p�?�=vlڨ�F����� r��PU2XkD(w�`����5c��g��ߊI�1�=
�*<ā��}Q���9iB�绳i}���Dׁ�&�̾�= w�ضod��^ �2�dE������ �cҦ ��Ԯܰ�9��M��▶+c�1����gM߉ߒ�JesTl ��`61+���O!B�?��o(��"�P���q�E����w�N�]�����g�k��[r����h�Î���#�
$�>ˉj�I�x�: �B>���_�r-X����##X�j[?��Hſ ���Wj��!����ǟ5f��@�: ۟z
#۶&�2p>����`J���wҠR�*(H��sZ'�W�
<<ph�v�)P9r�>{��7���J�4҈o` tq���M�̗uV�>����5D� #FW��g4��
4	1�&mg��p�{�k׹hN��{��e< �%�T�!�B�5�'B�d�Ṇ E��!Xc����zZ^t�۰��a»�����+�PZg,���y�o��o}}�]/vۅ'�18m֩��۱}˾�O?��(
dd�<3mk�vVRj�9fm
 <��Kwo��*ݕͲ|�`��D��[@v#b�V�2Xh��,��Yp{8� * ��\4-!�y���^��!1)�-(jt�^	y(�9uS��"=Vޗ���릜�Tr�J``�|�֜h�",S��
Qx�F}D�:�Z��땽W�� L?�d�|Iw��c�݋G~p'�U�SH����5DAT-'iڡt����|py�: #lZOAF�jBA�V����,%���_��2����ϫ���=� 7Ƈ����]�2{��*/E ���Y�e ��F`C�'s��q<@;ǖZj$�E�O��+t.:�y��;��8�G� ��կ���~Z�E ���j����8ք���#��/f�P܏'n�&��?�����MoA�I��-x����(%FsƄr�& ���E��uPǸ��[68}n�� {v�:P�
�ͶoM6r�m���w���	� �s�Ѫ�v���+�J$!D�
Ꮢ��Pw�yQT}a������|��a�B:�HY�����u�����$}������lb�B��5U�0�P}�'� ��/����K*3��4-�BR�TC�s�7�ڲڇ�5K�r�eX������{091����X����2r}�w�0M�!�7z� ��>�'e���x�D �슦��V�����:�[�'�K�!�(���|t�6����]xrx�@�Y"�Y\:i��,}q̆aŠJq'�ǧ=���d/wGxd(������=q���_y?f��{��[p�g?�����1�!�47ASKŒ�)�%,�l���Xw�u]�y�+_�s�ӛ1遦�������Z�	�%�d`}kk3�}�x��l�f�[>04kq��v�ܾ/�z���k�'&��f�]�� �Y� �s���F��_�E�F|d)�NH����{<�Y�`MHӾ��Y;
6��8��*9E�����[Y��D�{NO��!���NHb���ʦ7C��F6�H� ���Y^�rz�(�UH����%��;$@t�t|��A,y�	4�'��	'��ھ�)��k$� 'Ͼ����O�dU�8���U�G�=Lֻ����Pj�R���}�p��P,���Th<g���@w@^���O����@�`�L�9�a��'� ;�i�<]����e@F��y�ɘe�H�%URZ+Q�f�1��A��� �%�2���I�`&����A�{��g��}�F�'�Қ}֠fg�H*g��0��z!�j�����\��O<����魘�p�tw� �Aس�3X�AA_�����+�,~�ڮ'?��+V�����{ :0�k��>c����<��&7m�l���c� L�c�>q�։VA���nk`KL𲫰zL��匁�6��K���@2I��Zďo`T�M2 �%ښ� �4&�/t�1`)\G��ق�[���U-�4J��c���ak��B�& #�������*�H��}����Y3;�TŧSoK���>�(vB���.���zX�=X���� 4���͗�"E���R��^J�Z��kXە�9>��C� +C
�@-����q�"s��/�O��@�C߼���� Z�J��Ah�Y��;`ޒ�Xp��VΏ�j��BV�]�r�Ā�(d`�0�#u|r� �8X�{}N�{&@��99�?���܆�����_� ���kN���2��f�3��a��0��`�u /���N�s�s�!'������z�g��������k!(ᾶ36��� �(����ӿLC���\��j�ݚ��W f`hNO�����v�ز r��f�<�mS���2}��Y� Ǩ}������|c��ނ�B�b{6�� ��H���t��#�nM�ح�x ���%�bd���ǉ���f�Y�
$��hb�T�E���Ԉv>D6Q/!+ABzNğ�Ɩj�Af��l<�j?�
�8�OE���%�E�!��(A����]��,>|$��@5ѐ:� ����)����g�2z�1�;`Y(�B�o%�I�D��-�d!-s!ub�H��Z-�I,� ���+��DGi�G�ж�]3�͜���,Թ�}����������P�yRT2��i�)�0 �� �R$�|4$VC֏�J�(Zx���������[�-_���̕�k4�~���,!�g?#���,i��?_[�-�5���k�����f\�w1E�g�D��Q��!��-��f�x�7>��k���1n�����3N\��];��m߱5d XY�ږLې-,�M���}���W�|�ι=��vJo�@���I��4(과�����-����T��Gs��-�|ܸSM�O��A����^���y��-��2��WJ0�I�&�%T���`Ԛ��a�5}br��uI��#�0�����o�q�_3�w.V �qT�6dA1PQ� :y5f�fLi���%�2^R) M�h�1�"}r��J���y.9隈�c;v`lOwY1o�u!�(���f��Nt̫��'���37U�Lʿ  ���GG덏Œ��< '?ˠ�_�M|�S��ڨS0��k��t�)!�%�h%`]�ΌE���Fv`�w�As��Q�a�/|��0��1�BV@� �&�E��1@���64���_�ӝ]v���sO>phΒ^��޲ �ț��L�a��i�Enʔ����) p�[��W8����G�	ue( o�6V��F�T����a@ʳ��Ɯ������_����Q���(m� �BH�z$��;�H�W��*]I�K�>���ޕyL4�Di�:���kD�c��$]Ѝ?
1y��!�{��5w݅�<�C 9��B޿%�O}��ė��;#���]S���b��@��V2EoW��J���1���N���<b:�O�V�`^��<l{�=�-^��y�Z�,�	�C�W���c&/�c���@ G��A+0�&�)���
�(\��K^���PϠ��?�!�������0���n}l�oB��yd1�U�����P�Ikrk����`uW��s�ǋ����������m�1M���>�6ts�'�+VҴ�y˨���(��mO� kMa�m�k��뮝٢(�}�< � Ǽ]yӆ&j�R��6q,��ه��2�n��|� �DaWAໂ��<4?W����Ī�evG�hM��=���H��4J^�4A�H
%��Rj��x�ϩb;.�
O��Z7|�m�Ȣv%qlQ�@����`ڼ�3�����~�=�uR3{v�X�P�~���auH� =K@A�;I���[�wlvE���GcO�O��-�{K�H
>d������hf-:E����~�}�h�ДU�h0_���@�߻x&�(|5#@|b�T�4!\�u�l�|�b��^�=�dۓO��~
O>��ޓA���A������H�ɴd?aEB,/RR�������    IDAT K�!���Z�x�;M��~�r\����1�0�hh����XӴ>�����hד'�����}F��v�����;�SXCm�L;�y�Q��lM� @`
 m��kwyo��$wCI�3����è�x�B�O"�Z��g�"�E�
ݦ7��{����w>�pIJ4^6�w���%߇��Ĥ+`&�lP-S6�ßy_�HG�!͜�I �$��Qt�.�a�B՗��NzM
|��l��0��t�����^����y=��Mx	�l�O>|�8\��d{}����1�Y� rE@�$.�Z.Y�&5�+iχ����[��?�b=��#��4�Oo�:���N��3�Ԕ���h{�����u#����B_+��� ��p���i�@^T)�TE��(���C�\��W����G��Gy���8n���q�׳�$�g��?k�ouR���,I�r��@|&eb$����(E������[l���w�K_�J�9���c�m�_�f���3~t\U�;Z����7m漞���[�ٶe�. ��yfZ��Zy��۶]3�s�?0 ���r%��oY����v���B:N��ڿ����	8���9����B8шْ ��*��'ݨ���\��`�Β�HD�D�)p��B�2�t��o�-�|�����K��{���L��D��U����$*�b8�26Ռ�L��\����n��09>B0��M5�_1i�]�R�\�	�B����<+������
�92�
Ǌ���H�S5FȺ �h���5_�3� D�ݰ���]�4}��[��5���y1{�%���s𡘏�#���lF个�f:ra�*�Yǿ��O ��g���?�Q����:N ��sW�O_���@`��� ���/a0�jlS�Kʌ�+ b��La�����yn�����?��k�NZ����=�?iƜG�p�\���6��Z����j��q�1��М���[�8V���v��<C�RY����=��`
 W��7=��λ�*�;�� =%� �� ,�	g�@;*q �l�!p��a�W�`�y�EЫ6/���Y�l�q������uتM�'�*��$���6!�6�rȦ.�J4�"xb����+��4�\A0 ;%w`zX>�p�/���ֽg�0]�Jl�������1u�t�F���i�Ažק�@_�R���n9P��o��{�s愘T'��D�u��I WLW�J_A1�]��~X�`{_���S��?��$�0F��+�+8L>�wE J��!�ց`=qF�ct�U]�6�)���={9.��`����� �Ϋ��k��ۊ�瀿A &�	8�P�%
��}L�{��H�;�?s�  c��L�ƚ��� ��2��~���+���L���U�q��귿]�i��+V��мs{W�rۖͻ �SZkZ67-km�z�-�͙rL��[��q�����q���=!l�gu$���g$�@>���'�  �0"�6�p
b�"�Z$�9�� �JJ�r.
�*�j-�!��D�H	ai��u#�����ӧ� ���j��T x����Ga�b˲�~��#�������B�IB..J��O!L�3�ø���`뵮�@���Ԅ;w�T���"\�2�C�v��]`������{.��覻d5o�c�c�wㆮ㚿�Ԡ���=��P[&|T�Si>~����8��I֍M�+����{�<k����?+��M7�[��k�ߵS- ����G��nr3J
؈�`�E������ W��� �<�����7|�g_~�;p�;߻m�(G��������;Q��m�d�X���0w�}��'��븝�[�lټa�1��i�m�L�2y����@���37s�L��}��7�v����o��iQ�jJ�A  �� ��>.�	�f,�:F���@;����A�-r(9�����
��@��hZ�]Z4у7ғ�`�@d@��=U��r ��l�i:�0B5yB<i*Ze�(��4�~�����'��W(��V ���!uUH�=9�OSD��ߵ?�hY�d���T:"��V�i}�&U��s'��\C�=�[�7d�� �jb�c�� N;��9W5�� ��Q�	��� O�p2f��sX�l����0<N8�<\����o�-��ݵ
���Ǳy�}�s �֠�4�gL(%M,���&�� ���QV� g�3���U�@���fV��-<�摮}��x�;�}�ٯxͫ&��������ˎ[y�:q��<��g�ly�� �gy�/�5ky��3�γZїn��i�\�S �l��{k���m��hFj �,�,����[A�Q2�� j�gT���-���E�-ו C)��]�_���I5�(�����zD8�o���MW��*����{�])�@bM��*�U�F<G�΢w7������S���X$���e��ϐ ��~���f�>j_��8~(�o��}�ɐyx�a�	 �܇�+�M�%/\3!�J�GlM��"�}O ���3��쳃��Ǭ�T{���>z$�1t���� �	���H�K�ts�C��5R�6�����������o{�	\�����{���G�B��#��ׯ�@yV)��@��ߨ�I�NI�q�㧠o�r-�]�>����u4�ƺ��ą'�~�;~���Ϲ������6�uת8�]�����sz���Z���6�i�he��j��bw��֮�3 ����_��а+��
�UZ3@J�[��!���;�����b% 胬v\��^�tsJ�>o��UqT����B��"�Xh��DS*R:�jP&}H7�xZx�s��΀B>a��>%)w�~�<h��G���3�o��G��{��d�?���[������S��Q@�aD���������hz+��H@�5b-0�4(3� �"�L\3#S0��5D��#.�}n�=���H�8�%���u����� �g��C��K_�,vqΣ�^\2b% H�;!i}v:��/~	.��?�)�B�7'�q�>�]w��g��g3�k�g��xXc`�AƊd�ҏ䡎�=�y��嚮(��� C�|�5x��Ūo~��κ�3^�˿���Z���IL;4a��h�x��b�J��䌞��}{w�nxr�V �Ɣ��4�,kֲ��WG�-��˗w��cҦ �q�^��FG�?��6
y��XQ�	ۑjb>1��ȃ���!`� ��� n���<��*�M��Z�HԠ4D��Z#|Y�s��^�²PO�L飸Dbz0�0!�!"n1����zt��S�Uq �'>o���_����n�߸�Q�<���q  [Ad��2�Yq�胛l��U�֋hb�q�W�V�(xd�pR��TЧ��0aJ}�a�{A�YH��� Y>XH�d���<�;`Ɋs�B�Cڞd(m���8���ԥ�㌮	߬R����uǽ�5�\� ���w�E�c%�����v��·?}�Z �B��M���d&T�ӵNpIn�gV��VC��(d�xǁ��w��AdLf�gw�˗��-7��y/y��o�����/���cE9t�����u܁ �y�{/���Ԟ���6=>���� �L;���שi�Z��(�r߾a�r��c.��) p\��+����շ����6�X�r5-�<��>����0W$���h�R�V������ʆ\5�#��!&�$���UoؼI!P4i��w��Q��eӡ	��T�q1bXOD��.�����-5�4�L�mĔF���T��^tqϜ�����/d���fb,��i����@��N^Qsf�_�8 ��	���d}���}I֏�4t$�Dk��I�<!�����Rӧc`�!ǫ�����l6�����s��i���Vu�������; ���u����t���j�x=朵/������?����}��_ӈ�
�6���3��OfM�ԡ�|.ł��8:2(�� ޣd�� ��06�;�yc�,�ِ}d!��%p|�n���/b������x��>�{���w��C�s����C��=�2NX��s�L�{��u��m �۲yެSެgY�zj�e�;��ǅ���^<Վ�f`�/�]�������̐
H* o��҉4f� �ٽa�&��Z)ٌ>m�NF�����'x�YEP�Ԏ�T��aMC�ˉ�2|$I,A�m+�,�^���A���r���h~r._r��s���Q�N�X������r��u������Ӓ��ML�D��Țh2�#�>�o}'���0��&�b��I�g�o�̳CԀ��u�\n�R��/��1�#C�`K-+�J�c�Z�P	�� �Ñ `��9Xz�X��h:���w��k���3
�ǔ���*PFB !-� �͜^�S~�uX��cֲ]������m��'>�}�v���)��L��7`Bʟ5!��$)~d�>(��c��F} ��bD�-W���c�9���u��_�>{n{�)KN�6�OY���|��/y��7޿�΍���C7ݻnd�y�e�+/��}leƱh��ֽ��=#;GZ��gZ�&Q�!��f�n&m�4��v;+�9��ndd� �jϾ}��ջ>�ڳ�� ��;`�f��ag2����r�k�!8���&/7���B�t�S��;>'yA���s�J7���-U(���U�z��) B��h1�6�ɦ���ф��Ӆ��ht>��S�P!2�{�c�<���s�Y]���u�iݣ���3��?�&�ο]2,�9��)J��  �g���0�e��j�őZ*��TC�%M��4@��)�ߎ� �rD��x��kŮ��c�Ygu�K�97��	(y�ah )�a�K)bB����е�������CCX���c���a�K.�`�Lg[uݷ����Sl}�1�V���Z�Af��_6��!���J�f�>��u���P)T@f���&<%�!P��"����\���z��'-x������^���\���/��#�}���}�-�o��#O�{��{Nk_q���X�o����|љ/�u܆uk��=�����0s�egN�L>���ɚ5-?��#5�u�{���L� ~J�'��~{����Q>�r��Β�✍� J����>�b=�>���^Ȧ{�<gjNT�Q!+�1�a�Ż�Q�~�� �l@ <D��zH�T����T��O:�C��%���K	]�._�YKO;��q�jكCyUJ��|ؤS3u�W>B �[Z������� ر]�!��da��l��&�Q>A��P��gzN6?��K�H
8�\&Y;ׯ�xʲeX�|���CY�  �߁H���_�H�';�A�́p�k߈W_y~���g����7�;�����W`�5j	������gj� O�)H�l#�n��D��댤u?��,̴��F��q�PZ�����Y{(����<�ުk���;��?7�[�;���K^��������[2���/3}���u�]�nt���6м��^6���/�u��'�7''ڀC96ٜܽ�Y�'&��M��s\��3�c[y\`
 �T��|o�z�Hۻ�����~nS-�pY"⣰}�� K&�/�
����g�_<��P*݈�|(A����.$�p*|��C�)��j���;
(�A�!XB�����H[�> �����H������^6��d1A�3�<�
�2>� HǓ
�g��j��� T�,���t������u�m:�����)Q��	 v�Y�u������8�B@���$�A]��D�S
.c������8�կ�E�(?����V�Z��g>������'W�^���}֠aj&T�36� J7$!�3�L�!�T���4���y����*�A�82c����c��Su�8p�|��?��;���?�/{��/�;���c� 6֍��W\v�}>I�松��^��ݽkt���1����M?ٚ߾orl�h+s�ڵr�<���� ��kW���ιw��ַɣ4�^��! 3! 0�_�Ae4*�T��G����}�=-�뫛zZ^��	�0ؔ���8�\*;%�M�����w�R���#vA�8R���x~b��Ւ�6��{�S�� U΄��f�(պ��G������B��*��2��x��eB�)�9D���a�0�5�k��Gb����^�|��U��b@�>�b�Z$:���d`GP��T�
a��{q�Gy��眫D@�X: -_\�i��ʯ�!w:-1)���W�sz������������ػs��?����A�(�oN@a-w,
��"&��f\؏�O��� c800X��ޗό+�֊���F7���g3�:�w�_�۫~x÷~�o���N?���5>�����4`chN�y#�����ܓ�|Q��6>�f���Vo5ƠV�����d=�&�fk��eok�S����kݺuˏDOr�� �)lW~w�#��w�mi
��Bdn ���\Ѓ􁎤 @�F.[�DH�h�1T���O>���21{�7�h��Z�V� �����% #�{M=Ԩl�
y����ɒ�D�V�`��SLY��d)f����}{z�zڷ�B��k��S����K7��Nm]R䴟�l��� �����}1}�׀�$d>�Ca��$�3ϐQ����bRq�+-x�^O�J�k��M�g g���y��X��8�3O@ۇ� ��۟ 0^�¼HA#u� �%�Y7Y^���G/}����o�?��Gp�g��<��{d(~��!���gƄ`?�h�#��.�YҪ��e�d��3-�E����H�Ei����0e�+/���|�S{'���Z�r�?���{v������7}�7�EQq�Gjd-м�es�d���6~���U;�o��Ig	x�f/<�e�f�[�����<�ub<D���6}���P}�1��I�l5���:�W�`
 �Զf�=���Z�5���1��n 	p�����3�pd��AK`t3	�݀2ցP�i���	𨤲�%й�6`�uj>*�#���L�F�&f/}��1$�C<w�*(.����0�o�e�4�i�,��S��[6<	��!#�M�l�yK�:�.mp@
��&�^��� �?2���C�X ����*��"����V�^j�8�,$� �� �4����� (:]���O�a�#v��s��i�0����kN�Z������Z�'A�~B���G�����;�l��}��3��g>�a��ݛ٥.�a�����_P7�)��_�54��p�>k�%?��y0 ��y��5p���(L�H�4������G�Z������m����k����}����?��/}���>�����nO?�a�3[��DQΚ,������iכe&�����g>����,�����~`ݣ�?#�24s�OXk'��f_���l�*����r����) �Sڮ���Y=��@����ͼ�$Ш���py�@ h�*%b�)�C��;^�^����e�)Q�l���˫� +2��T;Ѣu��/B9�AB���HR���#��e����H�z&/�JLЩ�!�ƌS�o�ѣ�G����SO�1{� ;�D@�3���GʾV5a�b���/�`����سmk2�a��^K�{쐹��A�{�������X��Q��\��^)��"NZ>�8�x�U8��Gj3���ٗ�4 z)<�E��P7�OB\�"�cq�h�	�7l�[W���~��7���ނ�|�ø�~�6mo2�nP����2�>�����gj H&���gA�o��U;=���̟��	ef�3�����{�+~��n]s���c+�q��a�j�F?̳����{�5_�����_����k��������>2�Ûo��,���r�DYLs���']�ty�}�d0d�� ��g�yىK��	 �?��3kx�i Ȭie�Nf����l�fY+�7���9n�����iX�    IDAT4��Hm*�}�ڇ��˾�2�r2����fLt�;݄ȅ-֙�>%9u%������  �~B��X0{�� ������x��9�<q���O�	
�;���T�C"8��"~���Ů�SAM�G2[�t�)X0�z����ڄ���nE�&��m�OD+�� 	LQ�	�zH��v����kKP\�!�\�(WΏ�* �}�%��c �֖@Ъ�࿷�h��B>�&�J 9V��dў0������CX������/y	n?��o}�K{��� �?���ﲀ�G�#�4�3b���F>kV�һ���T�r`�֮Z�{o�?��L�����ǂ���a�oA���Ri�G$�ƀ��:��� a��H.� o�@B����%�ߏ�Ʊ��J����X���7\L�9�1����������?yߝ��t��/;���.8q���z#۳k���>2|�wo\����ߐe��\�(K�hY�L6Xo��1�־�~R)u��8��g����{7 �A��f���M�j��y�j����+�ʟDG�m
 ���Ow��_�9N��e5C� ���N`�g g������?9AZ��d�.}'ѸY��WhZ@�6����_�,��rR�\�7}��J�W�Gǖ�PҟN(/MMsD��f��= p��0�i�NY �l���,vQ�#y?��Ǿ!̉�Gc�L��(�k��u�+��c:��Ƌ�M���^���1�N�7J��z}�|'���O!cr ��c����X��7u��/y)V��UX��/��9%�"q{P2V�&��[|{�|L�@5@I�(;�q�����߇���b�(0��lx�!<v��
L���k���o��_X�2v��K� !��9��K���3&
P��11~F�'���`ŪF��lͭ�Ĵ���>��r[!C�+��߾��1tZ�Z���0u�T����;������ܡ��f�̘CL���~P^�,o? �$��k�쿟��3V���q�W?��#�޵���N湝�sLd��tƶg6�S���?�m
 ����ѻ>���nþ��,e���$Ҙ�<��@aW����.J>��O5b��Pcfw���P��EE�t�F�8)U�j�D��0��s��F*�I�|j!P�B��Kn�:Y���g�������?���R�_N�ݴ���U��d<��)=P��٨v�׾$�*�b��Lg�dUE{���+�c�����rw+�h��W@5�����rOpuq}���������n	
�p���S�\|�\26'�L�g8(H����0�kV�����8�<&�ױ)k%��)����� ��S(aV>:|a�4m7���P��(ϵ��(� ��'��������^}ǡ��5�_w��7;pph5r_+�#oʬ����D{br���&[����0��,�㹱Ơi	�z�Ӛu�߷կ[~���G�������_ҩ�z�G|f���� `�6kY6Q3v"��Ic�VV� ���>>��6�3�>s�ڇv����n�1A��l��sy[�v�os,��B$��������;���� ���9 ֠��G"@}b�W@��a3D�L����Ñ� ���K�
�DHɷ	!�A�
1퍴�1�e��% �h���P�.�~�m6Ӳ�9Z<���H��t��Z0}�� ��ۇ����ߤ�;m�w's"!u�P���ng�Ng:������?��	4�~ ���e��g��2A��'���M��C�i�rL'WB|?�$h2#B�X����g)0�5$�/3�,�2�!kC���>��G�h���E����!����{��&� �{��gL��g!��W�-��d_�߹���]';̇��p�7�f��cCe�@�=�ym�`_�cz=�>TϷ���5��/���e�ށF��^�{�l����/њ,&����)�s־���������q#;�x�lӡ����LdY6QCm�de���
1�?�}|�� �jy�㣳��o��p��iC@�����[K��HL�D\D��ʁ�����ȑ�J2$Bݤ�D�H/����Vr˵H�av<�I�x"PBT��3𠪙S�D6�h�@�Q��I�CQ �� bf-=�+��͛�y�:Hx2p��D��	���oM'�ݴ` 8t`?��W9���4/���CA��p��ɷb�h�VT�*�X��!���\���1l��ޮ㞻h���hz����)�b��\_����J��Je�����}l�4�!K��2��azf0��״�`�֠n	�5JM\A�k��߰�Ϲ�ly�5��[g
�F+��1�L{xcPf��_Z���K��v�P���Û����.�g��k��F�֌�cӋ�����3�̮�Fc�P=jԷ�Пm�џo�ޗm��ˆ�����lw�e�s�C�2ks��K����|n��h�9���S���ױ�>p���Y�TQ �2��D�f��0�����"D��m
 ����W�m5��B˗�$?ҳX�q��ɀ̟^���%�=p�*!Hˀ:�4�>z� ��IS� �@B�;X�iU�c�F��ń��b�y�r��0���`2|n�F'��DN y	�^�:#�9��Ob�c�U4B���� �k�F*?�tI$�+�ЂE]�up�^�ޱ]�((�N|R+A*�S�D��#�Ӭ�q�`�r$�O�U!"J3*�~>}�*���Tױ����~��  ���m�ʣ���K����)YO����1��Pn�P�w�?���?�[6��Oc�Ͳ����xH� �j!��EK�KN�5<��G
�aO�5
�!��Ơ�YH�+<ڭb
���w<|��G�&�l%��_|���V3����)��`w�;k����ƶ�}v�P#�:�/l�3��������k(�-��9���֟~xނ3���^�5''������n���9��5�0��U�f�zs�q�/m*�g���u���������y�U#���&�-ao2@�X�;���`�q�ɲW�����M��	�9z<'�\�hB�\����J��Y؂e���Q 1�L�E�JSC-Gys7U��$ZP�J���4l1P���NZ�/�z?�7mB�5�B4�|0��$�ɤӂ�y��@U����`f.^ܵ_۟z
��m�@3*���a�HBD��:k���V�H�	)란3Y�2F+��c� 9l���x��{1��}�`����h� �!&C�(d�e.��O�M�_E��e�&9&�4���Ǔ��p�9�EH}�0A�#h�����,��j�aK���D� .��X��I��'R���!�K_��2k߷�·WuR�E#�c%�������ta���E��e����*�t�U���y&@s ̃Lh���<vK�*�ж�{�r����sh�4�ض#��fR&3	����$�$������3�]UUU�B�
6$g�wr�={�]{���o}KP�RL��)�e��%mȤRRyRk�T����Y/��5��s�22e�qN;h�����{dݒG\+Dh�4�ԘA��J��*��T�Ɋ���.}�UW����,��n*߿��.#��*�W��U�Gn\��Yl@!	�n�I \�c�$`K��C�E�QX�QĄ(��(�F���4|�g;Ϟ# �?�g� /q�{�ޗVN=��G��o}= �#���Ϝ� C����B��+�^ܴ��.���P1�p��m��E�f��v9����6}��p];y�x���5���8�C�zC��B��U�N���%�n֋�}��7�zޫ<cކ�ʲa���SO�큵Fn�8`"V���m�����$,�>�QOJ�a}���o��'iIR)�H����ې��oJx-��%s�{p���Z����1#������gB���������a'��M	l9w��>}S}L��:N�
-ž����*e��Z��i�gR.���e`�)m�Y'f�-X�^�������L����#z� ���G��
!��Z)-W���)U�k��d�GC����i ��r��v�s}yE�ߪ�3IP��(��"[�v�g�k,�!�@p�F���X{�p���у�!F�'F6F�/ R����й{�����1��*�x�9!:��\�%1�2x%��ca��}����i54�!��P6� �{���U�c�9k�2��n^���ӐV6*���pF��^��������
H�����%�E��!j�M�ж}���n<���yY9�S0�s�� �+�3���W�r�\�*I�[D��%��R�\~*RV��`1�v���a�}�d6\�j�7���]������;��M�ls�\J�I��kP���_���}����u
�]LG���З,^�w��6�U�Yö��J��ʘ)m�J��ʾ��b΂��i������cz�d���.���#F���,|��E���H
���R���Ri���RL�ZoE���,��n.?�cE���>�r��fm�0R�&���p}����*{�~/���37�����cĤ�z&
����Q���ϊ�<��d�f���<�y�O':+�x=�}���3�7��X���T����uu�{�v��I��f2��L�3�������u^�*���SF���P{� �Ǎ�?�a�Qo`���ɵo
���GJ�ܲ����x]�M�F��B�爗B�s�b���b�O��L�{o�~�[���{Q7䙂���q�$T; ڧ�ȧ1��������t��\��_s䀍&{��~'������ �oiB�D5�{�L��O�Ϲ���z����'���5��ގ+�;��?S�2�1�n��:��:��~�o����.��ే�[ӵc{? ��BV*��`K���R5�ˬu��_����4# {�\}��^���sM���**�Jt�^=� {��@�||D �<�H	;GR�$έ��$�U�
�p�����/�{mb= -m�SG�q3k[�`d`��Pٻ�V�/��p#�����FW8~`=cc� � �h��6�A����r�ݵ	���ƍؼn��ֆ�I8@w]������?A���O��@�р8���"c��k��7P���*U�������;��N}#��7��3p��=G��s�Sc�#%7��)�3t4LrOJ� B�ŝ�>%�V�Л��F���Un�������|G�]{�]4@����5���)*��-J}ʤ��X��)��B!���z��;s�qN߅����=��ݿ_��iRi)ʭm����	Q5�%+�^��xuG��I� �C�ŋ��߼|YM�T�Z��1Z�U �����iR�y���e���C�X� ����cO���q^����O�Z�@Ʃ������y�P(��)�����֯�)���~iL�+6~2����wiO�f8�@gc �(�i�J�g�s��jgo��%�"�Θ9�6�_�����}17�$��%%���x��T�Q���xø���`�/`Bȃ=&�_� LÚ�����J���úG�Ǭz8欿��5P�.���ap&��{9}�n�3���~;p,z�ôƳf�L��=y�l�W���~g��<�����
H�4	�9~��	�$��j=Gy`pc��_�O=u_ǂ����w������=hD�?�2���w���� )D^H�`)-��Ӂb�^7vj�e�5�5�%̈�Ei {���-O.΍�TŨ'�J%�ZC���FH�T�rA/�,?�{Xi�����Ċڸ������J�3p��?�qm�qO�*�+k��*�ڀ�+s
�h_�%M@��|�gaCc���;a���^|Դi7B�-�c���Lk����ő���-�H�#�Z�Q�������t0&�P��e�z(g\9;-�[�c{#+��L�`4E���_� ���{�Dۻ���O|l6(q��s�t�]�GV�i� �q��F��/j �� �.�o�����ۦ�"#�p�|�^��p��F��i�6�����Z���{�Hgu0ؕ'ǗB��@kp�o���nH@%�4A�$�Z^m����_y��>�x�Iۍ䐓�\8��G��}��5��u�r�mӤR,������)�E�R����<���i ����-�Kճ����A�.do$w�#��w�{`x� 
ƂX{���!d��A�:W��R:�F�����L��Ꭵ��p�0������ �/��qE��6ٳ�^����'MA˘����7Fqxҟ؛au��x�����@�W�>ݹ&:k��D[\�|<�n�/�s�|��K�beO~�p
*tu���zHt�\%�7�42N2������w���v.�8�t�4�]�9�P}�[���A��#kǖ��ٿ Y&�g�96��drZ.2 �2��,�#��I �j�ާ�o��{2�DB�	��*U����_��|��o���G8w�CO=������<t��WT�j @B�i*��b�P�O�<��E�=���vu���,M`���ԭF��T~_�$��#q�F��+�,�8�p5 ? �R)I���$�K��`8���c�|�R'����8����6�ޓ䴃����P) 灇xj�ǌ�0 �غ���(��N����1��1��zy!?��`���B�Lh[��?+(���ZZm�cs3�*v����ߣ�^l���2�x�O
�[ ��y�uu�;n�$�ޅN:u u
d�=G����༘���ptK�e�)�kD
��o��OP�����Α�"�|��gi#v��s~>"���~-%2��Tj}���_�|q����N�n&�����{�1������a�w߹��N1�$i� ��E1�H]-���506�x�@� أ��[W�n��\��oՌF.]�?�a~�H�4R��Ҳ�%�G<�@�`�6V�̤�he��g�-��������X"�����@H%�_h�C��uB���2��Җ�P=�� �3(�"�&
eB`=�e�@�(�K����cڼ~6�_C��<ՠ���Cc����Gv�y��% ������i��8ȑ���
�x9��;�=�)��~>V�}�s�|����Td��K�D��7����{?���=�(%��\�����.�����)2�xc�۶ׇI$���'�5����5�`}}���K���_\�vӰ���ɯ��c�Ϛs�{GZo��5[��'��D����[�i�,��崵*Zt�z������˕��X�*��Jͭi�.��Q�Tz/��CF�Hk�w�#@C� Ɉf{O�#�@��)�bL�}��f�5z��|*���Px%I�U���q�����(p�[��f���Gj�3���K 9�`wF��sJ���"'+b #���M�
h�~�c�H ����:�� 3�Îv�x��g��`[N֠auǩ�@�y�4���ñ�R=a�b��D��l�pT��5��^<�?�b��=ؙ��wᄋ߃��3,7@8��Ht����ƈ���8EO�3��5K�v�N��+��C�ϐ.�2ѐq�C��0���ֈWI%dI�������������}~��g����L��;�m������}g�i�ܹb��e����ȁbQ��B_Q��6������gi M�UX�3�eד6�k}_&\* !Pb��a#����D:(���Ʌ_f�Ė99C���?n �^�D������'z2���n~�B��c���"�f���FF�N�	��~�^{;��;��@>r�vrJ.(����Ax,@c�9���q��a�0�	��gc��c���SD��!������������U0|�ث&O ĩ�I �L��waN8�`s����8�D����}����7�0켔��p�;/ƨ��F]�FA��c�c%�Pabm�`�jX ��KK]y,O���߇���k핿���c��i7A6��~�Z
(_`9 t"���5���`�����M�ꦎ��]    IDAT�N�n(�q�%�����{������k�й-�H��
��r���R�}ik:P,�ץ�4��8�耞��'Q]�/˳�3�\��A$ȗ	��=�c�-7���Ȍ�P�+W΅j�Sx��,.�A��5�.2�4�����\�{\e �Ԍ;�GI�rBo D������{�6lߺ`ŏƎK�<�!4�1.M�Ad��h�������wư���^���+0)��[����ZZ��0��&+�3�s����1<2�����M|	��1�?qS �6X�a�����U+w:7 p�[��	�Ta�H놲S�������p�ޫ!E��@6^�ʃ�Q^�KU�1[#���=���ܩ74Y�]H�+5(+��$w/=�c��ދ��e�{=���O�������$;� ����}�On]�������(���B*��E�WH�����)e�K�h M"�n[����?'���*ߡdd��?"�T���Ԁ��$l�R��I�����?0��gE,طuEn2��ʏ5d����2�.����+#�3 (��5j�4�O�2�\n߲�6?o��D����mf��7>l͸�����9��t�����8�6?��,�ۛFOY¶��?(�.�a����G	\���s�ҋ8�k��x�ũw\
�F��z�w�@S�Kwny�]?���S/zf��TԵ� h�J[La����+wawwO	89�d�瀁1d�P���m�C�t/���u"�6���ֻ�{˸|��m��W�M����7���-��h�T�1�}�G���O��g��#�{�m�]��_ �^������˅��$�e1h�XS;��.��Iܔ��o��Գ >���f��
��$oNAh��Q��>|�C��`rF�.7��H6=�����zy�!���rv^��8oUW�����H�RCT��#�i����n9�j؋���u����lǖ �7�a��" ��s�]��y��X�,��AK 4\< ���J�����1ۜA1�pu���>�����;�����/���>\�ȆOا#�A�4.��6��㓰�x��xf�xf��̝���!���� ~��c���5Z�ns>t���D!��*D��{�7-��4ٿA!
�k���T��t���g���L&ȵ�����U���Ъ�wz⻹tt@w�ş���SF��_���o��7K  D*�U���-�*������F�8�P߂���y�^�/'�@Sv*߸}���J��Y�vy]�m�M�R	H����{�*��$��D��{ْ�Ӕ��I�9T��f�eR��w\g��v�������X+\�Bb���~�>dB��ӆ-(�����:����i��Eȓ�$���D8�/��<����&|0����1m\�Z[U����D%�Z	�����$��Α	���q�9���(����|Q�:��=�Ǖ����˃1`W��v_�D���_?���a��w^�S>�T���� ��$BA�%w�Wn2ج��~�%:oGu����.�S��yjla��5� ���?x��T��/{���S���g�|��i�������_�d�K���/��K��ww��+�A�P����hJ� hʰ��;�z:W�_Q������?��J��d2�H���e��N�SD�q򖜡�x�`��l�|�*g��K�D� Q#������yn�n�jZ*�l ���|X��٫%�)����q�g��	�ϩ!0��Y� �z�W� +F&��("/Ih��h���4`X�1*^S�,��"� �+2�(�+��ܭψpp���H�M�����`���{�d�ⴋ߃}�{j�2f�!�M���8&!JK�g��I^=�w��{n{����`����@X�N.�c6�\&����f7�Z�Q)�;Y�a���庯患�|�%I�8������z�o��G��T�jIR_��=m��"0 �^��[�V@]������4���(�n[�;zp��&�_��Y'S1RB�$?�aߙDH�|$�HZľ�$a�!�]F�g0n h���F �D�g0�EV3�;pH�'m�	Ud��H�2���n��V�`�z���Uxi dC�B TE3��C�% �����)��s4"f��G��/l�V��������h�y��1�q� ��q� �۠tB�0��Z��0%Dxl���~��;�+ 8�c�~(�� �Q�)AQ��;��?]~ߏ�7�A��E0X ��~�\'��''
$?2���WR"�uc�j��y�]�/�,}�c���aOt7�_���r������G��?z��O����.�	0�D����-H�RR�/�z��5Pk��uE��r�4 ��Kұ`A��[�.�\<�����o*Zi[*(#��������A�3�#�S�L]*�57��h̗٘"�'-C�!��%�n�%D  �+#�C���/ �]7n.ڙ�\!�s�� �#/���s4×�9�����r4)F ���E��y�Ƨ`�"�h�xpf����-��e:���Gp����z�<��X�;O�S�x{lG�c(�o��1! �͋a��_��x����mP�-d�� �,��C�$�q�V_���޾�si�X2�֖�%�?�p=2��J\	���\d�z�T*禧-��7,ۣ�}^N~򩹳O��#�����Niݍ��~�/~���:��b"���-eO9-���@ZW�ec�f�.��4A�M��d���
�G>y�?Х���JŉR����L2����.� 	d�����Si�J7����@K����M!����wl�k����y���C"�'-L������#D �PDp�a o��*��6�ųa�q�)�HQ`ꁇ`�A�;8׮�q�����p"R�|hr�C�ޣG�t����'�B�th:�@ �|��o!`	8ebE��P& w�9f��JA=}�?? $ �AB����i���i���N�L�)���E����m�����)�8Z�4 ���<|�P�X��U�(�5�d��aj4���Ȗ@��@eY:X�����{+�r��9SNx����O�H�֪��_��ч�k��S)��B��Z���Г�/��
�Q�웮.�����w$iF ��'��.[�*��j���1�)����EN��`�$7`d��~l2�IR�5�}�%"�BE�\.�
g$8��u|̈���G>��.3�s�j��.tI�C�y�/�XY	
�3<��[E� S���#���Za�?�EX�MK�2���nh�c��l��%�!fJ�0g�>��!� `,>�؈��|5����Ic�h�L	���F���8�bS�)L�a�5�10e�8�c�}O<5m�kcl�
�8 \/A0$|zEK�N2�Ͼ��a�1+�|>�Bd��[j˩-%dR�f���*v������o�d���8����7�}D�_ ��W?{�_�x!�=$�T!�����ŔzR!z[�(�ꯡT�1g���K� hʟ,�n[���e�+��\ݖ�wdހ$�{6
��8_���n8 �������C��g�����*f�B��J���w�=�`. ���g��p>+}��p6R�Y�&��s��|����MϬ���Oz/]�|8�����ď��X((n?~
��^a��G�b�� b��K>`��%�G��K�(��bi4�(�{{� 6>���g#Vz�I8�S���Y�mU �&?d������k�����#a\�[�rC-k'����'�ڞ)u=��O}����X�jð'���_�������ʺw��'����_�P�}�4�nIDwAzZK6�_�T}f��:^��}=J3Д?K����A �}⼓�jS�8M�Jy�@�}ғ0�~ 6f��� GFf`=4��	��fxʅ���vS�9o���qN�)�G���d��e��������DPJ5*���$����1��d�w�zh���M~i�4@L!�����xf�r�̆+�sa��7���C���<C��8�3qJ��?s�~�r6h02O����%v �
��l`�~>��@B ��_��f�����a��7����[�����\�ޝ�v�` b�K26B��&L���0\$+q傮��:0kw��}s����o�<�<������������ޕu���տ�Ѽ��m�g8��X݅4�*J�.
٫Uip�DY��6f���4���"r�����y�̫���J�Lq)MZ[ůMx*��o R�1���΁ FÓ�xZT�M��˝�7�	ye��cED�S�<},����p-YĊ��V���Py��lD�����x�]~�?� P�qA�v�lL>��aǲv��ކ��Up�����w�aF)V���˦`,�av�����?�!'�+{�2.A���f��e�	�މ�/��'[�x�� c���ϻp�y<�̳���^�t>��2������WJj�cs��#hi���)���w��p堍�0�Onܨ��j�ã� ���g���/s�?](��GZ��E�����|`ݚ�^  )�j)Mzʩ�*E�(POa��j�4�=�aMv�4���������sOZMEy�k*�ۅH9���-	Tʁ�P������fi]{"@i��ً�le�0?�(� �7�U�1& ��6�3f���5�L������%�]ko����1���N4(I&5b:�C1q���-���хL�QUe�ۼ;�I�vKl xE�gֽ�'#`{��~��c�&�N��~}�(j)�q�N|u�-��ҝc"�^܊;t�'LĬ���ι �����Y�)@zR ��γ��K�8�!y��I��־ȁ�*�o�[����{\�����`�.|��:�O����֭�~���Ȋ���.RP֒POkB]%Y�*���E�!��@[6p�2uYLǫvyi My��;�� x�����>]I���2�{	��H[�����Y�(Xo�X��d}�h �*>�J�ho�2�n� �n̷���J,�)�U8� �?��eК��H �_�; �v) �o>��ʯ��F�(�G���D�:��aǰz�<�����Nv�Q	oyo���0���`��X�+�_ ���V��Lx���c2�س��gnFB!A�)�R8 �tt\&�()`�����}��<��?`�9=��s�
��{�Ķ5�\�����C�2��`{0ƵH��7Hk�B+�B��?����3��P���>v��x�?x���ؕ�k�Jv�5?_���7��soA-2�i)Ȯ�u�Jݝ�I_��*�n��j�G��X�[��ci My�d��{\~�N\X4�eRȓI�QD������?�+@(����"���jqF��6iK��}X�Է^bܿ x�B����8x��{ؽ�*�I ��X%V����W��(2���p�t���K��0m`Ւ�Q� dk�m=�퐗���[O���"�8ذy��k�b>�F
���6��;���>��	��cj��p�U _�(tV׶� c0x�U���x��1z����_F��m�y=�-o ������5+���S����X��k+�D�H���rM�UA�F������s���r����Eǝ��O�uؑ#������<z���0`����-DW��v�����{S�{���h �;�����4 ��˼�,|�ٟ���/�B�+y��4Z�� ��\�((���0ڑ�X��D�	���su��*�0$d��ע��Q�Oo�A��l�@&�+<��a�wJ|l�Mþ����n�����-���ᇼ!d�3,�r({��Y��>�����d�����2x!�����˝~��	�BJ��0Ɩ���1@0E�  a, 3@	�}?���5�~|xP `���X��?��,B���� W`9n��N�b�rW����Fm�2W��.�۱`�.Ԝ�Y������3���#�v�%�&M�gW���k�����~@�k�5��r*�ZIgKAv���M˥ ��ۊ�,ح���4������k��{ש7h��.��R/Ȍ&���P�6 �}�_�]5� �2N����.���u� ��%�!��xUp���N��͹�̉��aY��B�v_^�ka��.�S�>5�ā(a��R�q�Ih�+��K�b� 1G �'�	({N�?OEÄ�1^ �XK�b�w~lt�J�h݆��6.���CdY��DpA��c"˸�Mh�0�@k�?�c�Lũ\�ӹe9���Qjk�]?�!V�}R ��dP��2�����,K�w���F<�(�}��6�s>z�o������?��~��^�5�E��Qw;��E����=%A����2jF�m9v������4���E�?~���K.9v^{W��J�3��Ke"�'�ж�O��i����z�Ɩ�@�����e�j�E8�̡|�<rs�6�6M���&��RÞ�؉��sfږ���� �!���a�ڞ���`�	';��.Bup�k�딿tJ���7�L#U�	��;Áo����8���0��	�ft[�0�n�Z;�0*�8A�r{���	�̥��J
�1Մj�v�rŷ!���>|e  pԱ;�2L�o<|�/P�"5LaA��p�~��g�2�O���r��?n]�f���O����O;����y�{�L�k�n�g����=����o������JK"�[R�Y�igш��_.�*�$��l���ߙ4����媫g V~v�I�3��L��l�HIR J��+���V([�g�S�HG�)x2!�8���7ݺ���	x���\�_C�8�ī���}�����佦�w��.�A>� w�����伷�������߰�㿰i#�=�ߟ$�R����g4#����?<d������'8�ƀ���Ͱ�g���'�f;n��j�Dk�N��D)�+o?pT%J�xc���C� ����Ӹi�7�+�7�?r$`���p������n��t)I�J��Љ��0O(��Љyp�Q��wt�~[˾Zr��s�z���{�o�;���w~ÿ������~��G����VȖ3IP+'����ζBҙ��E���`9C}���%�o����4eϕGVn�����!��?T/�B���	)<ӟO��".�ȋ2��r�Z����W6$�)�=:���F�赊 %f�y+�N����۾u��z���d��
��ij=P5���2�p0D��7���Cf����q;��r��&��@Q�B�@�� 	𬅈�"�C�aO����� ��6��T�C��E�����@��w"<F�0v�p�#;���#�m �H{+p�^$ +__w'�z|�����b�G�^���:��Qxq�&TjU�D�R׮7�uRW�
�\���'��aǂ�4��������)��W���w�]��I���m�/^����y��w̿fI�}"d�%I�Z�ig{"v�R�ٞRd� ���~c��s��-AC�h������4W/��ؿ�oOoK��B"g'�,�@�a�\���F	���!���.���6(���シ 2T��c`K�[��a�k��{c�~3���n;���ש���>�HDC��G��U8�4�w���В����6�O�e��FG�׀;s0� i�����s.�Mh�V���o0�0�4D��@�c�ٲI�_� d[̧(�牻��(�)v�&@2K�e	�Шtoǯ���x��M8��Ǥi#롉����/�f�>��|V/~���RT2m� �_�����ۣ/q{�\�=�?y�Y�~�Pn��g�<��۞����zh���6���?��%��-�d{ɘ�b����@Qm�����߰G(�h�kH/ޢ{j��Y�&ܠ5h2�-!�[�7��V��7�  �IDAT�O�������)�p��&8q����I�o`�Ï������)�JX|�}غa=R"���
)Y	O���H�Q�y�Z '��C8��g���O<�~5�����(��(K��H�%D������*�<q�%7^V�"�] a�y�Q��Z�O�/���@�>��n�׈���h���}��rm���bJn�+茔�^���l�j7�UKc���1n�^�8u瑟X&��/��:{��g�Y������Q-_(n�[���-f��]��%?�����|��_;��>$�B��6�2u�5�|짗��g�^�-V��D���RHv�����Bڙ��{��V۫��I�,�oڃ"1M�)�9Y�r��ck6�u���ky>F��S"ۈƀ�s[ V$�&B�u��η�=��sF �(�o�G��}��᧿u��Q,��r�b�Z�i"�
�b$��P&Ɗ|.2a�(EC��3fb��|c�I?�yݵ��7�S��(IBQ��"t��j��(t���r���l\%2�D��5Ԅ�k�3�S	n��91C1� ٠���9�����Ed��O@"G���!�(yCg?��Y���W�u��s�A;��XF���Q�V<��߻�w�P������;_��i�����_9�>��n���5/^�+�żo/��p�(�b����Ig��noK���d��(�=�Zj�����ޢ-���櫯��v�i 4�5+K�ٺq�ޓ�d�әR�� )&�D����e}�����D�}�[7(��;e�Z��X��/����9g -�vz۷nŃw܊D�3 �3�X�b�8���ݯ��w�o���;=��Mq͕�Ög�`q%I(I���ȅ�}�����\z��c�#-��ƅ��HA3߷of�7�q���^��K�g+@����Z�"R�~�3l$���p�!�'I[�u�|q+�/~"-`�Y��.`�i-�<�v��UKWi�b�L�Ĭ�I�i��'�����ן+�=�����������{��oY�\�  ��R����ζ���R(�h+�+-�������+�CB�,M�)�iyb�}O�{a����p��Z�ʘ�� ��k������ߠ� ���J��|��m6DP�^%Y�C��@@!�|t!�:w @*-��$�2a̞%.
���	3f���$�M�9����݂k���O� 	E)PL$�� 	σ,�����a�/=�Cd�|y@ ���=���ZD}�C�|��ҧ�'jh��"x��4TH�1e��HI¸�  �^?|y���)n�+�:�``���;:1~�T��8i�� �?����=��H �R�I�ѲU��9X����� @��g���Y�\�>��
����W=���}��M�>��I�b1�j-�;ڊrGK��(%Ig�(��J���Z-I��,PoZ�gy�,M`S^��� ��s�}����U%?4)�s
���,���F����6 2�o�������	�Ɨrw>��.�F�m[�
� H@�֍x��g0��cw:���c�87�y
����`���fA���{W��v��w�O���A,��.0�-% �/\!���M����H@�����rN�.���ǈ�7F����#�������{�� ����9�w��h0y����p$��6�ۆ`AibP p�u?�ӫ������s.HZ��_Vqu��ֿq��J��O �$II�R!���|Gy�ںb���S�S���7X���n?~��V ��k����w^?ɓ�7� ��&}e)zJ���� �
i�UJ�ޒ���K�J9{�>s��ݖ�wW�h��J�ْ-]��w����8��;K��M��d&	���g����0��{�q��(�
��ef=a�����C�p��c&!�����6�o��(�&�����#���_�7}��Pn��c=pǭ��w��,� 
�PJ
R�$,�L,`H{D�b`�u�]�������/7�6U�s?�q�C6�[�� �:!�`3!��{��yT�����/ǂd#�@F�ߨǐ�&�\�L�^�P��PZ{fMYTs�xӦM7�{��?~��u��,�ǎkimk�൮�~w��ˮ��O�Z��KuA���T�4��ߕ�6챊�q7�^�i������5����ޱ}��;o[}��x���{��-[zc�Q
�Z��%����d{k���%��4I�G�Wye��R߯p��ӕ?�`�7�)�_�t�i)1�	m��Rc��fi�]� �]4���Q:�j�Kڌb>�J�\kah����2{~>������3��w�����V)QN%JR� ��p}	��A����q'��	3��6�vw�[��Y�y�u lx�E
�&��V �R�F��tȰ���h{4���)�ʳ*�2������}����ݰ�ק��'{�L�lS��S�H��� G
���RY]#�+�J;�)�H�Z7��������^^�����:aln0��Y��:��c��4ij�Ru����/�}ǭO�juUL��bA�ؚ�[���EZ��l_�6���jO%2 }�q������ο�CS�8��b���Z�<��޵+Wl[�x�sO>��B �H !PL��$��r��Ҵ�� ��I�Ӓ��b��RlQ��u�|˹�w{��]�f
�)��̛�6 ������R=9�$�1i���z`ڡ-u0��UFע82�����Od�� hi]��+��'� x�9�aŢ��3�lKa�}[X��mu+l>�)]&4���c𖿽tX� w�t~��X�f,�L"��6\�X6G<$�C��	���>��	Q ?���&�.��dX �{��m�D��=|��'V�n��m'|"5M<n��p@B� ��d�9�ȡ��I��0�ڊ0��\ܥr\G��h)jP���V0�T�^���SK���/~Z+Ӫ�$� ���5^� F+M5���ce�\��%��uk���7��u��u�~���F��}{1�TҶ�BkK���Ғ���WJ��b������L�J"�T��@R�$y��`��I3Д�J[�q���>�p�sWw�~��Q�T�m ����y����s��(�ǚ�)��8��@&;����/�Vx��{APH �ơ�ɗ������Ao8g}�s�uʛ�=淪>��|�ضՒI�@)�(&�D��I �X>zJAA6p$�$M�(\�ޅ�#�`ԋ_6�����ַ/��Ϡ? b+t) $�w��@f���Y@�eJ�m	��@���C���d�BZ�H[4��Y*���B)��,��tώ�-�<��S�Y��隨�J�$�B��ʈ(R�R�@.-�̤����D��+�+��J"��}�1y�O7��? t t�J�<n��/�$1�00P�]�z�Z� ��r42$TAP�P=m2�*Dg[����\�QJҮQ�'!�׊�J6�V��:#�ĭ��=�3i M�me��g�<���N�}��B�K�� �t�PoN��C��}b���� 9�< йm�x8&�3s��x��X�j)��BH%b]ix���w�����/����q�W�!PL�� H��@dd��y�F�s���XY6T8j �jl�p������xH�w�J���W�\�g�0H��� %����9(z��ll�?K d[g�A�bP��Ȳ:r]G=�P�)d�F��\�F��"1�B_U鯾wK睋�V��\	��N���OWӚ*֥�I=+YR@=���j*��$4�$b ����ʞ4�e$=��S�ZIM_�����+W�^�W�h�~���-�NRC$ɀ `�D����($IO)�]e�t���!;K�ْ$ݭ�r/�@�T�T9�	��O\�������ȫ4�)��|v�Ie#���V�x������CJ�)�7ྃmM�B���
m4r�p�y���>�U�$q��n>�yV/�R�H#��@�p����S���g���QcF���W^�y_�gpn>!�,ZR�r*�"W~�� ���f8� ~ �k�9�.��9�n�Ǧ�az�F����\ �w��}�B;���gmh�Jl~�\���3��U�YU�^���y�,�?5��@��
�����'�fi9��08�����y�g�: Z0bf$Y��P���\#�s��ȳ��I��B(��FDi"�˥BR(U�;Һ���L�(��΁U����E���m�֣���QuM�9��i(�u��Z"i���AIrДd�d�����V�,�j�F��Д=R>;��r���"�ӡ�'I�i��}Y�1���/c@�-�5 �FRl�G��s���yc�����K�m�3���I���0a�}1�����>���ۮ����/aǋ/8x��ʉ@k*P��BBH�l'@�8`ȫ[a����Y߆^>:�W ��7�u����t@�0�.��܍���?R��Ј��l/��:P��*
yM!���P��R	@	�17k2�H{Ki_��������s!Ʈ��*LOP(��X@����&�dI*�\hQ�yM�ZQ�j�}\����0k��?�BC����V�@���Bn��UQʲJY���kQҙNu�� �<�YBi������֚��"�;ʵl|e��S�}�Xi Mi������ �ҘS���6�F ��1@�;����n���F�+��s��2�N����n���UlX��~A��%(�-�e �޿�q�> �B�ި����>©Q�)Vİ
<^�^;�U�}z�>�x ���Yq3��j u��h�A��QШ*�����2ȍA��΁����\y�6�b.+��#Q��V�&�\�[�%T�DVT}z [��7=�F�������w�`ZH�i]��,�(#m%S�eZ��V�\emym��||e��24��J� hJS"�;w�l��-�|��>���I�I�K��  l��h�\)�3����8|�ǹ��������Y������K*QN���6!�T��+t
EZ�Ш�bm�QD�v���=�  L�%�%��)n��B8����o�?����Nhm���nP�d5����{��k ��6�u���Ч@��t���+�^�k1D�!�mh��Ĕ}j�Wɩ����mE3v]�t�\��Ӂ��*l̚Z��0����u�j& �U
3�J�����7^mio7M���I� hJSv"sމ�s��+ɌЇJ��LƔ4�рQPJ!�Jmcq�Ǿ��Ϲ�Uׂ�o��u<�z�W�`C��5 J��$�����M�7��y!ؚw ��:3FF����l0��+����ZFo$xcB�s�#�[Z��2���9�� W�=S�ƶ\c[ӗl�4a#{|���K�?���Ʃv?�TV�Jl ��m�}�D;o+��\W�6取�Д��|��c�L$��Y��8"=K��O4�ʑ�9��L����*���Z��o��?��������PJ��;`  lc ���!a~�>�P��:�;�qZ���s�=X�D���Ez�na���6V���*��r�4re�4��ٜ<�5��d^T�<��\o���pW��Wl��&C�զ�e�i 4�)�t̙�l�;C�&rs���L��T:�Y��#�mc'�q�G�>��Q������t�k~�kzvl{�O�S�����WJ	�+��|ecCR������ p���T�@�r�3��'��G���8�=�3)J*�\Ceƿ��*��|���10�1��Z,ύ�fH?�׳g�A7�ʡ)M�%i Miʟ/t�%�&���A��,�{U�lr���:��s�<�msg��Ƴ�����V�~�q��76|/��_J�r� �&����� F
^�K����Z@2��5G��?Z�}��`rC6�o��`���*�jE�үQt�}f��`��=Lk@�1�� �e.��ҷ���6�){�4��4��3Gnn_S �Z�WF�r5�?�Dc���=��7}��Gy�IӧM�1�1�eu�zV.{�>t����V��D@"
�R*lؿ`�b��d�����o���πs��m�J:.�s�}�����}���*k�2��2P�����A�ՠX6�Ơ2`��T{]n_������1�P�?eV�T�����&d���ZMiJS�@S��
	ut�6o>V&]�bZl��l�`�����J6��gc'�}��Y�3c��L�6m�RK[;��@���▖͛֋�7��������7����,� ÝAH���/&�~R8�a!	���'"�~X���v�6�*m(���IN�[%���q_G�|�V� 4U��P])m�����\��ۖ-�߻|Miʞ'M�)My��΅8���Z^���R�٨�<S�c��ج���fy[���� �� �P���v6�G�EHCz*��Հ�fZuNB�>D"%j�D�  �m~�-�T��C����l{�#Gj�w��[���x�@̕�4�� �6���2��0
��n#!�o�<|['z��W�)MiJ�4��4��;bJ�I9��^�����M�ը��6���Q�Z}T��֞nӢ4J�2�R�� ��&ȴF�hLWUHd�b� }����K�LhhT�2E�JQ3<H �R�9 ����6�S��� ��>+{mP30�h�1�i��dLF��N$*5 9ĲE/T���6�Mi�kY�@S��ʋ��������4�M���Z���-ϩ�wP���,7�zf�ڈ���Bh�&)k%�U�ȩ�Uуf ��D���:�g���F�W����w?�qq�U�g4���@�����K��y�E1
�lif������%+�,G&��;Ao����z�L1����R����:A��CJmw?��%�w���tl��q� ~�p ��C���:���#���᫤ ��x��{����~�e�,�=�n�����nKkg�)����j��H}_ZR��(Cԥ�bN9M�&oO�8�<��0험�}���Q^���O� ��I/^Dz�*�E\t�No�8;��2�^o�C)�:�ô�C��o�Sn-R�u�e�T�%�rJ˘����O����?��(�s�ˏ�/��O� ��{T�{ϻ_��n�^����0�]�iy[���9�>Gیi����KԮEiS��.��u�K�|& ���"p7yw�S��%M�5}�Ի��7q��v�{��&��*֫�X�/���k��_S ���8&d���E�G�1B��( �����                                                                                            _�?H���75q�    IEND�B`�