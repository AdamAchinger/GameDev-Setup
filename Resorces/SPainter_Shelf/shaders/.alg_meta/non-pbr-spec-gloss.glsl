        r e s o u r c e _ v e r s i o n       /832b9e0a5f2746dac3563367b87a9a67b3f1bd77.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           0 l a s t _ v a l i d _ v e r t e x _ s o u r c e   
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
   4 l a s t _ v a l i d _ f r a g m e n t _ s o u r c e   
  b
 # v e r s i o n   4 5 0 
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
 # l i n e   0   7 
 / / -   l i b - a l p h a . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` a l p h a K i l l ` 
 / / - 
 
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
 # l i n e   0   1 0 
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
 # l i n e   1 2   1 0 
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
 # l i n e   9   7 
 
 / / -   O p a c i t y   m a p ,   p r o v i d e d   b y   t h e   e n g i n e . 
 / / :   p a r a m   a u t o   c h a n n e l _ o p a c i t y 
 u n i f o r m   S a m p l e r S p a r s e   o p a c i t y _ t e x ; 
 
 / / -   A l p h a   t e s t   t h r e s h o l d . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 3 3 , 
 / / :       " l a b e l " :   " A l p h a   t h r e s h o l d " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   a l p h a _ t h r e s h o l d ; 
 
 / / -   A l p h a   t e s t   d i t h e r i n g . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   f a l s e , 
 / / :       " l a b e l " :   " A l p h a   d i t h e r i n g " , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   b o o l   a l p h a _ d i t h e r ; 
 
 / / -   E m u l a t e   a l p h a   t e s t   :   d i s c a r d   c u r r e n t   f r a g m e n t   i f 
 / / -   i t s   o p a c i t y   i s   b e l o w   a   u s e r   d e f i n e d   t h r e s h o l d . 
 / / -   S h o u l d   b e   c a l l e d   A F T E R   t e x t u r e   s a m p l i n g   c a l l s :   i t   c a n   b r e a k   d e r i v a t i v e s 
 v o i d   a l p h a K i l l ( f l o a t   a l p h a ) 
 { 
     f l o a t   t h r e s h o l d   =   a l p h a _ d i t h e r   ?   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( )   :   a l p h a _ t h r e s h o l d ; 
     i f   ( a l p h a   <   t h r e s h o l d )   d i s c a r d ; 
 } 
 
 v o i d   a l p h a K i l l ( S p a r s e C o o r d   c o o r d ) 
 { 
     a l p h a K i l l ( g e t O p a c i t y ( o p a c i t y _ t e x ,   c o o r d ) ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v o i d   a l p h a K i l l ( v e c 2   t e x _ c o o r d ) 
 { 
     a l p h a K i l l ( g e t O p a c i t y ( o p a c i t y _ t e x . t e x ,   t e x _ c o o r d ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 # l i n e   1   6 
 # l i n e   0   1 1 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 1 
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
 # l i n e   2   6 
 # l i n e   0   1 2 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   9   1 2 
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
 # l i n e   3   6 
 # l i n e   4   6 
 # l i n e   0   1 3 
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
 # l i n e   0   1 4 
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
 # l i n e   1 7   1 4 
 # l i n e   1 8   1 4 
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
 # l i n e   1 1   1 3 
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
 # l i n e   5   6 
 
 / / :   p a r a m   a u t o   c h a n n e l _ d i f f u s e 
 u n i f o r m   S a m p l e r S p a r s e   d i f f u s e _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ s p e c u l a r 
 u n i f o r m   S a m p l e r S p a r s e   s p e c u l a r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ g l o s s i n e s s 
 u n i f o r m   S a m p l e r S p a r s e   g l o s s i n e s s _ t e x ; 
 
 / / :   p a r a m   a u t o   m a i n _ l i g h t 
 u n i f o r m   v e c 4   l i g h t _ m a i n ; 
 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   5 . 0 , 
 / / :       " l a b e l " :   " F r e s n e l   P o w e r " , 
 / / :       " m i n " :   1 . 0 , 
 / / :       " m a x " :   1 0 . 0 
 / / :   } 
 u n i f o r m   f l o a t   f r e s n e l _ p o w e r ; 
 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 0 , 
 / / :       " l a b e l " :   " F r e s n e l   S t r e n g t h " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 . 0 
 / / :   } 
 u n i f o r m   f l o a t   f r e s n e l _ s t r ; 
 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 2 5 , 
 / / :       " l a b e l " :   " A m b i e n t   L i g h t " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 . 0 
 / / :   } 
 u n i f o r m   f l o a t   a m b i e n t _ s t r ; 
 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 0 , 
 / / :       " l a b e l " :   " L i g h t   I n t e n s i t y " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 0 . 0 
 / / :   } 
 u n i f o r m   f l o a t   l i g h t _ s t r ; 
 
 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
     v e c 3   d i f f C o l o r   =   g e t D i f f u s e ( d i f f u s e _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 3   s p e c C o l o r   =   g e t S p e c u l a r C o l o r ( s p e c u l a r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   g l o s s i n e s s   =   g e t G l o s s i n e s s ( g l o s s i n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 
     / /   C o m p u t e   l o c a l   v e c t o r s   a n d   c o s   o f   s o m e   u s e f u l   a n g l e s 
     i n p u t s . n o r m a l   =   n o r m a l i z e ( i n p u t s . n o r m a l ) ; 
     L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
     / /   E m i s s i v e   c o n t r i b u t i o n 
     e m i s s i v e C o l o r O u t p u t ( p b r C o m p u t e E m i s s i v e ( e m i s s i v e _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ) ; 
 
     / /   D i s c a r d   c u r r e n t   f r a g m e n t   o n   t h e   b a s i s   o f   t h e   o p a c i t y   c h a n n e l 
     / /   a n d   a   u s e r   d e f i n e d   t h r e s h o l d 
     a l p h a K i l l ( i n p u t s . s p a r s e _ c o o r d ) ; 
 
     f l o a t   n d l   =   m a x ( 0 . 0 ,   d o t ( v e c t o r s . n o r m a l ,   l i g h t _ m a i n . x y z ) ) ; 
     f l o a t   n d v   =   c l a m p ( d o t ( v e c t o r s . n o r m a l ,   v e c t o r s . e y e ) ,   0 . 0 ,   1 . 0 ) ; 
     f l o a t   n d h   =   m a x ( 0 . 0 ,   d o t ( v e c t o r s . n o r m a l ,   n o r m a l i z e ( l i g h t _ m a i n . x y z   +   v e c t o r s . e y e ) ) ) ; 
 
     / /   A m b i e n t   a n d   d i f f u s e   c o n t r i b u t i o n 
     v e c 3   K d   =   ( e n v I r r a d i a n c e ( i n p u t s . n o r m a l )   *   a m b i e n t _ s t r   +   n d l )   *   d i f f C o l o r   *   o c c l u s i o n ; 
 
     / /   S p e c u l a r   c o n t r i b u t i o n   ( n o r m a l i z e d   B l i n n - P h o n g ) 
     f l o a t   e x p o n e n t   =   e x p 2 ( 9 . 0   *   g l o s s i n e s s ) ; 
     v e c 3   K s   =   f r e s n e l _ s t r   *   m i x ( v e c 3 ( p o w ( 1 . 0   -   n d v ,   f r e s n e l _ p o w e r ) ) ,   v e c 3 ( 1 . 0 ) ,   s p e c C o l o r ) ;   / /   F r e s n e l 
     K s   * =   n d l   *   p o w ( n d h ,   e x p o n e n t ) ;   / /   R e f l e c t i o n 
     K s   * =   ( 0 . 1 2 5   *   e x p o n e n t   +   1 . 0 ) ;   / /   N o r m a l i z a t i o n 
     K s   * =   m i x ( o c c l u s i o n ,   1 . 0 ,   g l o s s i n e s s   *   g l o s s i n e s s ) ;   / /   O c c l u s i o n 
 
     / /   M u l t i p l y   b y   l i g h t   i r r a d i a n c e   ( e s t i m a t i o n   o f   t e x e l   i r r a d i a n c e ) 
     d i f f u s e S h a d i n g O u t p u t ( l i g h t _ s t r   *   e n v i r o n m e n t _ e x p o s u r e   *   K d ) ; 
     s p e c u l a r S h a d i n g O u t p u t ( l i g h t _ s t r   *   e n v i r o n m e n t _ e x p o s u r e   *   K s ) ; 
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
   IHDR         �x��   	pHYs  %  %IR$�  �iTXtXML:com.adobe.xmp  UTF-8 XML:com.adobe.xmp x���n�8�������.��D�fC��Ev���i/0	*�,�&����>Ҿ�R���U:H������9'���'�z�,��l�C�߿�����_�	�$#6�<�����+���3}��9���z�,XN��"�3k=��ϧ��H��!��P�\tHדsi�S&�=C�!ұ�#�@S�_%a�`bl�X�^�s$~۩X��'>�y�'B�ժ��z<�!b�&�*RUE�P��8�k%�>mL*�e^&y�c��L�|�e�H�]�y-�(�z�{_�5M�a�&�&Y�Qyk��X�,�3�#��d�s��yr��	w;�<}��E�2��w�����>a�e|�zl|'�������[��0��)z:���Yѳ�9�:[,�5J�yz�y�l���Zli4*�S��k�|��l�CI�sŏS(�*�~Et���"���f؁���ap_��vE4K3,L<�y�Fz�,�iN_�R[��=+���N��3��xf�����]lZ#�T�s4�5���F��a�7̒���ŵ��YN&�Y��4�ؙ눆^��~�n��2e*S�Z�*��5�4���3�Oi9�}y���޲�Xѷ)n>����}2���+>=�B���i�Ӂ��'��Y�jf�i(j/�jc����vMLN��F�>!��G��au|:��}�E�%�D��;{ISV�K��~k��e�Lh��"i�r��rCPh�:bQ����W�o���nY����ߐv���,���ڐn�������L,q�R\�*�&i,2ڬ��X}߱�5�/8T|y�4s��/�]�K9�h�D�Gt�۲�˅
R���ѻ7���{Ǚ���P{���4�1�A��j�H;��co�}EQ����D�=M�&�*�~ۮu}Q�Ǯ5�o��^W�)%E���7~d]�Y�&Nkw�[&���͙���df�u�V�Ƕ�|����"�^��v�p��rz os���ې�9󷜓;-�+^[�zo��Y���Ld�ب�v8��؊h���LS5����F�������Ǯ?�0wԭ䠹�*��7�i�	��c躦���Pq�Yt�b1��>t�nE�=�ʛN�MC�I��ۛͫ!�}7�����K����_ @ �   @ �   @ �   @ �   @ �   @ ��3������Cy%�8��WE&-     IDATx��y�f�u�;}���}�6�f�7f0X��.Q&J�-ɑbE��(ŉ�TT��J�q�+)�l�U�H���#Wl��RI�XZ(� ���b`f0���[�����}�o��}o`�߫��{{9�w���ӧ���2222222^�0��Ǒ�?#####�U���7;��@FF�U��}J��TN?� �ݏ322npd #��GL�u�@�p�Hs-`��a��1�����Y��x��]�=&uޯ���X9�������:�/��2�㔢���q������]��Yv��S$_D�r�\b��k7��7V���P�d� #�"+ �)=�qU"�#�:�Om�����1�w�ֱa�(����k��	�7em�u��ȸd #��Q7��[G�(ɺ��������Q'�ZYb�f�oۭ#~�"�� t��t���VgIH��!##�����s���d�=� B�n�}�5�M*
��?nP
M!?���_�A)�����}&��j��B�4� �ݐ�5�����]!+e]HY�|222����=$�3���$s��؆l+����P* �Xyh�:8�<ux�1�������%0�C�>���7��K�J9�� �B�(�t���ǜ~�n�ıT�UA*RA��%��@F�EV 22��	_��%��=��������P�0��r
� �8�1h�1P��z��{�L7���ҽ��e^f_����i��-m�Ğ�B=�%(��`02�ǿ~~���)��"Ed`�bv�7񥯾�������5F�� �`�`�*�M��a��w�b�[<�P����
AƫY��(��Bj:�t�c�o����=� �!��xX)��$� �Zc̦k��4f��=�jk���6�����`�`X]�ad�����͡�A�n� t���t���H��I�P�KZd�@I��6�.4��&��Ő@C/���\nhu�hH)��o}uqqyk�ps�(�����'�7�E m"�$� +�ް
��M��E�-t���J��>�cV �P����̄��W���jE�q/7G�g��4��$�a�W�0�#�a�1`���P�x�ÇN��N�`� �c?xB:�Ka���6� 6UYOSV�00�hO��%&B����=O�!���J Uv|>�O ��l���j��" �0Ơ�P(�B���D���@�@��{vI��?|B�Y�"����>��F[_@I�+J�y��֚���U�D�R�Du�n8"�� g:�+���JDV 2^M�M��1|9��4�Ǆ?b{�# F��~c0�(���&;m=���?ybr���tW�;�Psx 0�l-����(TI�0]c���e�=t ��X9�/տ�qg��`D!L�zP���`E �m��j(L�
��S߸��/����v�w?����O,|������V����nY+�� Q*V)X�Q�&�����b˦I��Cu>�w ��� d������=z&��q{i�Q�F9LkV�艹��}�O�X_�[[������gjvz�kmLL������@���ȶJ�T�/8���&AwD�Ǟ�­����]O�����]C�`QFlv������&.-l��_������s�am���֕R�X�ۆ�z�B�^� ���:���o�tHL��ed���
@�+rL���u���hA٫��0J�1U��ǌ��1h�N4h��b[�������A5>��=��+�k�zi[E�-��lO]��v-'"�$z�@�_]o�ңO���(3`ˇT�P
�4
��#�`�g��o��ك�x�e����W�;27�z������ ���"J��u�5+kE��n7p6�@�:�>����d���
@�+���x,?�g�FH�#
��8�1�1
������x�[�,,��ܹG��C�	���&0X��n����W\iҧ�B����+�O%`����W�{�������k�_��K���`�i`hbj�H���6�
���y|�Ϟ�s˭���/̯mt:��ڨ�P* �Z��V�U"�(�b��m����u��	�� v"��`�M�� d��]o_N��q�Q�;f�0�r,Tk����C�bt������3�'����7qۙ݀��-�; aqeF@
E	2�=�>�]/;E�Q|�V���o�Y/����c�C%���rE�Fk��6  
 �
����ιLO�����ֹG�sQ�_�^TJ=��2�`Mk�
`�(��.�k躡�ux�C9�n� �
d�4�
@�͌To_���w�4鏣$�] �U�������Ə��=2r��)��7���.��:�5=5��6�����gr^�J���c}��w��% Y�td��?����BT�v���Թ_e �v�@�����1`jXm�g��w�.�闟���O�p��{���<�����KJ�gP*K�:�Z�rQ-�����CalH}1#�EV 2n6l��gG>&�1�&~&�I J��`Bk�S��::U�����o������/la|�	*L��/oBw4ԀJ�}��ָ�iE��!���+�����|��S�il7���f�G�pbd��t5T�04;
4�<��6��[x�Һ��sk���m<��R��B�[J)�]����WJ��RQ�-���2��3 �ƾ�*�q�"+ 7Hl��+�I??��.x⟱��L�j�q��8�������S���&�k-,,����)��T�6w;���[�n��̟
�E��) �N���D�k����(�/Lφ���MW�h�Ph�Zc`���	���A�̿���_|��օ�ˏ?��u��"�E��"���(XXD�#��U@�"H}� #�@V 2ntH�O-�#�峉�w��I(L��� =t��-�|���mGw�yz7�[]tas����-(�?�C*A��8�:% ��޹�_�PG�r� ������߾<��ޖ�k�T�oa�Sj��Ѱ)�
&�����6����=��/>���˫�猡' ,��Z/)����Ֆ�K��:�f��\�(�A ��xY������Γ��F oҷ۔R�5�`����}`��л�+�����2[�nǠ�1���@�y/Y
��N��/�·*q�z�=� �]o���@���G�|�B:�e�J,���7�h 67�X�������O{���<�-���e ˡU �@��u�K���d�L�
@ƍI��tc3�0J��?��$�=���Ѐ�3<������7�н{�h@���b}��ͭH�1PP%��t��O���$��*{}+ �ɯ3���7 �1 ;+�T�ޭ�{4�g��n� T��%�R���#�1P�1� F�hw��~�������w.<~n�Q +Dt�e���Rj����2���m�4(�lȟC��/��q# &~�B_���c� &0�)c��L4��G�{r�G~�hcd�Q���.��.����R�ا�Y׭�WS�0��T�)I�@[�)���z����+T*�{����(ݶ���ۤ�h]��<8X #M�V�ژ/��S��=q�g�~gm�{N� `Ak�oXk��k�q�}�q���`F�uGV 2^N�z�����?
O���7	`Z)Li�}�~��{ny�[�N�7J��O���t���jc��$���
�v]�:2�V����R)��e����3B��_?��C!�1�����6;Tj����&��u�1<����{l���_������䷟����5�+� �PK�b� H9�&�32^d ��@]�_��yu>&}6������8	`���g���� ˫���\�5ճ�*�* ~�/ҭSj�k`	�K	������r����Ԯ�t���>����5���B���LןE��f0u/���!`@����Gϭ�w�������9��F��� p�,�j�G����"C)?��d\7d �D]��퉝�\o_�P��� n�=98��~�̉��x��,��[X�h�1}
>���b+�KV�����L}9��`O:&cG�n�_�vї% �����PU���qأ"��Ⱥ�D;SQR�kC|����u�o���s�}f�	E���J�Ţ(V�h���<:�jg�2+rh #�"+ /�nu=~i�D�۟0��C�oNM��w?y��w����F�.�C�(���v
@UFt&�(*;�oݲ��/a��~m,�B�Q_NKّ� v ���0�@E�|�K�����LJ�Q�*�ħ�~
?��Ƕ��dt5� C�v�M`a������ϟ{�߹8���/�S(��������֗��.�\�0����3�9��q�!�_z��?��g3�J�ߣ��`��cS�~�ms�G�����݋��,������B1�'H#8���${J@ߤ[��=�,���tN{��_���@�r$�G	��C��?"�x�����J�6���uH b�{��"��М�:�O.���{Y�k痾�'ߛ����*�K���R[�K���aE`~��t��mj���-��q���V�j�����?���g��������ݶgv�9��ݳh6����ot���|Y�{录 Jd��P@��j��� !��[����=�����1t<,�W�@���������%�ї�@�`m`���M��$��ظ��_�W}��_yni~��":`�eM�"��y�րx?����Ydd\��q=�=~B8�_��'?,�+�=Zc�����?��ۧN�5s��8�F
<��:6�CE�ӏ	>E��*"�M��BR���`������[�UX�]�핀V!���M��F�г�;T�xփ�%["(�*mkHl4`Z]4���C�f��w�u����SK���/������Z(Z:����? �#+ �d�Bl�)��1�	��[�Pح5�����?x�̙�S3�C�����nkJ�hP�����J@�mk	�J@TP=�Ƥ� �j�*)���T_лNyQ�v�	׽:�N�A���֩W]�K�,��%�F����1 :�S�����������Z��c��=���#(:_��.0�t:�(-���&�@�5@V 2�������s�#({�l�/����P���5x�G�{�ЃgvO���˛h��h( ��X1%h���ĵSS|ܝ�S*օ^�YC2uu� T+��J���D�k ���|�>@�U�p���# \�D�9Z+ ��vE��6 c@��#�Zi�O��/\���/~K):��������b��]���Ƌ	eE �od �j!������?;�� �Q
������ӯ����iT��`c����6�rg�'�罬 \�p�J�)�6�!&J����I�f�`M������^�A5�^9�a=�.o����+0���S �2�W5��
�$� ]��]�(�Ŷ���������wV���#D�4�u^�����"�j7����r���22z + W��ן����� ث�j��w�����=S޹{x�����A��ad���Ը��[��4�;�D�})=���4�m{���ąH+GIM!Q�>,�I{b'����[���%�o%��	�D]"`p�	���J_��S[����?����.�wր��tP~�p�" �3�C�? �'���7$�˵������Qz��p �a�0g������{�c����X]�`m�c��G�h�T ��3VL�e� أ������aT��{���Z�4�d{��o��@.]_O|���oD��KT���(������=0`ߦ���V��-�����o�k�̳/,XY���Vw�S��TJ��k�N�����F~H2vI�������+ 3(����G����3�>����n=:�Z�.�7�y�^�T{�A{�`ž}�AL��d[ÈW�Z`���
H�bRW~�o���bkIX�d�j+��gUO�=�y�l=�;�;"띤G�Y�)�-�Lj*�������������'_���7�x�,����nw@��pjX [2d �p��W�c�~���[����^(�j���o�<�ɿ{��{o������u ��n�WK�u
@y� �����l�P�M�q�O��:%��� =��>�MW?<�S,�з���=�/}5�۞s]�Z � LA���-��ʟ�{����J�� \��5���(����lv�N��@�v��~��C����=(����Q"�'tϯ��3��3w�时��с"r��@HdI+@	�_s��u=�+URV�^D�}��fT/H��ˡ ��QzWG�>i'_��=a�w6�����bs�K��P�4T)��d�+Q �xx @w�t5v������Dw�����z�IFO"C�Ac� P4 #�d���3"��,f����b��뙀]���*{�{�e����'���9�k�Y`~e�s���( v'~X�
�؉e����QC1�n�!�_�pv� TC�C 5�٫ug �<�>*��m�3���L�h'��a�<;T����� p`����/n���O}��G[x����Z_��@���S��Q�gt�Y)xU#[ 2R`�{���ǽ� )�0)���^wf�ԯ�5��vv� �_� ��\��
@�������U�'����T "Aa�u
@��N)*���t:Q�.F^.UÝ��|e^B��_I�k�^}���>o/Ȍ�@X<�O��G��3����A��v���]�o<�w�������6J)�YZ���.Kd�� p%Jw�+�<�Q�������ߣ�Pj�s�mg����;���5��;3���-(6�^�G��]��Ą܏�(:!�j��e&�P�S�aR1�j�T� i\�RW�D����}���+<,#�ΤPU~$R��º����S���3؆;�T �k��[�[��C����g��Կ����]j���Z�� . ����Cl���r¯bd@��G)��u�����a��=�yӡ�~�#��9qp��l���	"�RLQu
@[CڱI����"�)��_	�=P=�$��Za��[� D�W�{���J%�\�9V:�+�ʰ���/#B���E�V�0��WpG���C�LS=��Q�k��"c�Yk���x���O���#3���������*�bPk�Cxr�  ���+��71��������c��k����~mpdb���~�M�>�ֹ�nW���&�7;h�xHf!ń�Y_�-6�'��~L�19V��t> �2����*<*�6�w=S��M>>hӥ2�ı
N��V;��O��kW���9����LO�<���E[Ek�N~�a\�qF\*ޑ�"�0<͎;Wz%U�FE�B���Bwa���~ӛ�����^<pias���1ukHd��Y��`�Oy��Ծ= ��%|�m�xͩ�[�'�?~h\=��
V7�hn�4I�q���i��ܿ�����aᕴ��'�1�
@]k�}}�ݘ��>GY�����u�םPI݄jc���D�q�`��'椸����NF"�v9�t����C�=M�jZ]�5Qم�g�������+OhR�h�yh}��<�O���+�r�`�+Yx��{����g �p@)0���<4z�/���o�������M(��>IXv�� Q�Z"vb{+@H�iR�$N�'ԕ��Q�_	�jr��B��� 	׀5�t���й/����c+��1u��=�K���([ #:�hS��ا(�,��K�&q$��s݁~}jl�N�t��}    IDATTV�CC���:�/}����k_�.)�- ��/��,����x�@^3�U�<��$��˟M�{R
G�p\k�z������������6�(A��i��ɼB���;�(��[	H�V{�G2{�9Tl*kҤ �PQT9.�W�A��e%��C~T�9��d'Kʐ��%�4�u���5dPyr�¢��s�����4$�r5N�������2%��Ig�p���ś��=�셕�^X_SJc�/������32��� ���/�\�o�~���]��N6u�G�y��O|�����.�6;�v5
O�I�OT�B��|) )氈�c��2�� �]�@�n�zG
@����b!&{��R�Hv��J��a��!ɼJ�>]�W?�/���I׽��cQ]��p�|R��1�J�ZE ���Vf����Ψ�<|ltTa꯿u�RCDD�7@��B�90��� ��@�^�������p�1�����]��?���[�h�/mbm�SjDa�/w+f�z@$�S�a�J ��z�{( ��Ɇ�B��օ��Da�|�l)"�����c�.IX�c�ɓI�9��N�MK2]ਧ9��6��ɯF1��#y��C�DpM�MH*=Y�W[,k��C�+� ��w��MD0謴0�P�����N��30�O>��ADJ8�f%@:]�Y�@��� �>��D����&�����������{O��7F�+[�`��t��'A��+
@�8
��4�^oH�N)V���
@���ՙ�u�SW)/�S�޳(�r�ZNok	�tQ�(��a�>��&NW?�o�I���k����F�ԗI5��bG�ɦH%�j�Ba��$6V;x�O|��ｰ�M"���x�zr̀5x���-�W ���I����4�T�)̍�����>��c�͂hi��z[,��e &���P���*V��&�	���l;� I���oģ�s�U� k+{����R��^>^O�S�~�P.�a�� ��!��i��z�>��|��PƇ�q�~vBi�&WDr����x��@_�;�8M*��q�H$�;�0��н���������ͦ:��o^�Mk	P�Q�2nvd��I�<�Ͻ���>8=2�8�����읻�.-n���B)�[�c�cR�9Pm,cr_��+��_% ���疴TI�� �UyR`���L���NP�|�dx���Y��M^f�����1���ɗ�C��Zm\O���y�r^� ?��*�~�
��Ni�%�c�M=��$T�����^�_�x�{��ߟ|RC�� /!L(��� �rA��x���>S
����~Á����Ёóc���a�)����> ��, Ѥ� �4ez9=� ,"�m��k� ��VIC28>)\Ũ���G^{��R<�Q��(B� � Wq�V���ibbE� p~U�+��x��-�m��g/�+�$}ea\t���m�&]�t���SE� *:[��95��_{x���-L����VJQd���� ^!�
�+�ڲs�\�g
!��)�#Z�����}���{��:�_�@�P��\���"�0�
e��_#+ث�Ӥ�	+ȭ	�(CEp�ZG��&�ľ'_G޼$/w�HP��g��Ϧ�w�|��D�����I1A*+����A�2�[2��R`�{�����z�[X����I���˃O�x���4N V ���-��~�cJD�OQ޷B�HX���$t�7q��$~���g��ԒRJiC�i�<��}^�
�+���<_6���� 8B�c���}?��[N~����]^��Ņ-��"��Z+ Bj2��I�pPDCQ"
�Eu��Q9����A
@�!��k(�� ��8f��$AT�>���`�#G�"�!��K�9�%���J<!��_�kx��9�m��H���~�����Qu�zTe�u��,q��}*u�
! �uyj��w��-#SSCS�jꉧW6�a����B��J�M������L������R8�5�=�������N�{ϭ`���P�ABI�5s�&�:h8SM�qJV�P!�d���r�Rn5,����eEu�J¶����gJ�k�T8�ɺ	����d�T����۲TY2�|C q�@��æ��t���C������o��i���_ �a���
�劂d�$���~��]�va-9��2�;��m�D�&���hj��������'��#�AD��� ȯ�,�M�e������ʀ$v����r���8�n���殙��<��
@T.��$����Y�m��&�W���N\l	��p1)�"�º%��j��t�Ǟ�׮\��^t���xa���W���i���?Jb ���M�Jƹ�a�Gh��pU��x��� ,$2�Daqw�u!x����S�a� \��{��T E贻�.oah����=;=��9��S�{�Ԋ1F�d������&DV n~�����'~��R8�N�ß��������NG���&
���p2��~� eU�	��.��+ ������i%YM/�2\Qs�� 
½)�*�@��r_����,
ɐ����x2�$Z�,|}"҅U
�cA��H#E�=��X}IW��GP��������9��ɇ)z���w���AB��?=i�~�� �|���z3�G���1r���=����#Pj��`��Vnbd��FL���gg���="����_��m����_����͎[�/��3�n� �<q�(:��9G2j���+���J�B��������ʫZ�0)��
�ۣ��j{�.�a�t$��O��~_N��o�(I�~� �pK�*����!{�q�_%��7�x
b��G��ZIE�)8���	�{e�Xq`e# �X�c�"xPH�D
�{&P���=����(Bg������f�;������U;��d+@����Y�yы�yq�C N 8r���k��?񞇏^��@���T�;B@��}_�
�Vy�B���NB	�Ȣ����D�久i(N�I) T�_U ���W�J� D�{�n_��+a,G*�}���d�}�A�L8����Ke���$������++LO�������|��D�w�ݻ@�2Aj�]	���g2.�o|a�BO�d�>��Ǟ�
��-�ݳ�89=�_�ވ�Z�J�[v�I��c�q������~�(����������}ߩ׽��}���R+khc����ō[����j�'wCS�R�^J	�$eRt\-!ˈ��)ҧ�~)�ɝ�H�C*.L�q�FU��n*!yy$�H�s�˭���'/�{~�sA�q��z�W���`��s���5FG�D:�Ya-��G��QփeGcсv�.V�w��Ny]�|�'!�t��0td_���O��/<���4�3�x�s����@�tp�g�3n@d��&������ G���~�}�^����2���z�P��( ADdKQz��*��|�O*i��P B��[�<��* �|).���;��d�$����9�	R���e�/�
d�ћN� ���c 9�׏\پ����q�0�ï� 8��e�?a�_���ò|qϝ$��[w�k���RVʖ�G���n��/�N����S�l��.��0�,ma���t���3��'F�Q��1�-��}nd����\�wa���R8R(:��=y��=0e���z���E�ׇl��� ��PF���� $eQR~�2�F�%;�-!A�x_���0�;�.ɉ��}աA�QI��7e��n�Nɯ�/���8����*:d��>7��8 x";��_sR�|�ǝ�W�(R�G*$��+E�~���*��1Z�~���I�	��CH5����&�NN����7��?zrĐZ%2��b�&��ܠ�
��nQR=�?��#:����z�g�M���z�B4d,PW@t�&c����Pm+y��%���TR������
C��1w�6&X��@@�b|>����c��s��N~މ/Lg�}�w-�����*r�S>�+ك��"#�yPq$-}~ic��)B|]���)˂{Љ�Nd��`�wSC���B����$Ξ�O畐y*Ar�9��7q�����ӟ���j=r��.3n d�� �����c�ǔ����v�-��N��:h6���� �����k
c �*R��)S����j �QQ2b��c�ϑd�"ҏ�ˏ��i(J�KӒ�s��g(��*�]�z��e�AP9�4O�si��\>%�Hc"����%��)	Wg����@��JG?�z�����P��A๭����˼�`=�����k.�w4���������,5Zg@�{�� g�oU�ߝ�g�>��������7�>��0Hm$�	�g�!�Y��!ɟ���� ���G�ç�>t������`3"Ȉ]��az�+��l�GU��D�C�����2��qeT	ƶ�Br*I�D�R��� ���trj�jGV�#n�l0!x�q��(�^7��R�*KP�ӊi~�	�O$�4�2/�l:�c��p���;fR.
o���M��H�++�X������Y��: {��,^�����9��
 LE���Ç��6�%˼���;ӛ�{zo��>�����çf����/��sc뛺�Zv8 ���,3nd�����X)�i����Эg�|߾)`q���AU�dj%Is4&�S*1�F�X%ư��(�F0n�*JBRVXF�4��z( 1����~)@��o�%���	w��1!H�z�./~�#һ�������R9�r<�:v�[8�\寁#o�WL��,eZ�6TØ���,6\�c�7"�p�\��<\��;���*�����^��w�eZ�`D~x1�^��%����� E�,m��-3���sr���ޯ=� �BE ^*8+7 �p�[���}x]&�#J�֘��Gn{�{g� `y����
�mZo+�ORo�L{ĹAH�OS�R���^'6�Pmy��8OA�.oH@aoQX��=�Q��.Ýgy@�L������L�6/��޼%m�{��qoXY��7<~_�Y���%h�%UZ�����l�����^�~m��:l�\[�}rβ��d�����s��`Jŧ��B��y噂gF*`�EƎJp=���(Í���h�.�$T �Jo���l�o9�\~q}�7�o)�m�=^((��`�
������P%��J��8���~�C��Nv��k�Ҁ(9Q;b��ņ�BL�TiRʃ,'��S�H��Z VdRe�I_/�\��>��4�b�����V"�г\%�
���m����� ��%p�1��u��U+�|͟�-M����������労$��$tT���r$��}+�ވ|�w�"����u��'���`��Od��Yq�ϳ��s���QO�T����}�Z�D��s��|ne�#�/t�p ���&؍j����Y��P��!���?���R�Ek��N=����Nv���F͆'�F�
�$�Z��� �e��(I�`�2�y��A��f����9)*���M�a��+E�L^�r�ȍL�|L"ލKGK +�B�B ��ˀ,���}���qy
�/�������m�$W��%�D˨�ɴ|�$�s�2܇��O�x��'V��b������T����~7uO>�&86"�k��f/����4�A@�=2�Df��-K��6���-���w��������@��f%�eBV n,�V)I��(��+��Z��Ͻ�ԃo}`��V[c}��B��V ��DI)3y0 �o��"l��Zf$�WCV!夬0��W�zV����{��"E��s�}"m�p}CNN�4�W��͏g��2]�hX�?eØ��&��7>�ĮS	�P�Lߛ i] ��r��[��9}b�{�T(?���kn��SD�iٟA:*��0����)�{X'C��=��{9�!c�Dl�W�o��(����ʹ�|��M���L_��;PHZ�-]���>5�����7_�� {�� d�eCV n�"��؎����N�����7�jllu�u��It[ ��6.�L�d��p���X�	8�[M���* ��~�D��x<��~��� ��;�t,��bӪ���=v��
O�Ǻ#A\({o2�+Bqp� 
=툄�����C�ѿ�M*�!�JFP�r�1�(�F��χS�L������{*��%�p�t�j���%Ξh�{�.۶�NWͦ����L��^kAu4���[�^X�~������J@^*�eDV n��-�����ߎ���`�����;������liOV���h�wXv�`�~�"��P��(!��">�5	y�9�}���֑_�h���U�<3!��>L�ޭ�~?����c�%:��u�������0���{��x`�o&��B�z�)����˒�E2����~]z�����}2L�������w~�LnP���>@ڎ��D7�����
(�J�=�� ��"�7�(�]<���K�ק��� l"$�X�J�ˀ� ��ුɿ���8�n)���{O����Mmnil�ʞ?K!���8Tے�Re�h��	[�$IW�;TmOd�b�eLTv��$��9��`��)�*O�u=C�O"g{�.�Hb���g�}�1~ 4�{yR!p$	D$�J �@b��!�d�&��c���'�!dI����d L+��~"Bf��/������������&H�h?��h�O}i���W��7p��ӿ��P�#Ehmt@�.����+������Q
��1�cO@~0(+/1���=���?`��D)������������V[�f�"��\I���i�C ���I���u;Tӎ���Ɏ�G�(���>m�^"����tL�./�*Qs
I���>>W�o��J��8�wy�\a%�>^����������$J5�OQ|L�u�_I�j��$��s "�_�С2��$��+���r��?�͊'���S�!�/x����/)����j R��i��7��������#��k�_��[ �Y/�������(��0?�?g4N��[?���>���h�M9���h�i"�^���	����H+RS�YIO'��a��I��T��8}E^J6�$մ�7�_�� �/�~Lߦ���p�I9$z c&v�+	�O��9yҌO�q���ܬ ��W���~m�8PO:�ſ��|���Uh��u�n��?�w�ڇ1֐���5�C���{�+�N�yJ:���&A�Wt�����x��A>�⹍�W��ǿ������"t�z�����������#���J@^��y���Yx�`[ǀ������R�#C�?��ӯ}���S7a`ʅX�mP����tɣ>>��hXdg�".���^�HG���e뗬W"_%}Jd˺�iE�M"��WI>9�ϵ�%�Q /LZ��Lϳ�_Q<��)�C�'3�/�r��a~�_��	����#`�
P�O�����H����.=�5Rq�Ҹ��mzS����>h����vA~e0��|�a ��G9�h� ��'(c���u�/'zK����ߘ��R	0�����/oL�y�6�A�"  + �Yxy�-��0ʞ�4�y�ym��{��7����EA���!?q
A��@}�/^��})�}!4��a�"�,)#M5O�J�s!��V�j�'��D��
@�! I*|/�W�3"�ޞ�ѳo-���.� �r���[�PV���n 1��������0@�7���u���fS|�����b��/Y�L��'���y����Y�/���'��6����\?
 ����~"e���?��$W�_vX��/�o�=�j���Y7����6�x�]�>����'�]�`�v ����p�u@V ^z���B��7`/ʞ�c趟��co����n��V�PB�o�<y�X�fT�S�g@��!�/&T�7l�_��    IDAT�è�
�����S�/J6�e��ј*7�DA]�}���i}���x�3�J'���|�ly�:Iұ���xx� ����9���hׁM�}'5����=?����^2�PQ�\N#���*�mF��bT�hv�����<FYO}��T�u�}cJk�fƷrK p�Pʮ�{)+SzM�]��q;���S�2AL4��\}�a�"��J������OAaY(r�?&�q���O�q���B�Y�q�N����W�9����M5�W[���C��kb�O_slR��;e��	���5h�@�$��x���B$�$�/p)��Sp�����F�\A���=r��72)�����d�i�������`g���y�2�����e�p�c��6Q7G�\wA�JȔe�D\jc��)�%(&z>lz*Z �y
�E�Ē���&_y�
��!hq���Ϯ�P
�
�W����l&���).���_;��i�;���!�f���o&�Ry�/���	�����'��Y�pe�7��:��z���'�q��- /-�g}GQ��ϫ�!��Z��������ƛ/\��`���.ň�����=�)_���Pk�St���I�L��J�(A_V� ����!�H,G�����X�ܣwd̲D�k�0qW��e/^�
AY_��t��we����KG>�v@�(��?��d��Rb?v�CL|�{�v��_�O�q�q�5��"(��-e��C�wq�~���t�e�=)�$)a5	�c@��\w�?W�u�G����qߝ�B7��V������CT�A���E����� A�;8|fo�k����'�@X4����k���@ [�9��ҁ~�o�*G�RG��?��Sg~�M�G�_�tmjH���Ļ{�K��Y��A$�H[Q ��AC�;��	��N��Q�Q�֕�i@��TzTx���W̷/�����?K悐�{�8A�$x�s:� 1a�qfk"� X�Ǳ���
2r=O� y�o!��P��^keu@yͤ�����#�YQ0��P���dp�~+�,��h3���000�>�я�����Z�Y�ΐ�(�������6�/���v�r����'g�|��O7��f�!���� + /�f���?��~G�6����C��从?}~�4
n������(���}�E�}��$Q|��ib�t|t:�N���j��~z���x��� ��}����)����^�9L�H���j�qo�,��2����ӽ��`�����p�^L����]>%�@���HK�H�H��[���`��8��B��&�wO 8%J�������`ȯ#���㟲�&0�@���?b
n�>��u�(�����]�&�	�Χg앁�t4����{�b����7�|�F��`v�\-PV)� + ���� B��i {p��Ɖى�]���S��[]�xa�Pl���4��	Ȕ�W'
�˟V ʰ0��P��J�<�Dyղ�
@x��  ���|�8J�X �`Ӊ^h���{�N��ʃse
�%=�f儳�\K��r��?�#H՝3� e���[�{[J�����QzBx�;��ؒ�0"r��߃�~wM�Zo���<x� U.�O�����7��&�� �ϰ����P��q���z� "�[]v��=�͋����~}��Q* L����Y���Tz������p���������ݳwt����.
���H���t�I�DJ�	
_�0��%���}DW��CI����bY$�SE �߸�ݦs���鮡L/i���e��a�k30Y�A��K����bPY8 �����Tl��1 ��@I�r�~4g���| �^�"_��;�4N �R6��9�7{=�e�c7+A��ה�E���E��?W��]�W����޶���~??�|��Y��F`ti1�>�\������Oa��>�ѻ�4
'�C8rĕ��S�t]REh���wߘz��M\��6���K�W��pz`^.�: + ���à��Pz��8��9��M=�+?s���DS�mvD[&^ԊP�w�'�D��M���{�֥D��x�e�]��q(Ea_��5ف`ëJ�#����uQ"�ƞTe�e�l��F='Wդ��$H���@8r��tBA�J��Eǿ�|�˭,��ߧ��'uPH���׮�&I��qMB-��� �J��������|��y�Z��zk1�Ȋ���}��P�He<,���swͱ�o�֊sb�6 ��O���L���T{��!B{����&��M�'?�'ώ�/o-�[�����p�P�ʸV�-d`�Ci��� j��?��{��V�-߀%��]����LT��&n���䡛���{'ij��<�J��6����l
�K��ʆ�Z�KJ�<����f�H���`�������P ����si+y�,���`+π��)����ٿ��P!�"�G4,��l����M���r"{W;4 �l���J�D�6�FM�H�4�@)�![8�>_8y���X�<�޿�W��m��l �(���:c�_��C��
����P���(-��(}���uM�- ����(��2���0�n}�ٽ�����W�;�Z����V9���ְp!$�S��M���'(+�ʣDXX�Xn%_�XH�����}o�����p��P�i���$�u8�/�Ԕ?o��?��_>B*Z�W���>~��r
!���D'M�*
�I�����������WA� ^p���O@u�	����/U��!U.��n��ҧox఻��LZ8����z��G>��gq�m�x�V�{��۟��{o�fS�'o  ���so~>�C�aB�b�E+A��2��r\
��m�Ύ���V�w���F�	a�[�� + ��j�����~�_�[��ླ����GV�;����8!W� ؃*�"lLlDH�R�̛&�zbF�h��S�R |���T�H�����5got]\�e?�$ K�Acx�� o�/�Y��π;&7-���I���ɜI1X/@�>A�������P��(�0Ŀ.�tD(/H��V��ٴ�z��y>���,���_�_^_�2ݽ�~<�l�2ƍ�[��p��]���?]*	v @���H)�j+�~ ��&(��������M�iP�7F��P�������:�zϩ���-���S��(� ��Cy��k�� \{<�'��p����}�/~�����-�n�K�?J+  �?���oԈ���F)z��vo;% &�J=�J��k��8!�)�q�s*��J�p�B�����rJ��� �&�i<ч�qʀs�+I\ٞtuܟ����d�Ǥ�����@�i���a��6��;���`��ʓ��t��,b{�[ӺטT0d�5�t<X����d�>�pW7{���xeL��LӴω`�qi�M����q�{�y6�[�p36����pϳ�J���7)�M��i{���*�h��>9z���G�^�l�i�$����ᠬ \!�pmA����@9��_G�p�̉���ÿw���J�+[hx��$����w^�D��t(�#aG0�ѻ��8�o�$ �Xn(��E9���4@�+����'߫��D���b>�W��$ĸ>Tz�I���O$I��7XH��D��R����(��l�N�tnL�r��c=��Pg�GM^��J9Q�� L�l  *����?���  bV ��/��₷ō�2�D\��Ƶf���aq�T{�؟Ö�=|FT�:��-*��O�xY#e��]S�;�w��Q�� l��0k�냷����=�kq�u�~90V�p��
���(��F9��G~��¡ѡ�S��ЩcR�+�m4�t�
@��� �.|����G��Hv5�? �(���ʩQJ��0�6Xa��l�*L* ���{^�L���%9:w�b�e��.�0�s�+G(N��!� @�W �R�%!+B���ON�s�����P�x�BJ��k���]��C�K���TPd�ܒy�xZ�qך(^�����0�0Pn�����*!�cA��c�V��b�&[)��AE�aR�����g��o9�!vw"�ʛ� Q�脶GUT�n	(Eh��ht�>5=��/>5�5M9����a�+DV ��������6n�՟9�������fƮ	��Qn<	�E�w�H@����6�F	��G;Nb$����u�H�'*S�w\���/�C"��A�_�':��)Л߽<�� er�T*sܛ�N}�*`ɔ���g3<>V)H��� ��;�E�x�W��������p�C	b�݅e�x�X�L�rx � �r�\��A	'G�U��U��o�|T�r�r`��[ �W�s���N}�T�Kh�V�\��Y���5�?�eb�2h�SA��+�e��Q�+�!ȥ
�L*�5BE,�
Bk���w�ŘRS�7�AI�� �Z�"���d��_�'^�g�}P88�����#��F�c��p;������඙Jhj��N�K��s{��y}T<5=����z�[�oLÆ�D�^�*�	3w���vA��0�D&z�5�!#���&_| i�5�9V����&+� G^|MT��#�{��v����Q!�#�lC�)�,#�TQ%�H���q\I��)��TB
UZ`����y�^���TA����Ɗ༢���/�N�#�5Den�}�a��*�������v�A)�GiM�?5p�����үd�Ճ_G��K��pD)̍4��7?~�\�H�mt0����و����J`Cj�qr���a�ǉ|a���_5�U,��( <L����p{��p_�����>�Yd�`�!����|a�={����у{z����r����, ^F��a�����?|���x%Q8EP���W��ԙiI�2�(+_aF9���ד{���QXQ���?h��{^���gN(S��a {�%�+>@�m��A�u�=r(ǈ�B��e���WU/��3���))%U��l>��.v,m����&ƛx��������:����3��
�- �
^F��N�U
{�ƭ��'N�:7ј_n�Q��Oi*�x�g����+B���oW�J|���'��`g�č�YB��p�>z.��Xǈ�9Х�ǩ�(6W3F����83��P�F���:�r�_���$��J�(���[a	�*�AQ�+��P���$�EY;Y������*
k�(��φ�G0��(]<< /A�;%����)���H�������w��������Ɓ�Az����{ ̡�L�lkG�� W�l�:��?������pDk�|�]3g�Λ�\��)���W/z�එ�wX��{	{��B�}r#�9_"^ʨE������8�O W�Ȱ�7@�F�	U��� ��ܾ�����{�@0拰GEAZ)W�\�4�i0����
�<���蔔g�V�r
j�^�|��]�t�J~{�R��K+� ��B�Ǜ���%�#_f�<���Ez��V,������7�w��x�|6&�_�Po|NFe�1�q�T2)ߏ�NZ��Ã�~��/
W:ZC���ql��O/N?���y���	���}#+ Wn��?�����vO���n=��jw��6{�$GE�h@��t�M*�E�y]\�	9��.�9����0����8+���Oa��W�<����c��: ��^�(�{ ~x���l�G��a�4k��HN� e�C�&a��=cA��7�sz/79�RbR��N(7�!��6T�)��S@�C*�I�\�kBQzCf�g@�{��+v�,�uG�O���y���er�e�}V\�b�}����ٿ�9)�WO����h"��]�7p������'f�Z�yc��P	�W
��y�����Ax��J���B�џ~��3��V���=��֫/���~�zO@P�_�诞��kk��z�5��Iĉ0���;�=KQ���8�-H/��i���i?&�0$�XI�<���&�E@��n������7��)�K/��r���N�����-/�᩟FR�V^��Y��N��ּa�jĽ9J/o`���8;C��T���CW�� \U��1X�;�������e�X��c
HP�[`D�$��l`R�	˩�#���O9\o�D1�ם��i�?�DF��֙|����2Q�����
��L��!��`�_������$q�\����� d$��)	5��~��L�M,�J�U����	��l��Ŧ2R��`�r`K����?���QF!����%T��ǣ�ΦU���ˏ
D�$xJ`ag(��i�VPx݁��ZG����2O>��1~���6��]���6~�m�o`�-�t��Y(�`�e%�����oG��/M�Gv�4���o=��j2��o�����)�)W�h�e���Ty�9\��G[�OX����
��� 3�����%���(OГ��7l�*�,���h�x ��l��������-��K ���El�ńT���	�^�@���"M��_9v.��{��{���U��x�E^JlW�7��Fϊ��)�ʞ?о��[o���)�-����O�SL�ыk�.��g�M,[���_�[U]]���}{�����r8�!	�#R�$� R�-Ȁ�6m雿�?�Ć �7Ґ��e�0,�<����������<����of�����='322r����L 'H�TS스>͚^�J�.�8?�Ћ�ԑ���r�1wX�J	�����}�����p���?���m:@/zyJ����\<�W��ݚ&��o�ÿ���n��u�����i�����t���<����8lih?�l0=0O�<՟��o+��|93>u�u!<G�HZČ�
{���J@�=�^��ѽ���v�?�3�g��MY�W`ʷ���E��5P����?�P�����C��Y6Ń�;���J�]��S��v�1�3��K�7��%_~2S��� l�*�6YE����c���k���q-	ިV�(<8N�f2����.a���:ʪ�7r����}����]��ӧ��hD`#F�˩��������qI�A��f4���Ʉ�*ȋo�[�ɿ{8Br��^~B�����:1a�-��/���:Z�D�x�h��L��_�X�K�����n4ϫ�iD>�_���łM��ֶ�G���7���6S�2�>����q����}.Щ�k�/�?XHq��ڑMM9R'p�х��xz� Ǎ�N�7%�\����1-)�D�`jo>���N�P������;��ݿq�����(�X�`����.�����Z��?����m�w&|���o�۝��q�tF��a�����}K#cլO��7���#�^]F�b6.Z&��,2[������ׂ���~+�V!��$�it��#��#�U�#�/�gaKqN{I�����Ҫ*a+����I� ��{ U�t����;_��O�Ht����rA�B�\x�4:�1�o���Ʈ�%|���EH	���1.]=���o�rn7�=M����Xd/�L����<ϳ�	����K(#^�w�h�{u������{��\�O||�nflP�Z�?�N��Z��9?�.����s���ۍ\�)|������n����>��D�1��x8N��6������+�mWҵ���<��0����l�4l��O$\j5���t����	�O4��h �h���S���(~l�&���N<-�U2�EE`[��F��M`!��я&o�*a�@Z%�~&8ij#ѯ��R��H���+��D��J���T�		�g ���~�S*
�oy�fT�B�1LQ'����65�Z%<�w�p��.������#$<�� ������{i��%�|�;�UV��Iw�[���ֻ�ң#����tЅ��sΝ���͆�6 ^؈�=�Cs�|�e؁�`��a�4��=�fʠ��nk�V�m�&�������`��:A�@B�yY�	�i��qO�?G�=mZE�i�$R�     IDAT�SM��Ha���x���|Uª�g�n�S�d�/�$T:U1����HeGJQk@k��I}&F��j��%cw�#���O���ӯ_��_}�"��ɬ �Qi/�.�������e�-w�����/���[_���ã����v����[%l$�G�|)�s������96E�����:���;��Sr�2б)�8���<���ǟ�G�#q�0K����|���7`�����Զ}a� ��~N�5:�S��#u�Y�Zy�):�&���`�*t8ߏ�xsxFߣw�w�VCۂ_���w=�=�V�m�O`�O|�u�"4���Ky91PZ5s���p�޹|-M�����j�p|,����^;�����?|x�>�΀#�\0t/- �]BQ�V�y�(+N��=��~��W�۝v>:�֝`8�<3/^����߹y���z���m,}�h���|����r��2\�rl]H_�c���%��P��7s	S���Jg�0�����0�>V@�V�N	���i�
ЦXRą�2�0{C��3�0�����Z`��)��Ҡ��\����7���[�`g'������W�O�ɷ�[v��
й�
��c�W�_����W߾��o����?A)���tqu���B�D�3JĬ�R�/*C�b~���sFzV�#�����c^ �����$��F��`�4��ф7	�Ѱu4��v�mtq�#�Q��𑰟Kk��~5�_���F?zfA�(X�ϑ���W��H3*�K�J�(�)><98u����r@�9���
����g��J����o�&�GQ t[�y��r[`p/��N� ��OW��:<7����;7�w�T����������c	��02������ձ@��LoX�LxrJ�n�ALs�������|97Wd�7���"0[��Ѽ�g���X�*$�>��
3Z�?I�B��"M]ܶ(�Ga#!>'�GaK�s0��M�T� ��?�Aض|O!�.�t[1a0��vp���@�� z�P�E��=��0~�'���򐁢(�C��`}�Y�MNa�ׂO?y���_ݿx����+�*�B�;f�K`���E��2M�6M��o�ί>���Bz���؉�0�ABCpB28Y����N��}��cZ6+�R����6 ���,c��v���lA-���<ܳ���=f,j �D/���]�-���o$���ܶĈ�p�9�D7O���G� \A�h[�T.��%3Y�՞�Ww�p9/e�b�q�����q�u�*)O���?���;_���O�p U Q���V r/�y��F��ϣ�/��3n��7�^��������>|2?�H�-o �ĉ������� ]���/p�0�!T��u��c/dkn�#v�N��槾����Z$FJI��*��H�-��Y�"���s��,;�r�`�qvD�6��R� ���(?��G�1�(� �Gw34�B��x�E�Ѣ����	l�ty�8L��|�N5��|9��~)�~���~��{�����k��\��&܄Y� /� �T ��3���� קi��_����ꃏc-����?��a�o��d��E������~�"��o���CiE�f��5�ׁ�V�IX/"�*��pl���l�݈�/�-R5����oɍ��>'��-iZ,�ކ���81?��N3a?V��XXř�fq�s̏����R;A�(�?>���cܹ}!������Eҵi��5[�@� /��R�s����
�<M�."w�zp����/�O�Ƈ��RetK�&������c�%�u�Q�6C��)|��no1��[&��~���M�n���'�e|���*���ix�lo4r^�~�̍�G�D����0�(�8�v��G� :�ӵ8P��cy�0�Q|U
��#77�o^O��'���ؔ�O������K�wQ���Xou`/� x� �\�����\������w���h]� s}l$�.�F�AK�����"17�gOg�H�OL2f%ze' ]ބ���Pb�D�h`��"�_"��&�WQ�]?��N�yYm��nw���࢐����I��;K����=�8�߭q#~�]��B?*q��M��/����yT�T��[b��K�f�(�rBN��3?��9>\����_�޻o�\�l�������K�w�F�m+��4M�D�ޗ^����k��_�������\�X���K⭜�
��f���G��,(5���>�l�Ƽ�>҈��z���J��</��>�-�rS�%�6��A��H�8��ɏʝ4�m�Ux+�)��@;(��o��M[��	�Jb�o��e��A�F�z̳�蟘�̼��iG$��F�1?��������:㻿�Z�za��@S �\����{y�w	�П(� wRJ�������LS��q�Զ�PW"mܝxW5c��m�n"�'����?����4����2�=�I���p>R׫:�!�O#P�L}<ǈ�[z�j��O�+�n���k��m�O����"s,�ˡ-tB <,�Q��O743o˘��3�8���=���j��V�Ϸ\׊�����Mn[x֮Fq�ߌ6ֶ;�w�cw;��UF��UΓP��H]���j�f�bbF�R�([�$[a�I����:��<�V������i�<��� =��t/- ��&\���b�ㆈ�{�����oⓇGXM���L�G��cG���, �s"C��H}�~Џ�Ǩ7��e ��0o�P�L]Y����٣suUy'+]��-�n�ӣ�
a!|P���B뿃Y��d1�Q>���3�ד
�Q���!�a��
}�y�jQ�����]0M��D(��D�2�Q�ӫ_
4ͮh�Z�/�����U�o�?'�pt���ӧ���<X�ze�(W������������%��.����5`�!"���^����ں3Ov��r��2]|�����I���I���Y��d4���:ba��Ɉ���h�&�t��Q�Ȱ�(�9����������D	o�Q���H��D�P��b�w��u6�\I ɖFB��\���H<�R��� hbc`r#�G�O���]_B燱�^�G�ɚ��2 �ݺ�0�\�W1l�h().,�5>!:�n��Q'?�)�O��������7��Jθ6M��C�J��Ie��
�9m :�/���p��������x�>��i5�o�"�f��ُ��cN0�77>�xC'=H��[�R��4�Ө^A�,�7�Cea}���|�H���r>�I��
�b17؎��PY���L% yMf&EFX�[�w��=/7*�-�o�3'x��y.�%��E������N.�jj�Ά�lx6ӑR9���O�k?w��˯_�
0]E9xn-��^* ũʬ7��C�7ze��5`�~��s����ݺ���1�w�׏.���������{��@1XB~��q�&�M
A�]�+��:*3i�n;����#Ps����F��w][��,,���\���enN��43�K?Vq>��F9x��X:k� 0�S��a�	��@�%$��B�d	I'(z��V�stE{�-m�a���J	|���qy�����ƥ}�|�p�L�C^���R(� ]�a\���Z���o���׎��8>�&n��M �c�(D� �z%�M��v6Ɓ����T� Q���^��n-�	���qzn1w�QKc�'��|��J��Ń���v���b-�H�\�DFґŨZYf�� n@�'I��0�����G �H�pU0tZP�V\��W��0�]��~���N��{�|� �,��,4�W���(�-����b��@�*%��A_	n�Պ�<7aYr���I��G�q�����/߼�F="�o
T+�'_�\B��� ��u1ݼs��׿�ڥ���<��H��� j�������0V$F�t((�\��W��gP�ҏ>�u�������S*�"�z�	�x�L.��B��¤�D��D���1Q.4����[�k3���|��/��(?��	g�X��`������g%��~Y1	Ƥ���%G�L�ȫ�5�)ᓏ� ���|������py�m�zD�N�Pk^* ���% �L�t]$���o߹3MS:>�ai|���P���@B轆��u�w˞Ud"�@�� �_i�OP��*����>�
�����w@�dg�FGe]�4&Y爤�!���iS�ΑI�[��@p�a�����7��7X��KlX�/|�7�.4�W�9%`�a������g�2�O|؆bV~�z�g}�M;+����{��� ��m-@<"��Z�+ <���P懮�~��ޗ굋{O��X��HW���x �gc�O�/Ij7Y2h�-��'���� J\�
pЃ�lNX��it�By	s�������Z���Lif_Ί���z�i��x�#�X�I���wwDa��H���%�i�:���) ���Gf�b��� ��Y��҃���\ˤTl����e�澟�����μ�	_�ց�b���/T�b�9u8k٥	�~���(^�Q_��:0_�2xO�<.%��X�J~��ߺ�;���t�xS�cx� ���ƿ2���"��o�ҽے0�3�4h�sQ N����Z��v��D3C�,̦� !�����4�`6[U*��E��HC���)����h���S�)��:s��I=��P"@��T)���J��f��	jP�赛��3޾�,�=	�����}2c�m��� �p�Kd\2|0��!x�G��������_�}U$�G:�gx��8��G=����O�o];���n�OH@�ͬ�]�ʧ�=78�1���ʌ���n�4,�[��.���<�� *#�\rŗق_��*�%��EB��8Z����ɴ��D�KeVz�R#B\>�"��o�&pu$o���WZ�\���"@����R�ݕ�o|��x��=�x\#��s�
y���'�.���u���b�k6�U��� ������!?2���_)�����Ƶ v�vr���\5=g�I�)ᣇGx��)����ww��9M�>Mm*���.�EW x�� u��4����o����v���u�1ӯ�����-���3÷�;��>{9��>�yo��\��T|�|����h���nH��o�+o,��~f�Z�����X�#� ��'���!U�)����明D
���m~] �G!*���ۯ���6I�g����Mm%�:�D(`�t���I7�T��#��Ѡm*ޙ��؆b������[��1�ܽ������"x���/̎�"��-U��m�����k��}p����O�8:�^IC$�BaQ�n�A3�^v�G�ct#I�)����K�G���L�38c�8��/�L�h�+�A\]	ǵ�x�FG_�G�|0���&�ݱ�Mh)�	N��.\�$Q����
�����yB,�v��m��4r���P0?j�n>m��hT��S��ҰM5"�4�.	���$O?=���v����� �Le͗�x/�Z�f�#�;�� E���n�	�E�����_�sck�Lp�����dyU�`]�4�vf|��<]��hNS�B� g|9|zD�(����"zF���7$�tz�s4G���ѭ����/�i�L ��F�o��`j���Sͣx:Pk崵�\�$�E�����n���B%(%�9�)��o�@]E��pu��kd��$N�DU��0�ɉ�wJ�uI���n�;�[s�`V&3b�0�d�b����W�t
�C�!\�]�	ԁ����Jx���_��O>y������}$� ��	��(���3�^T���������[��v����xa>�v�6-�b'�.v�Ѱ���82�<N��;J�K�C,k�3ĩ�(x�����Rn�+*�`�Mt���c���fz`��J�C{M!+�Px�����4S"���B���xn�?#���L)��	���
����S
��v�x{���s��
e�m
WǊKL���6�`G�<\������R�wS�F�^��Aڋ��>��g�����ڽ�	7�: ��Z �P�l�3����(�����&��$=�?���������ZB��]����i��R�u�ڏi�B�B�,n'�G'�(��K�ȆC^��O��!AN>�cD�W"�A�v�.�����r`�%̶�UV��y>���s!x��	���?�J��c�ZVkV3\>-��_�OP���^��Gp�]� �&�!<����:��=�����~ً�JGV�	\ܟ�y�H�#{ l͢R(���Xݼ�����
��QZ.���LC����\Ntg����~�&����U��z���$�EV t
�\�\�+;���ڝ�ӄ:��q�+ι|{�0��d��:���i��gh"X��&J�N澝�t��lFeYUOڼuC�6�k-�RsJL>K��um����L2[�Fr&��%"N�+C7,�hE�����,��
h&�Q�B_�F���Y���X�3k��--�ƺ��o˾�5ܖ�N�Δ	ߟ���B�gp�)
>�������.��L��"�-�g~1���܌K�����Cܿup���
�>>nws�~�d@���4�]{��3t�I���
3b�2+49�>�_�f��G� ���bq�M��H�������O՟��C�ܢ;��?r���V���:6@Ge�^�	o�T��F�¿�e�I���@W~3� ě��>G����p7� 0�&>�	Z��o����1<±7����1�&F�-����&�� ��S�~|>�c�{)�hj�|�V��6@B�E5"|P�[��;0�&<���/���;� pe7�%�-�g~��fl�E��>��K .A����w��>:�܍��6�I�sqľ�h���a�z�bי#����r#M[����ew�K�bHc���:�($~Δ�*ɳQ�@�]W��9���	��>�4+NU���szy��g\mJV&�Ŭ��{ִͿ,�7s~GG�?�8�G��ݨWnӪ��U��8��sTFp�s��-PmJf��o%�iM�(Xy��g�R�n��9������{�������4��l8�� /���7�_@5�߿q��wV����j���F��f1�g��fċ��� �5Ҹ���)3Ԋ�!&�!��<�%=?
�5z�kL(�!�,"�� �S N�*M�;��a��b^4������U�#��5 >k"�ѿkh!-N_�u��"�#�̞�A�}{$�F�}R�?��8��rU6�ώ������z4�Ip�e�\@:�}?��W���9�؜>K��3pO���+߾'�.�=�?���Ѓ�^* �ܩ�-���s�����Ŷ5���:�(�3cnl�b��Ge�����������՗85�9��i�.�_.'�Q�F�3���i� ?΀��;<�h���3�@�߷Q���^��8P����E7*�E��P`��>j�� ������L����vPɛ7��׬Ђ���U�GEb������	���埾�H�8L3�c������Z߀�m,�#�u
�ڴ� }�zY(�<5��?\�' �9���O��݋�嵷D�u�Yt��Z^$ �������7��[�t���5��|s�6\L�ˎ���sad�s&J�w�H���H�OZBx��4���ι/��<
\y����<G�H���>Nx�־��S����i Xp�j�FW0$�:-�BՔ��SQuِ�2�]��D��l�ˋ��ܧ�4ɑ��-�%x~��~���~���
��+yr6��}3����Jo�4jP0�͐�އ�ͥ������ۓ�)%<z�~꭫@Y�7�v�9w&35�wV����7�x����������K�� ?���0��d�e%|��$�G|������O��Lo`�C����-L�� ��H��f�AZB%Jց�?5<�$�yuv�`qۈ^� Uf�p�iQ�.��)��Ar����¿�.U��i�������f,�?���@�ݖ��~��!�Q�>W�����ݍ�	T�2R��GO�S\(̵�P޾���[qf���q�    IDAT��o�X�y'm��#��Zuǋ���-�1� ��_�4��a�������ɧG��o��y������2�G���8s�(
��^7��*ߕi�ݯ�u�JB9$b�r�d�6
���`;��e?�BB��b�ҷ�"�E�u~�����~:xWw���$dG�] �wHM�Ӭ���T��1p��Mr �bp��l4@`_ŕ1z22[�<���Z�n�;?*5ڔ����8k���C�5�?��V��"q��f��t�w�=�Ɋ��t�8�8��8X�~CHv�7�#�� ��V7�����5�,��~r����~�z�8�&\^ٖ�}���@��I�����p\��W/�]����>x���:�G���]u���3zŠ�΃�Dƶ=m�8*gz�x��4=}҇���;�5H3�򈬾�$P7S!]�2�T�ᕣ��
V�}w6����,Ţ<��Ph��&�K�������9�s�"��ړ��,�4���&[	������S<��#>��tY�p7R�۷lx��k�3���ˊ_�w���ԗ�	���C�F��<'�)�p�z���8a����0�A'q�"�&"���	M����J����K����Qn�e@�8sSgΤ1p:�߅�����T����o�{�������>=��*�3���]=�<��u[ܛ*���wf���xf��L�x�w�=������i����'�;��n��'I�]0ƙ���(Vw�	���e9�q���K�N�. ��j͕+�hJ)T�>zπ�'�'����C"��
�I�Pd%�O��&�7���'�%@��l��X`�;��K�ܛ��~gk�P2ۺ�i>�O�L�z��&�Wn𤵴mi�<vV���g<$a���җ��SP�� ��a8���޹���0�pq���ݹ� M�]9����=<�����D� ��c�� k h��ܝ)mf�U�����(��e W��N�������}t���x�oh����/!�a�i��b=�W~�fY㏮���Os!�a�\�"�1���+=]��o�A��� ;�ƿ�Tƛ����Y�F�Hf�6��o��@Y�7�[�n g���p[Zf+G�����@��A��ax��F�<�Ix݆���n!�}�������?P�A`.ɄrW]ùЉ�Q�8�ԧ�m+�<j�n�f�>Yc5%�����+�_�&\�lK�N���;?n>g��_��ֿ� � ӵ/<��`J���Yڠ'����.{s)�L���)R����]	�RS(��+��R�Q1���n�� 6"�k���%���)/I�4xܵ�ػfQ��
�5��S@�� ٕR���r��I����yns�:�o[G˜~���J��I��PJy��X�o]�I���� t��Υ�R҄�5 �eZ��%@�T�e�u��$�|'&L��+zݯH�4MZlm��SV����r`Q�+�`E�@
ݭE���|[��h�,	�X�?��(�7J��25���F�J��lIӅ�I�;BY8N�S�Z�h���I�iS�-�e��LSd��W[4<�/����z�!V]_y}e�q��K(Ǿ?~��Ń����/ ����uK��OP�G(���<���^���7���Wr����w�ϭ��sM:`
�������rϙ��-	��ʦ5��؃�^�[��%o��rG��lH���G���0g�����-Q���������i[�_j��E�k�'e�	BR��BP������X�7:Z: ��v� ����>���۞�p�o��h�?��x3�f��0����<��"�]�Rc�2��%<G���6���ڦ�����x��:���D��[=s��ۀ��ƪ��4%<z��N~�[�r���i����m	<sg��5 <�'�� wR�����?�ք�u.��O	m�UG��F��zuM6����_�O��u"xJI��������.]��q�i:|Ds�;
g��k�(�C�t�h�:�2����T�_M�^�ћTWN�޶0DW$�P����٣��i7���W��8�e�k��O\
�OU�
�M^��4�c�E�[�i:x�+��� T�,��{Sr8o#�.3x�Y��U�y7�z8�N���%K����@�-��/!r����跭�U��f���S�r��p'�Ʋ:b8^��M�«�w���g�����$g|���(� �p&��e@����{��俫9��/}���]�ŧ��� ��K�bW���L�вN����S6b��eS��mr�����A�,~��� �4��A8E��F� l(�ͮnt�qe�) n��Fp|�ZdGz[���)~Yt� SUY���GO,x�$�FU���|�.C�F�5�[���^�Q|����q��L�a�	�
�r���o���tBpyGLGi3~X�r��p��#�c�L(i8��:B5z����h۠�Ol[x_�ҕ�`J��'�߻���Wn�@<�V�3��,+ �)j��� �+{���Ͼse�O�H)-vu�?"Լ���'�կ��Y!q��u��|���q+9��e_t`�8%xnF8\|��Pb�=�AX�_S��� sg�hb�Rw���e�)	
#M4��gG���Ѵ����L������	h.�F��a����kw&x��L��������c<`�P�/��M�M
��C��#nU��._���������)����r���U;���[�?p���e#�lx6��q�ӧk|��k�9�^]�[��� gy
@W��¿+ n��Rz����_��/\Yg�nUL��қj'��֑�Z��t�UZM�dr���Mܛ��)�3{�Iߌ�~��"��t���������h��>=��~�%����pe�:�ږ�/�/�s��&M��)��@�nT&��3���}i���-�Ц��n0��%V��U�2�qS��{r��|`V�B�u;�)&�Z�mv���~�R��?*6-���.�r�4+Y{����`)���qY��%P�q~���ԉ�����ʴ�^�2�]�=����鎏3vv���{���˃���O��C�-��P�>��8� =����.L.�/}��W��6hk#�ڌ���{�LC�����<��Ol��d1t�2���7���1�L�HO_@֕Ր�x$=m=�|��e�/�`B���YBM�ٶѻ�&Ĝ7s;���;"� ��Ca<�\���c���^�hݎ6�n4���F����
'�7����8,��ﮬ,��'Z:���Ҏ{���*��gf�A�c �- #����!KHν�r�W��8���La���ަ�}�ѮV���)v���/\I��5��[u�T��� 踌� ��j	�|a����]���3���,̍s�t�jh����u�I1�N1:!>Ɲ��ej����<��#�3������!�5�2�.F�1�6B�ඝљ���H���zH�W�9���_�����ۨ����M��WP�$�n���\Qf�U!�R�$W��-S`���m�N�1>^o�	of|b8���Gi�k�K��+�fP>`0��&��M��B�A��7n3���J�u�F���&��z�"$)�X{p�R/;S���b~f\�G7D`2�b"��,'�?��o޿tn���2��i�������� ��� L�o�;�}�pwZ;.ǵS�^�^!/�[Zt���R�7%�|�o�4B6�C1"S`�ԐY�nx�7X�D��>c���!�Ȉ"�>�랜��@�O�\N(e6�r�m#]��4�B�]�ӥ��V���4�P��V>>�G���#k�4Z�d����0k�F�*Xr�qs�GӨWKUH����Üx#J��E0�32�&�R�j�i��T���hMcM�� ����@V4.,藛$�w�/�/�ɖ�vq��l��ڌ�y���GdPs�y ��oڂ���C�y� Q�>��`]q:���V.�\z��j5��?|�7o��_�qS ����3�֝j�\� ���i¥ݕ����/���S'x����&Q���oP�\���P��Q����H\��Пa<���2���e�>V��x���f 4Q��>��:��������ڦh�Z��i �;�:?`]qՑ�4!�,.K�.�,����v۟(ܚ�KX��I۾HPT��k�pt��Y�ń4[2L�u��?��U �Q����{F@w
H���>��� �]@۳��@�,4ϒK��	�	��Q��J���B&���X�������`.t�s��A�p@����. 9>^c�~�[w����N.�l!��p��8�
�jfMX�tu����o�
�m���+A���Z��t���\�G���$X�H�3h�:�$�:zmm��g�EK=�z����%yc,1,d�2��	GG�����?]��Z`{��n��rSl�\� ��iP�,(�m$��4�c�KɏLr��H�'���^�����[UĦ�*U�g�H*�+���n',x�,�Cr�_�Mkh-�QӼ��2	\Xz��	�6���s�>3J +���nḱ.�7�K[y�s�%|�d�Q�i
k�j�!� ΀I��dZ;�r�e�eB�2�M� '�r�.�P�䴹{n�F)��s~�ܔ
���qƯ~���W.��@�Y ]p��΢�yr QL8�����ç��U��;�kt�>����9ca!����c`�33|��a>k8=~�O�K#�|�Wf���ވ�:qW P�>�ه;5/F�%<�31�
{7ڢ�>��<��-qK`+�+��'3۫��ц\�����T<]<�PF�k�k����GZW�����e�\���Mo��7����x3���\~���r��iɁ�x���};���ϣw�Z���g�� b-2�3�'�6@ZG`֙ZmU���#S�Cf	2�5���vuQOx~U\X<��+��B�4s1	�Z�ih瞍 ��ܿQ"�-n^��z�� \�~
�Ll<���Sm�O����4�N�r����ϼz�`_ �z�[ٵU�`Oz���Zm�U}{7 :�-9{`����FkH��wqk>�d(�`{ ��8Zܰm�~��^�����+��=������|�W��7��(D|=͵��VR7<U����;��C$���(�KdR�a|RE���E>��H��2\��=�o�`-��G�K�f��%-��ᗙ_.������Ԫb�7P��E�i��Xb?-�.��-��w�-�)U�2��W㌴�XU.�0�)�|]���
;�������{�J��eK�C����ةqg��`��] �V�����+��m�utsU(�����5���35<h�o�8���$�ߡ]�2`��i�#��\���y���
q?�zi��Jf!!!��0U��չ1�6�R�ꯍҘ��ы�YW2�!�����u) ����E�j6�:%P,ݙUn��6���M��̿Fg��t6�G3��s���8d�3�����s��i'D�gM�[��,ʟ$D��n���>�F����~�%M�nvm�ڱ��I��>j��8�:��|%��L	��'8������vm�5M8X�) �p*�Y�������O���n���;�Z5ӈ�52��I���5!��j)�u�����\�=*��6�])QZ܍v�ب��lBFG��z�\ �{��i8*.L�G�D˒D�7��#�F�W�2/����R�7ё8\��L��r�3�+��z�_��XY�;�O�&D2R�B�
mAe iD��\��Ti�E20�y�����2�y�@B����5��r^IB�TEB��b=N��`�\�JkyO2K�"�S�<�I�eBJ�B[-�r���[��e%�킭�*t�"����O&��j��W�[]rz���\��I@[��� M������� ��ھҘ��մ� ��QP�HS)��O�lSF�/9aθ�y��dY�!E�����,����(����z'��y����)���t,�8%ʄ��4�ȼ��Κ@+b���U�  8|p��������|�6R�Fk��}g�Y4���)g�����1M3�,���ᦎ���wR	�q�Ld�s�k:H7�7�1pq`�4�*���W�$(�5�7f�[9�hZ���q��"�#�*.t���)cWaP�Q�M=�v@G� ���s]pXi�9��ւ\BlW��ݎ!��+P�3���� P�E3��rH��
�l�>|����h�_@�9}�֚� I���ֱ��{nkw�yٖTSl\[���Y-�־�9�@�rNPv���/ps_��� ۻ�26�ݝ���������/��Ü��"SX8�r�����P���p0M� "W�:>�`-�)tN[��ȁ�)�^��(��g�o�� �	 }����6!�l�,��ǝ��|��[W�N&�1��6�Y���Gndf	��?H�E�@`�͌�X7�|�
r����-m��G�ŧ��Dm1KU��C�*tⶴNc9|����?���I��N�q��k���g�-G�S�TAi��.B�a���;͒{���9}���`� �{X�e.p�Ɇ��.~���<��/���i*��aO�v���PG���U�WEp#����^������wV���)%LR��I�kWˣ]���UcP(+��a'��}�	��v��3���/��@��;��ǥ��K}�����ij�cڌ&�"�p:2�|���s��?����j`�+����!�!��c��j[����4HjL�&����%�HQq�+@�^a��#<*�_��Pknv�Ԣ��d&K̒I�B!��)��	�%eaVس��|ZN����;�RF���E���lʀ3H�1��C3�׸�uby1�@�6�OHQ<;%��[��`�0�`��ջ�{���r#EeJ�I2^�s����~���"m!�# �Q�	�� ���5 ��u'�!�Üe�񓵊n��5lF{e�f�"^�2>�w��`KF���Ġ��7#��ȇa�8:2�Y2$|�ߘ�(������\�  ��VǆK|����b��U�1�b�|7�ɘ�� f���0Q+ڢ�F���}5\�� c�)do��&�d�i�Eߣ���&�?�s(>�H�e���d�1!��	"��N��J�o����4E�[���V����&Q�$`�gfl�.�qo�:�1��«Q����<��u�x	����v9��8��H�]�� N�;K
�V�ZΡ�� ���7.�8<��y|d���?a,�����Q"ڑ�&8�+1`!�%3h��*�{��c	!^xz�Kt�M��؅�c�X��!�/&Bˑ��0�npH�M`C�<�1^�Re��D߼L8��[ܶ\� ���h:�32�v�`�F� z7@V�sUhΛ��5�z�;�8�R <7.\6�;;.]��'r��� 4<y>-�����袆#�U8�	���M�Լ���A���0d-KU��m7z�Q��6�@h�t/Ř��m�m���]���̜c�m����2����O���� ��l��i��40!��_7�4��9���/]�����>Zc5������o&�v ��W���f=v�#S=O+h�q&x6��`�xw���<7�#Q��d?���L�$t��a�4��q:io�t�j�9�V�z�:�L��;���xF4є����(]�)�7�~I/I]ٙ19)�	��\"�G�xIS���	�?�%�H;��)jz��T�n(˂��w����TxG���q��"!=����"Cʗ`]�2xU}�b����$���ق��Z�N!0��ꃅ��/N��oa��Z�x0���������oB'wn�ǥ�{W����ӄ��I9���쨩S���6@���O&�(�2��k	���6/$��l%@�[�06���/�D	�f�L]��Z��	��ܖ���.R�k�l)�=�w��"����9(�F��Ƣt"�3Q�49ڏ	E&���ŕ2/�K�w���m�	��'���"�rN����)���O	��{S*�uw`�uǞ �n̂<��qp�2e������&�&�P�S��̃	e>�(>"e�_��WA��	��S�v;�n�ӂM�L��Կv���P�Zy�Y���&i0D[�\�}��ZBj}A�S	�    IDATN��s=�9W���K�6�.��f��zKZ�3��h�6{�$��9J��0�BA�w;(�������|U�0pQQx�.6��d��p��y�^,W���, ��<��� �����=�ӄ�_|p��[w���L��P=5^�x"ޣ�\�E
�M��M�J�V��$	-��J���¹�VX�%�K9M����� ��K�O4mIt��?��2?Ǩ�@�N٪e����j�OG%!l�>%gɋ�G-���������ʁ2I����@-�Q/U�����ϵ�S�?�b��r��m	�Ⱥ�����LR��K�˯
^��.�AB1M���T	@FB�I	��+���Z� S��	�棔�F�_�i��j��ln�O�ՙ),b� p#�܈�@!N���返��mmHne��!EY/_HU�և��MД���;"Y��&n��Ҧj��-Mi��w�E���8��� �e<����B���v��T�ZM��#���+�;W>zt|!gw,0Oh�?�,���Ρ�� 8��ʹsiǠ��j둝��4��� E�Bj�h����?��k��5�SB['% �_3�`^� 8Z3/2��Ƒ�3Ki������S�p,G8-N[��<�4�rpL��Ͷ2��W�U�ud�̲�~��P���uP^�2=���zn@=?��@r�f�+�f���<�)��W	�ѪN���v�piZ]�ߵN%#�냳�[��Y;�:�"	Ɛm.�%�A�CLS�/g�W�LB�}Q��65�s�W�Ϟ�2����Ϛp��Iih����%�0�oZìUU��}�F��}k�n�����O5Q�[]��.<r�g����{�w߹�����>�=�2�x��YX����
� �*���ws�W����;��z3Z���6b׹�6����|� �='�h��V-�����c�=��-Q~5K��G����'�at�@�^{\ާ��F�t�'�4��a:�51�X�s�F0\ju���O�@����D��TN���DS���u�2�6I@3,� ���Z���{���9E�J�7������\ySxz�λz�����J�yb�0�5%P�'��������Y�����	�;��`� ����4k��l�9�W�W#����%ך;�O(TN�����Uh�Ѹ.�Z'��s+<|t��?�����i���:�OQ�>F��T�8+S �������Δ��K��p�8c�2VD��6?gꭌP͔j�d&�T��Ns��kBO�>U�`x��(�񻏧2�<9_s���&��M2��ۂ)}C��p��ݜ�򚀘NL��u�&by+:P��i�:w�xՄ_���S��T��gx��O���uQh>E *���w;��TZ��Yi9�Y����:�P��E��]P���6���)���(��֡�&�铤d��u~�a���5�#M�!Y�h�*呃��Ƒj�JAvP�N�:B.`l��U!�z�"t���X?���i���IU�5��k��ū�1�Q-����2xst��0�O��9溛�f3`w5����S��7o�ֵ�׾���+t,�n<u� gA���������޵�����(��k����	�@g�"}g�\��-��U �_!�?/�]�C�`��x�~ra��R��@	�2�q�@ҕ�X٨���^��B��(F8_JI�^)W�E�S(eu�)�z/D9濶����M�6�=MU�h:��N�01YI��w8�JKH)���	�T�z�m��r�T��Nq1����~ !W��I��F���q��/R�yI����m��Ľ6��$4������ 4ۼ���tv�U��23g�kY�'BM�x="�%c»�%�!��i#��h�<gJ_#$���P,J�3�q�����f4�K��ё 8����T^|V� �� ��� n����W�t���Oa��b�������������i����7x�q�4��M���2�u������Qؐ�����h	a�&G��K񘎐H�^�AC�yu��iΦ�ʉ��*څ�)�R��bY��|6�#�
�_0���t��;1j^�d�2i�
c<*�_��ci)� �e��A��P�y�L�* U6eB�Ye&�����oBҦ �@�	˦( ��L���������v�3/��.i2�pa���M!h9���b5��Wn}S���Da �;�{���sv>R*�����o��S נּ���x=@��Nݢ��@; V���l�{z$yj&��T��zG���Rl��)����J�1�Y�E���b���Ŗ>3�Q��A��ϠJ���>�=l��F/F�̣7��������(p���?�?f�-��:t�KKR !������ɁN� �'�|TPQb8,�4*c>��a�3���'���[>r���ʀ���΂V�g�l��UrW�j�1,�T���������+s�T�6�x�a��C�\���\{d��"l�T���O��I�f)V��~��y����H����Y��B��'u��;7^��ᣇ�nD���.t�1�b^l��
P����-՜_� 8U�_3£�BM�:R%������F�̹ڿ����%@����W�PG���m�AG�J�ME <����_-��]G�ԲO���7�+�4���+ocs=��t޹���k3ȼ���Z�j�Mդ-�K��բ������r3
���YەPM�(�\��QIxV?W:*ެ��g �5$Mu[b�nlkV�}	�놣����2HeK��2ڜ��?	%bΕ�)�]������-5�l����L����%	�>:�Wڻ@� ��.�j���n��`�
���p�oꕼ��4�8N���k\�����J]���<Х�
����=?�[�*��>���1A�
pA����Sx���Tf�
� � �R�n���o�s��G�aggj�|e }WF:Un��ϫ��h�����-���w�3�Uq cXͤ��S~����/�:7@8Hp��H@���ꇋB��t�⍺�p: �/#��ђ\ɗ]W�i �zxJ�Rj�w{�8�t�NF�L>�))�BiX���J�&�u�L���d�ܤ�)�&4`f��V�)K��B�V%&�hOrѤ���K"R��
F&J�W��z��)q8����ӯ;R:$�ʨ'.��
Z�!塃��e���\TB�a��;�Џ�)%<}�ƽ��x�'W�Ϳ����� |��� �b'�Y� � � ���x:^V+]�Z�!��*C��Q�S����. ��6��Q?/��
�F�v@�5!uQ���yDO8ؖ��ZW��<%��:;Y6�G���G���A��!)ȏ����\O��ފ��J<�&pk|iT\�U��(���v�rA�d�,"г����	L��[na�N�\F�I�W�<LuSA�:j����22�����*�I4�rH�,�¡<��A�.[D�uW�7UK@��UWS�VE��4a�Ġ4|M�T�}�$��������]��$>�����d���	�C#:��|e�ft'H/�猃s޼wq_`�񉀧fj��+ :�Y�g��4a_$��YD�f�r}k�RN$�Lۦ ʯN�6��rc�$pa�0*��
g�'��T - �NXM��EliAi"xI	(t�|i^���0i�БM2�JG���̡�~P��@��Z5���o���P3���m
@�=W���J���>�  [���U�}":e�Җ��d�J�c��H�$M���ʴR�mT�V�r�\9�����ΌD�]�CH5ArI�S1	:��Z� m�.�{3�k��h�}tc�4��F�>#������6+@TX؆�}�B l��L�n�BP�m����Fe�9��}y���o[�9���<7���ᔐ���`���2�ֶ�Tm<�
 `� �v�} �W�|��W�<]��/��kۿo�\��k�����ґ�L��nY�%9g���p0�q�WF��֗��	�Q	��5f��4&i�#f;V�ma��	�*~���{Q	hxB�5�v��PF�<� 4�K�9��]�%A�	SUT'8U�ȩ�ղ-�l?4�B��g��5Se
�f�Z�M��G�u��؟�R!���% �hbi�;u��
�]s�jFI�(A�0�r����*��5FǦ��y��RmSa�Q�B�YT@� =`���*��z�<��(����m��������%���s!���J@C�
r����ܒП�Y�nG���G����r�}@���
�fJ���݃/���龎����R{@s�jn�۸��[m*���R{�0�l��֏�?�K$TC��8Z(,@�6'�4{<���	�C1��|��k�w$6>u1�Qr�����sۭ���4N��)A�B�O�M旴M�|�|A��P�kT�\ÛU����&J(�b��/�e
�,��w��\YELС����b� !Vi������#�q�$dy��F�>]�6�p��r���呼N3��Ő"�P2�:=P�Ō\�J�:Ւ�?w��A�F�*!��,Nht�VG���N�s�:���{,v��p�E��_� <>�x��%��'��!�}��@o\��8�
����G����)Mw������ܿq��*��U2F���Dߕ�/��̂H�~��cf�  	}���v'�	~$tB.���pt���C>'��RL��W�$��kO��;����w�h�)䏁�%஠��1�i���CPO�,5=T(���t�ZL�b!Ʋ�X�`G	�� Б����	KÓ��R�K4zU���٦���B=G�g3[�"�B,IW�h�&��;�����H�t�拔=��	��,�Sd;�Ir�@��r,�4٩��b���?RTLہ��4� 7w.�
�p������� ��Vd�k/��*���n)�������������_��>�r� |������y
@9���G=��'y%��zMVm���b� ���B'��M���1w�-h�M��E�h���QQ5����av�#�����糉�L��j�se޼].�%���Y��T�LyN"��|��Ϋx/X��$o�0B���aR@�')��}5n2|�h�����G���Lꆫ��ij2��-�`�tֵ��Y����WK4j{o��N�\����Hk�a)�!��]6�1���S��zC^�Uz����(��ڨ�5��c��u�i�'��F�t>h����gBPZ1�S �ߋ�ש��P�*�RS��nHZ��5�Z�����|mzD���SB�T,�2p��W�j�o�4b|��R}���~�J�������'|���_.�:�����4a?�|x����Wvӓ�uc�ACyj;ǿ����u��ݱ�*��������5���p����>�dka>qO�!腷O���(��P$���)��0w��	�@�zeC�4�AI�j�.A91n �
�)vt�
t>����}��,�i�v��d�z�p�u
 *�K��=��%H.���ᓌ����^C+^���NM �k�������Y�F�Z#�������i���)�V�<E�2cq��i���bM|��&¨l2�أ�@�p��j�r�
겜B�H�90�(,� rũ�d!0�I�"@�e��]�y�>��F�2���	CW.��=������xP�)QN�.� ݎq��o~��ͽ�	GG��Z�pT�SA��h��N4��􍝒�?�w�D� �gz�ҥ5@���B@ ��F=����a3a2���gw�� �}�ތº���`f����jЭ�@P?��HKc݈�V�t���ֳ=����
'�j�Ѫ�mBɥ��kA0�S|���/�k�U�g'�qX&:�ӬW%ct:���8n�Ṭ��4���z�q��h��[q-�n�=�����B"��*�C�wl�]㗞�(�Es���У�Y�����X�ۿ�Ddo�� � h��D��l��i �)�UB���0�]��25���k��yL��0:�P�
^.�ry�����߇��u�+���p*cHl� �� 5-ԑ�ܜ��Q)~��m�O�c��P�9+-�fT�Ko��4J3x�����c����F����~�W+#̟ X�)\�%[�(e��pt
����9������.{���J�] e���e?+ऍ��U�$�W�_�,�m�dh�7S]�"J�fIu��%�`%hEH6�DV�ZFn�29B�����Za4�^ �Q�����WG���H<|��%���,m�gJ��Gf����!��F��sT9!O�!�|�Zp��y��R�?*�O���4+ ʥT�b`�h-��D�6?Tkk���IM83-yU�������B�/:���c��l���IY!��ؼ�6�3�[��J���T�D@F10�w�Pg��\��Xwq:`.;<�+��}���Tl6s8)v�(.k%�⸊�����(�YhR6`
� �'��Ml�iFݖ�q�+�Xx��T��
:�)�<���2�-_V��&H�č��G�(3J��a�u�4N��?m%dܜ�Zn`N(y-ʣ�/�ޏ�n�c,�g�
��lF8��I� �Ɏ�J@Z���N���.�ώ2RH�?[m��v=O��G��=Y_Hu�`aR����8��ͨk	D�'���<���?���FA��
!���V&� �$�� /�:a���D�-ʑP���À~a��Qi��Bz�GÝ ���x��1��aZ�rhq8-)����~T�:^��8�����-Zit��	����:GO k���u���O�H+ KY���d�y��r˺t���Tw��z?F�5��O�����~匃�d�s��S=�_��wI3%���~(g����ʀw
4/D��"A�R����
	�ڟM��˙������гM$�k.�2��	�.�3�`�����/��;R@T�q��w-�L�O��k
RG�}�`�=�;q���� ���+vӹs������=�Ԙ*f�*�}�8�{���+{������:m��,Ma@�(\�'�o���a�ۥAi�F�%�`�- �?��df2k�<Td1�!=�$��7��a|q�EW�=H=2�.��ƌu ��F�:���PH�wз9e�E�3�<{N��^�����n���	�]A[p�S�@s�u��.T���%Ү�͢~EIכ�r�8��a�_$�w͓�o��R�c͹g18���h|���5����q6�5����p>��s�뢾�n�T2^��O�5=�=��7��oUh
��
�~{����ԣe���ҡ�!��=v$3��pq�.���_������Y��3* ?���,X v�;M����ypx{ow��ǂs�JX��I��QlހH�a�r�,���`�Gl@w�o��̩�T�P�xGc�(�X���vXR\J�RJt�W7,F8/��Z��7���ҩn��2���ʮ������x� �����a[���]���[;�qK8E�
Z�6e��ʄI(��Lu�#B��_��Xa�T�k(imde�
�C�������ޫ����^��5��I|�@�/s��T:g�g�6w���������$$5-��q��&��%����(�(����dl
�/Yvq땃tW�n��hwZ �����]��>y$��b��@{j���T�P��H�pk�� ^6&j�Y��ʸQh��Ƴɬ�HM��c�8�DRc��oBL�N ,��	�&OT@i�0�FOo�CL��bp:��*bL���(i�K�t�&���Lr~����?����!�w-_7�(�(�i���&l�Ҩ�"h�J�j��+c�����r*�Zfz�o��3�j��}ݪ�xuJ���$2�����Ƹ�R+�6���(�RGM�՞˸kN^Ƭ���1���x��m���#�S���j�?��Q={�.��I�.?}1�A|�p�c���=��}���.�e<z|��3�)��~��΂�x��������6�����&`�� LhL��Tq��@#K�lmE3V��|��w����h�ވ; �����ؼ��J��BRv<2�.�G�֧O��|�X�1]�=����t�s��z3�7�+�[�O�������o����� ��Ĥ�8���:    IDATj�)%R������@-�V�Q?�d��J��GTTV��߹RE�&k�D�ҔR��S�֔�0�ЖȂs���p�i��%oB��B�u2ښ��� ���FB��^0;��o�0�(����A���$��4fް�w2��1tY���{�pێ�>�׽����s'M ��`$1�Y $����Cl��a������ĉ�8v���&~��<O��@0�`3
!@2��� ��!@�"��g�{������]ի�>�\�×�߾g����UU]]]��,*k��ݒs[��sQ�36 {U  � ���zԘ���}d���3-�eD�S0�o��WE�Q��%El΁1�9q�"C=~!��9���2te���:%�,��#!3���g�b d��Ry�d-x�,�@�+�!��r��V�3A��rA0�#\�>𥁡O�~rp�/��1&\hB�P���u�/(�4޹��5&\�e�`mt�V���B��#X���51i��Ÿ��vdX�#����%�a�)�1OrH������q��yK �I���@� 3h��x��  �0F�!��Q����Gx�'A���~-4��D�,�tq�b
w����� ���#�v�������[��6���Qثw0�_����{�SG���sw��66[o%lM�F$ʆ	�M�� ���|�(#���	ӈH�L��'�>#�32)B���L�J&�)Dq:iX^�!�8�\&Qi�f�~T�r�CÕ8�pu������Tl�gO��m���?&˗�x*����Rx�e)��]�7,��x�� ���2Y|Q�C1��at�J�@�����r������.��46�LH~q�tܫ�U1�H2u�����b�R*����e%�+1l!jr+�Б�E��2܊���R��%��/�&A�2?��p����7��\(����𓪫��[���Ϯ!��;6��8�/�^� $�K��D[�-l�e�J�[��J�X^YŽg�>�������E
*�h8��i}^�N�z�?I�\����V�7��CJ�
�fZ�����%^H���6��n#�g� �6"��\��+��D��~�&��h��)�����*�1A�ؙ(� ��A�8yL�x�JG8#��/	o������z$�M����o�۶��d����~�9B4t��3�\X�X>`�3:��k��I� ��1=n�0 ��B���S.l9xm��I�	����Ę�,��QL���+��U�K�z<N����I P�%YǇ� ��Wnb�/��X�	W;��=B�3�����c�O�� =��A�����K�iT,T�B�ᗶ�g���OTp��$_�͓9�L��/��9`�T椃�q��
�y7 [�!��#�U��_d��W-<{�"Q����י�����"�2�s|Zx!H>¬}�F��<R�(�k�D��>�נ�D��D��
.��/V<�0�K>��a_�i�.� %��F���g��,�)Y�b8���S �����<�`�eL�-z���}0B��v0� bD���8�YA�Ep���+ ���/�U��7�b����!
}J�ot��봁 )R��*�[({�C����������� �b`�|�9��
k�G��`��?�[�1������q��(�6��$|���Ёp\�X�vY3ؠ0��R�R�"�B<��w����1��_�>��7���;�;�v�Ueqt��ko<r+��<	`� �e��@~��+���;�Z�;��G�k&�����rs�)o~R�	ƀI�k������!��fx�Og���z>Z?�P�Uem�+����1� 2�7{�s�ke&�~Q�$X5WXɑ�@"V0ltAP ��	��g플v�� �����JN4?�	��{��p�_H3Q4� 2N���Ԩ�d����B�H���,�L�݆4�����C�q�L|M�x\�q�#P�?�70]�n8
Όd��0{#�Q�m��u=�ޡK�g��?��<����� �:��@�QD�|ee�3��p]F��47NR=��)�	p����G�f�C��8��?8���������� _D��� 9�Ps��n+9:�oܫ6 ��_p �� N]W����|ā}U=��#K�$�!m ���Gdj�ؚ@D�ߴ���
F���R�,U�h����*b�a�,��u��ZhK�]d�a��+�@Jm�p�]�3��9���f���8Y�ʘb���Vx�˥��y�4�<�7��0�\D�sQ��Ny~�7��)QzQN[��<~O^�jaa�F`Uu�	ۊ��_� ��v��C8�r�y���y�?�u�L[llO�9i��=�s_�GZb�B�ԇ?ߺ�ҁ ��&� ��	�J$��4��4�\���*�L��sFO�t�
��a�9lO{lnw��갱��g�#�r�����ǝ���k��v��, �����6������7�fn	v Gl�_�����=a/j $%��_�@v{ګ;.�S��ɂ;-�D<�).�Cy�?Z�g�u��+���{�.�Qm�ee�>���������{��^Y��&�q�z�#r<�a����ڀ��W�7��k{J�~+�`gm #�t �*���R=&G#*�ưv@[������S-�&���L��^�߁M6��ɟc+����Ol3��B	D���ɺ8iaR�L�L��Oz&>D!�DrGM���:�f��-�&-��gxɿ}���F��{f���9�zB�?����h��Ի���K��˟5#^��#t=a2����a}���v����P2�|���(�1h{���18�o4v=�a,��s|\�'��{���s��(M��a/�"ާ�&�L1��}kbB�7��~:��yJ�SSqT�)��5-+�6h발�4U-ĭ�SB�6Ʋ�bS���<K������ȷq��&�I�ۧ9ݷ$딫Y�|� ��(���jJvP�'"�"|�V��py�L	�g���J�P?���:�eu���ߜ8��0�5	D��ԛt���o�s���h[�d�ak{�#��qt�ݱ���up�����C����0����wx�~��c=�b�B�B<.� �5��>9�S����伒ߐ�O5�7�K����(DmOz�o�����9<ŷn�,([��ܻ�0�(��&�M����� 3y)��q,�E ���"�X�2n�×�Ú�֊�(Z��me%�
�xAg���a����HK���� Ѣ\�W�&��g!�R9.⫧��}a@���>��HM��C�/�I+b�� ��q`mk	��<.��H�$N�.����~l|�܏�s����#F����e����P�0a6bE�G@���(��r2Ui2O\����sRk[�˃�қxF��$�4�`<QI�#�C��Њ8���3B�ؠ8�� �v�	�*�s{�G2b�!O�ѻ��n{lOg�ؚacs���S��7��$ "t]��N��4�� :��XL,8_��7J}����)]���<`�4�O��e�i��'�2 ^^�}��Y���G7[^�asr�vt�xٻp����"��(+Bj��{��[ ����"�K��5 *��
������j�p���'F*T��,�%f���:㣠�Ec>NN���2��9�� �KE! �YU_�z5��m��$0gl�k���ߗjI!�BP�SYՀa�h
5��H�B��G唓 �y�D���"M�'�d�C<I��b[ �3$�t�I�d�����+��v����Xd�D�ㆼ-�=R1i$3$��_��:��ԫ�7��8�1��~�- �%{ߣwW�.8�����X���׮EҤH���.��Ċ^78�y��g��D]��X�� �.D�@h�B�t�5�9鱱��g?����*Z��w�co��;ǉ5Ӈ�����{ �;6w\<]1���P"a�$ ���	h� H.e����&i����K"쉹8;n<��� ��u�P�Lk�࠘�d�A=��d;c"%���E:���
��!Zp�W�1�p�"��/)�hM��&�g�6@�a�YRM����o�9��!j ��B��&o{>�<�OQ��C�w0���ڧ������1��s�v����?�ȅ�M�b��8S�G#J��Lj�
C>)����#B�;���ΰ�=���G6fx�o�-1���s}�`��D�zTր\��T�k��>�+.���X#��Ɯ�w���b���_u/�<��]';9g��`�k
0K�Q8B�*�I�Y{����s� |�?�|!Rto!�(�E��ʟ�^� �P���5����;`��O��db>s9aW#��8�|U*s�]���_�Qz��=02��PL+Q;x�l��/�G�)�C�ŨR�2ò9�ʋP�sn��xn\�aCB��[�v?a@�U��I���ʏ�~y�
/�-���!nw���T=|m�d.���n�]|N{���`p�p��&��ȧ��I��,�W�=9�]�ɬ����>���o���6�ʏ�
��k�l��m�Φhg3����	��E�N��&�������?����7��'�ב��lb��)��?�3�������ow��uX �T֢�ueP�;[�y�Cv8�A`Gd����F�=� ��� 2�~M۹��f0b@E�KR��1�\9@Ze�h������sH��MٙbR+��4	8�������܏b}�L:O��ǂ�V���N3(�JQ�!>1;	M�@ې�UJ}�r�ڝ8��*�h	x���a&\�]F�Q}�� e/������^���1�Y�88�}�{�s�.��������s,��<�٘?��Z'4ƙ�D�{B���?�����kS��y��Yy������q�Z=.�i��f�������Y��I���)�nLqd}�_z�߂��]\�@׵�]��m���y- �`�P��_�9���¨	�.x���@�; �o��߻�|5�.u�N��_���a��,l�J˥V�Ny杠�dx����5�+��M+�Z�>�������g�� ��ᜟ{�PP@{�̟5�y�q�� `��,���zj&m�W��?@"�8�lR�����`��tDz_��`��� %��{��s�G�"O���W0hɠ��1� ``W�T�B��8�}ۤ%�*gQwj� ڑ	�<d� �;	�==}$�����)䡐1y�c�y�����B�ܖ8_�n�F�-/)T�ǂѠ/�['<�
�N��m��Dn� ��\��xN�X�cV���%�;��e��l�뷱�]h9���]�W�.X��p��,�����w�k�}�ø$���h}0ִ8�m
�/�f��3ݚ�����'��?xOT�����@D�m;Cߵp.��Z&ۛ������k���¨��k�w_�m��i���Hï'E�a�����ۣ�?y��h?�7�ƇL�М�a�r��e1�1�2hj��Q��+5&�t��ޗ��Ѷ]O8�I��/����u��9?�n|��I��)�!�����^ X�b��������{�[ÙO�6$�9�1,�P�{���F#-$&̞M�mdj�H!�����gM�$�̠�x1��d 0��/� ��
�`���ia�y��"��3� ��`)ީ�
ɿJv<��*����%A`p�Dk�p��%�IT��
%�(A �H�Y��	i�Ǎ�#����(� 0���<.��[�[pJ3���H��a���%�}����:�j�{㙣3��?��o��;���i?�������2h"D'����, 	k�`?��*�~���[����������ޠ��� @D������{t}��m��]7�5_�.����Ͷ��RaT��qc��'��^M+�$��Ц���7B��^�yȗL�/3e1����e��X��@e� �2��o��^ ��z�`����B��O�s����sa.
������t.�E���}�����U��x{U ��v������Oz�}ךۏLÅ%.|�±<&����AO�������#���"#�jI���� .34c"�Ne��>���Ā�t�Po+��Q�ˍJ� ��:=���KU�h43UY�)��ԗR��C�~���p�P����Г�:\R5鈤��F%@rb�$�T��Nx���P>���ė�D�k��_�� ���zu1�-@6��
�����c�)P%�IM����wh{�ԥ������O9we8� ���Z;��(��/�<�$�W�����v���S�qt��N����aU�V������{�]��h��v��d_t!>���1n*��+4�AS{�?j���W��]$V�q���Hs2CI�Z��M ?��˟��_���]����
�|�5@���-���֤���n�w8�I�E�G�۷o~s¹/>��$,la�os�m܌A��؛ ��J-~�s8�����j�AO@-�%�J� ����O$�z�l �F�g��T��g�~;�Jĳ�S*�(��|�Ef,m�Kz'ۜ�A��{�2�|�N�˴6eW͠� ��L^�qY��f��~��Ps��9$�hTj���.�Z"W��O��/��4f^��6����}aY���n�C�L(m9=߸k  ��|���?�㧳�֯�~��އ�3<����l��ǿ	G�9�>!�bȔ��[�����э)�8�W���?.�V�}�������fp}�����;t�];�m߹�|�_��o݂Q`��X<���O�Mp��B���,xJ\��1r��w���xV��k��@����Ak	Mc�;��Mm1�-��b<��I��i�Y����(8"\��o�>����࣯��	�<Y��=����;h����+_�yc~��ӰO��`- �������Q��r%�	63!:H�D�V-2�G��,ps	iZ�=�uHt.�rV,���wSd���9�NU.���@�T��d�.���}]��hKH/Ч�]��摀�c�3AC��#u��	���x2V��ݠ��Y��CV�"���;���L�Y��K��sߑ�;"�Ρ��Y��I����Op��m�̯��ng�F��z�k=n���{��!���y"������uh�>����������۞��?3�v6��;�ft���6f�	���Kx����zF����b���*<���`-�ɏ�pK�"�ȹ#��AL�a��o'�Ѵ@����7����dm&���A�X��+Xkp��'�0�)'�qʡ�rh��pp��ڸ¸��1x�|Ls�?��!n��޶#4�V?z��8f���^ ��˿� P�W��YIBl��% ��M� \T<�+���(�J%��I�>d�T�[�K��<bP���'����C`���$�i@	���K�i�<�w��<5�[WRL�3��a?��3n0�
G��KH��g�y%��Y�`�i.I���u}��u�H�ğ�����9��W���N����~��H����<����@|m�c2�a}k�#�a�d��Gy�O}ע�:t]��^��+�n����+>�w��m��	ƍ���ڸ��J��=t��Cc���,g�%\��y�Ҵ@-C��<��H���s�_���j	~�gP[�Q]aeTa�j�C�F8�N>a���qҡ�o�o�Ƹ��`�@�%�����#���a/nH��;;����[�a?@Z�p�h�e9̕F� 	���@��'&Fk�M���z����	��f�pV\�Y�!�eEW�gP�5X	}�u^H���'`hl��g�0I�������1�p' ���0	�_|b�%�WBW���o=���G�N���B8�J�!Ɏ���%;�<�W�N��FBX��K[�m��,�ڶ����E(L�{4<��_�+��r�b��@��l�ڿ����zk��Sܱ>���������;�ǽ�>����]7Ň.�����T&��+�G65�Vj<�A���X�TR�&�bL��J1 	us���L���R�.�P$��s���ԇw�dB?�c���+����p{�����Ƴ�    IDAT�c��U��Ko��?ߎ+����ڑF��P^��a/i  ݡ���M��n'ՖV��x���K��!�$�V���(�	B���:$iiJE5��O�d�,��I��O}��&��e�
P�/۝P�`�	��d�^Z�K�S��D��G�Y��Km���Q�T�zU��:AT�K��];u	ds�M��� ����z�W���BZ�
p��p�m�as{���������{ft}w�j�,�IU������ ��?��6m�0�u��jqds�;�Lpۑm���\�C����k߮m������m��t�|��q�g?�Q�U���
�V,��8�V�Z���3��z+�������R�<kH��hTL��O4��(�q`�H6C\	���$�������h�
�q�}k5��ăc�t�kN88ơ}�Vj���&��'?&��]$4�����Ԫڒ�i^b�ǵ�5 @�h�����vf��6�A/��;\�e�x�ڧ�gy?�ֲ~����i#A��k��QAB)��U�H��<Jq@�F�e���>��G�ipû��R!T�,�� ��V [=[^��l��@0!5j.ڝS��ϵ9��s$~#�B��
dӪ_h �F �P8�h���_�2����n�����|8E1K(3}��8c�~0`wutpmm��_���ש~�}+�5��'�[�G7g8|ԫ��?�z%�x�� ��C;���g�͍���mo�M7^��Y��lP��X[����V�E{e�*�y�e�t�zi������M���a��6LۍH7OPY���,�	(@���G�9O?��5��f�:O�����B���X8=��?�w @�Y	di� m�`r��笖��q&`����%+�gu���\Pߥ3�C��`L�HM#�	�F�j�0���S82���������v:�̼�����L�m` �Ł�Wdt�/��-�3$.9C�@C=�0䂀>*8��Q�Ke��D��c.�.E�#��!��P�@ 1~􆎃���%a���5��#��}��L6�[������KR{�ɚGE��̞=�����p�wn���݆�x�C��~��V��`�������rt��Oy
.��_ľL/�ί�ɟ^�̿�������O����Y�*�,�+~ۨ���\Ǜ��|��o+�
��ڸ�������_]U~�����M�#gt��,�����R�.�H��BC9Ϯ�|1i�X��@�&���3}S�{��!�I��ԇ��|}WB���{q�k_���ncM��Ca/ �PA�$���V�zY�Ĕ'G<E�7rM��a�Q�|�v@r�xt;�Ȧʫx���[4!<�(b�!�՜�J�󨌑E���3��0Z��F�B�f�$�#,�T��+Mi�*>�����|�^w��A��,����TG� �E0%A�?�v+Ve��� ,1�	9�կs��ak�����������(;����x}ՕW�+���>�	=z45&�f���3��s��|<�Y�BU�q?wBn���}���-o�����W��S>:���I���5�o~�����`�bksoy�_�;����[����߾��?`+�ʫ�k���,\�����q����v)�DW�塰�(�`,���R�������x�Cp�.=�e������4U׊�����$ ���Db�n�7��Д��XD�
� y�|iF��LF���-��_b�L�J�Aјo����ڞw��T�΂Þ��%�WsV��B!@��/C!`�-- ���/hk�ʷ=� T&!ҤF1!��*�+@����X�w�'�#``��_ﭞ�G�f-y�5�����O���A(��4|�?��O~�{��p�u�Z��C�I���>�W���\z�%��_�E���CUUK����g㪿�@����}�0����rI�鸣�������l���M��Mo�-�܄q`���߷Zc�j�ՑE�?� $a��x�>�����D8�!�wԗ=W[���~�y����xy��E᧝�A]+㝍�X8�	ޕ�4#<�Y���.����w����� 0f 2&'���Mi�1
�ǰZ"B`���^mIOzq_5�JAHu%ޜ\�
��({ n!�'��,>��G�+'���iF����|Y�hRT�3Â�%D��#���Ӝ�3��=��6;D�qC�����L�m�2QI�[�&QX2}��3'��ݷè�i>J��|"Wư�^�vJm����o2백����w�Oqdc"�K��zޫ��bP766��W����U0 X8XC0&��j�ML�u}���� ^zŅp��O}e��(C�4����N���x ��L�[Ӱ��Lw6q��p�o��u]��o1�n��ozn���~���W�Q�3T��E���D/_���;I11�Ȳ�9�?L�|I8(�-3Ż�Uf �� �2�R�_ ű�dڣ�����G�Ki�l�	D��^{��� ��A�֩`K�ǫ�i�H�����`eY�FѢ�	+��}dRv�����n�kjuz�����ۘ�7u%�e�P���?J�J��Y��7��7����+�@!������Y4K��Y�*��3V
��'	���K�b�*jE�t���<�U���r#<�ٮ�۳�[]��n��3���_������a��o����U��'?q�!T֡�ㆰ6�{p��lq��N<0½��p`����+���Ykp�S~ [�.�y�c�;o������t�c}�[�>����ue���gB���ڿ�fޑP��oy3n��:葉�XY<�+x�CVp�V0n���ί���.�=�&I3��!?�ಉ�.�I�q���*��'Z��M�|�Ѕ��Ō���
�fU��VWj����#�|p�48N��� cp�.�����2 r{0|�i �0��"w����"D�9�d�g`�64�#�R�s��:��~ufI��y�i"�A�N �0=�Ac�ð���aĪ4�*)�W��3�W��"}�`�e��� �C�`�}`��*2B#������/~��@ڍ (�o�;�r�>��0	d� AJ��ibtYeG@{a��#�f}����͓���v��[~�|ds���ũ�(��`j����_�*�ݿ�����̟0��q�vb��W<@������<�[�@{g}dt^봳౏}�W�3�v���1���ܚa}c��G'8�1�k�ze� ����O6 }4}7Ż�����׮�(0����������N�76w���#��Yl��x��<����r�� � �Wd~�9��y��%�v �v ���GZ��g��?�r����?�����x����U�!��y��
�K��)�{��,mm`��1��R��90_�3��T2GC�E�G�(1=���`����\��z�2Rg�%�rma.�˛�.�w�8����X�B!@�A@Rhχ=_-�A@ �v�����2!e�#�͓T��i�@�Re(� �3P(	���'~���5�������}�܃����˿�"�+`���;��4+�++�OlM:�6�xF�9�=�}�#p�g������ADx���Wο7� �lN;��{��-^�?�����?[���?� ����>�����=��XU5������#�(%�$+����U��	�|.5\���n�Q�N�N�e~;���xTB �v�̲�q>|ѓ�����=J��[ ��?�j��'L,�U}d� P�ʡh�� uhJ[ŕ��qV�^���+{��[h���>�4i���4䣒& `u4�� �湯31���̯�����
���NY�{4 �)p˵z����8
c�>7�k (��\�bYQ.v� 0Q���<g���H�S99Tc�S���A�fm��p�c��э������~��)����n��6���K8r�0��
X�*<�����Ee�7��&��ƻ��w��ߺ��8Z d�p��A l��c�:l����Sޘ���̟�σ���/� p����y|����s�V��V*4uV��{���c�`�P�"9�RҺ�'�EX�:ʸ��З�x�]_&��a����+{�[O��qŒZ  8��/�o�����b���?f���{B pBT6Ћp��ŘQK�,VX�Q1#�&Q�|)(�2��s���j��D��<͙6?g����g	3�1׺P8���Aj���*B���ZtT0�7ni�=T�\.P��b7d��ysM��Rn�'�\�����X�|j@WA��t��d�c38�9���<�D�}�f�g��5�1�vhN�{�������c�zvdpp�����2�����x0`�;�x�(�H��ӶG�8�<m��b߾}x�V1k{L�i�#���g�8��3�j������)�y�u�����F�
_v�2�PW�����]��`���I;���q}+�֯47�b�5'��x���X:��T����~�hWB���}*�� 6�*��g��� � 
A� *#�}����ԲJ>���i��'8k�*�^�`m��Q஼gΫ\�6�/n�6�s����U-��(�@o� J8�g٦�y�I�|ρb��c"��TZ�k��K��tR�~�dT�t�f�u��,E|��B(��5:�	^���C)�a�����v��M�R��?� a�?��W���.� ���jX��(��+O{D��qU��,�1qk ��m�=��9�0�X�*�.���p�������/9{���-�lLqtc���8#�c�j1������0�b����|��uӸǿ2�8��5��&��]�oM�ph�c�����@��Lj	ƿ$��s[w.�PU���Xu����u��f]�&��n-��'�%.{c ����쉰�O��bJ�P��O[��Fx����Iz6.�3l��_�|O��s@�D�I�O�D�[�*#���d�)�B���R�()�T���O��Lp���� #n�
Y��@n�+)�j����~@~��~�9I�J��
��OTL
'�7�1<�����G>���өW�ol�X�n�9� ��XTU�����_��W��7�������9�l����j���Qm��ޝkVͬ6o�j}��]	W�6���%�l6�s�k5�Xߜac+�;�o�����x��7��ځ.xn��V��r���\E�b��ŗR�dɟ�9NG�K�j�U�+Ue���ߝ
�J
�-�&�&�ϡ}+5��8����U	Ө�+���?�AK������W(�PZ�셰W 9%���{f�f�cfJ1��K�g.�/�a�)��$�C!#k�EY��ڎD��5�|C�g^s�V��xMDF3�b���}��� W��"b��Ǝq4�4F4�n���x�'A�EY��'�|�ׯ��W������߷�X����Fa �_?�[H�?������a�������ᬌ*���ϝ��[�"7`_ >XT�X�3��m44����;`n8|�0�yts�����K=&k4����/��c��s��Km��3�8�̕��1�a�W���K/BT1:��Jּ�;'~'�>�ΰ�f[�7_�X�����4��N�V�+f,�����h�\���Ұ���C_<I��9@	�ݠ}���*  �����YoyGg����2N@�&#W� (����媍���5N��$�,�3�`M���m�lF�%�q�|-N��)�&�+��bZ�p����ƹpK�U�#���(Aᾰ�b�(	�e^��!7���b�Ø� ���y�?�������wDţ~�ᅸ暯�տ����?ί���/n#��S�N䃁�����|�5Aװ�I���ut]��7f��j���l��G�z .���������w����`\[ߦ��dT���q����a�:�#5Њ
�"�o���������y��"s~Kd)�һ�g��2���q���l�
x�Y?�C�S0��=_E��a�u܆�& 䳞?;��g�շ��d%�>�P+���1T�q\���x�H�W�w�wN�w���F�
B����(~�)B� ����6�/�J��%��O�xC����LT�6��H��b�uk��t�ՊQW���Ds�A�VwZAK 6��B���U���n{�a2���:���hت�	���G�M��_�c>`x_�����ܖ���;�[n�E�ol��o���Z���!�W���;jgS��ur����]�6^��E�̝Ĝ��)�G�bϔ�e9́��(�Ya��k�y���o���[b�Ή>��l�ᅀk�9�ȟD��n�����❟^��J�2�M<��t��$ �/��T�=� ���%c��`��lB!��A!�����t&�!"2�R��J(�O�hX �U�E����������y�/MB��9e�aƘ�����LW䉭��iz��u �9uk��s��ZNF����)@ҭ!�3���L�.��N���Ϭu�>�U]�⸩��' ��ַ�K}�Z���y�+��"�F�׈��҈3�Fy�(�s��yq������^�p�С�K�q}P�:
� =���w�;߾���7�y�*����t��]��`*���R��dQ��D�P��1-ҭ�|g؋B�c
���w�&nT�W��[��-lK��qT7o�
u]�?��p�p����
k�]�.��$ p�!g��N��D"H
G��Q\ѳ�-�BOD��n˄z�0%��U�w�FF�Ō�'".p*��-�F�	i����*��$Q�t[2���W��%�ӂV�,���m���˲(dI�
���[T��J��� ��$�$]O�2���e8�K���S㨑-jp7B�HM��Y���u�U�v0d�6�c�w������4��,�cOn��w�Ae)��y����E���۝sh�mߣ�z��V.��rN� ೟�l|~�����|��?]/[�wp}�믿w�%��oT�Gl�Hᘟ/�������������C�|��E|Yj�&��YTs�s�cyK~K��,VG���`�j��q8�RX�;����<\p�ř�g����u]���{>�U����o����̴��1��d0�y"���R����х�3�H� }��cw.��N	����P�'Ű�D��%J��d�,��\�|dLR�:�02�9�����]�Qx���G�:B���Pc�% z �GR�S�i
T}�a�v�xA�(��g�äuἽ���?�Zo��g�]�9P������fAS ����BS�U&��>��	y�]�І�[�S�>��`�0�N�/|!���3ޙQ���)]�z����u-���7���?��<nMV�A0�F���vH/|1�sՌ(�=�-f^6����c7���`N��A��5 ~+����Q�%���*����ͷnVUU�`��_UU�{�K�T؋ �;�����ǯ�߸9�P�ѥ����u��Cb����_Z�'M S��t(�a�^P �Gk�C'�S	i�*>Z�2�H�L#<,�H�9�Ϣ��K��I]���p�8@�@���%�A6��?b�<K�[BA�bo
\U���� ��u�zR����缺��p0}��Ba��39�=3�dg˞�Y��u= ,�]�~�lP��p�m���/����?��M�������&_s��>�ִ�������p�Ea2�  ���'�o?��p�/9� xE�B��7���h�߄-����$@����	�0Ё�������N�r�R�ߒ�ev�D�o�m�aq�9=l�ߚZ᫚Í�+�}31�ڵ�k�^�c?�����Z{�h4:�4�����hם�]{Q  $�? : �#[��o���tm\��9PǦ�.l��ϧ9J�Y����%n�͊��"�a��(�щW��I���Y5���U�����:�R<�4�X1It2P��    IDAT:�m��[�%�b�a���Q��Ll��a�P����TS��4�`������=����̡_�:f��/��zK}��۫�� �&���������q�oM��W''?��(���D޹>8��'6��]�i7(�(��o� PU^�W�yN�ȏ��Q���\��o�	��}�+D�?��:n{�ª���E��o���+]�K�[���"���'^����25DAln\[	� �/����s������x���mN;����^�z�h4:8�V���q�`!����-�v:sa����an	��!�C�y��XV��<?4��\��#��P1��0%�ϴʓm	5IxZ�Pp�P.��q2>�%�'���ؼcj�զ>׬��'U��D)��P�}�~�;*�݈��sq=��jNа��Ԁ�Oyl��Q�BY�H~��z��'���,��g�߾���+���'޺��?����*��<����S}�?2�3��E�a=0���o���V��^z)n��f ��_�b<����Ճ�w@^���o� ��"����h�)�V��(���٩���P+f���V���깙��~w.,[K�],�o`+�����9�?7��ͥq=��PUU�4ͽ�>��
{�����@�Ԧ�*c�+��	���"�ʈ*O�D�9�4\YU��"�dl�(�W8��>ԍ���b��c�X�'$��Y���
����`�J����Iȑ����<y��<�� Ή�B=è0Z�� �灬~���a�����섶%�f�����΅�p��6���*�p�W��;������}�J��O� �o4H����5�a����o�ˇ��u���) �O��?�RQ���z�}��m���������G4а���b�"	3���"�o��y������t7��m�oW���Ce�NV�O >��?r���y���>�����'�t����C��z���|��^ �4��`WU��� E�9����#�L#��eÃ���1�f3Tu���g dr.x(/2�(�S�<�����J:r?�,��O*�������\����Dd^7��Ϫl��A|�k��I��sU�M����`]?��]�:��?��w�k+Tu�����?�:k����y�j�����#��Jc����.�`��9鰹�F�D�	�y�k�`�E/zQ�0��?ß�� ����w�5jk���?8�������K��`������c�������y�/��.�����q� ��4p8̡e�y�k�x4���O<{6��<��FnA��x������^��_6�`�rP��$���j:{��� �%`���9$ż�<H᥈0ǅg���Q���ʦ:cY�ِLG�G\W��^_���Q��ʕ��'���S��"|�O��L������m��2*���S�.V��QMi�j�-�t�.`�M�կ��bfx�������� ���kO8�	u6�yߋ�x�w��oۻ$ޞ��p���|�;p�%�  ��1^�����8�>�F�`DW\�q�|�7�����,���1�I}��������o'��[bK�X~w"S��cl��ձ7d- �v8�ُ[��?��h��2Ɯ<�R����8���E��Y	.�Dg�#����2��XN�uʟ!��TˆB�fC�7�u�� �B*Ey�TP�����sR&A`D�/ƾ��B��{Xg���=ĹP�����@x� H���R@I��.�Ӱ/x�=�u������~K���^i���P�����KⱿ�M��7P��F0�O�;�g�ߒ��=���K���K/ş�ٟ����E8�Bwy�?r,���?���d{�}�{�Ә�"��E�j~lL��v ��R]S@��	;5��
� ǲ \8�6��6����p�'⬳�2�[kp�)�<u<7�r��(  i,���M"���r�B ��x#��&\���6�V�KbL�4�o5�|9����- 
e�ԌNnI$�:�./���fn٣�EY�HJ�S�|�E�2�D9�e������(��.��AIҰ��}��$5e��A�K��taϟ����/���EU{'@��x�@��7��W]�����Z��kʜ�.G�_\�����8~�p���~��b��h���?_���?�_����w���c��ao�_45�ǎ��w�v���9[��0�ް\C��,�,\�m���7�E�?PauTEV�<��� ��� pp{{���t�������3�<n���m�1�1�N��
�hB8G�&X-���U� ���#�=�|i� ����A�xj���3��aB���>b��g��Q���	�W�ì���:�L�J� y8@�/)��W�L�}d��ȯ )$G��}��!\�����)�	�Q��h�3��H4��E�_ �L�q�����A�8���_	��|��Q���Ox�0���@O�������zc*TU�XcQ7M�����M7ބo��3�k���_F�_�N��$nd��s��8G���߀7�p^���⪫�R�/|�q��'y��a��T���������¥�|�e���y�����]�[wЂ���,�9/j��;�$�0���������ʸ�hZa:���n�O����N;icc㬾�-�ώF�� 6�&��a�
 �z ����.]9Q�ӃPyg��h'�K��G���*�d�~��#�����`�$g@v���2��"�z�6��+ag! 2�yL<������nD�<���!\��	��U�X%'���0��Б#��$ٜ�:.�-�
�i���`a��"��̖��W��( �%0���?{��╿��U��D0���/yzn��mMݯ%�A����%BM�{�5ڎ5^haA�mVOzh���C�4x�K^��\�Wᄾ��==z��c�;L&[7�⿲����bXDݗ&J;��㎇ܥ�.kUH~ja��Wm�Ugѻ�������VU���:�|�C[k�_�����ׯC"}�Uث[ ��L�����8�>��]uy (p�	�v$�_؃�_���P4�$� �SL�xQ���B��*�4���0����Er�<��0 �PĉD�?bE}��#m���>�2>�����%\dZēR=�J*Hec��X^��/��40�C��X��n���x3��/k���)���� �;��߮�*wk*��=i��:���*m\u� ��Z�IL�x��A�K�8��z7��V�����[m�ӖQ��^Y����9眃{�������6 �����^�aT���9����&
|��wRM����t,���r���a�B�qY3�����ʻ�^[� ̱��m��>�Q���?��0��ƘSVWW�ž}�~����� ���� E��/
[�~��/�dPG5�r ����H�i$�z_��j0&�-F���U�^ū�;���adML����2S�8�G�	�wʐ�1>f�s����ܠ��!��)�1�J�Cyv��0`jr����~�$ ��#�[���е���ܿ�Ϩ�:^�SU�� \�`���Ç�|%���Y���n�s��Fl�HT����J�kN<0�ɇ�8��'����W�U��E�~���`�A{�:Xk���8�c�8�ۡ���/����˰�~uep���&�?�~K��"���@�먽�m�.�g�'�Nȶ u���h�X��d�����D��� ��15�<t2�X���������-w�n��k��gre� Q�`�� p�0u�zo���G�
Τ�k� ��xc)��%k��w�$>�i��=<��Եq��E`gF]bmҳIv�P�r}?�\��O4Y��mdH�l�va�.t�EH[v��wF�I#D	��p�����?j\m���
^��ڮ�=�N�����p��v�W�V5���	+k��'"T�_/|��_�`�_-�j?	x�z��TX�N���n4�Qc �KF��x�����Ll���mֿc�G���q����ޒ0l����[|���
.?y�66q�_P.�9u/=p�
{L��cL�ӘJ�o����1��߆O:yG����x���+��r�u�uu]?lee�4 _Ŏ��߳a�i 8�JG@-���FО�mQ�p�[K�P��I番�yHΛ�Re��R�Ƭ���s�&����q�]�|�yy��5�_=>�o�0�}���`Ϋ���%@YBi�����2/{�G!Kf�J����}/��{$��?;�����%`���_���'oj�1�t��S�N�r�����}�5�kpN:�'��#:�����׼&��m��|�)-
}���9�w ��O~w���`hhP��|t���xgc1�T���p�Wx��4�m�-.on�e� ��b<�@]����~d�z�>�lcl�4�9�np�3�<��%�w{ث B��W�����ƕ�Lө�D K+���U����_���i�,�+�/Js��)���X�y��+f60�u��!��Z���*�h�q ��#�s���$����@ "����52?�XE��0�4%�q�o��}^�kތ�qHʾ9e4�Tiֽ�zH2��E!��2�8��c�����;���;/��+~u3����A� �&G@� ���+��P[�}��xd��,�M=�<R���*�$��Y��V��_���͖�N��#��/���xM9�;�q���;\z�G<����x�?6�H�U"K�E�j!�c��w1#_��w��pW�`�tc���������������x�O�d�:��ԧ�Zk�sk ���0�_�7��^�  �������G7��؂���\�ܞ`�:B�ˌ5������a��H �5�qoA�`�)�09CC?6Γyx�E�c��.ЋoG	X��9�HF'#��<�+5-��v"���eP�U��]�"��GR}� �D�!S�N�WY��ztݺ�
Ӽ/"|�S=�Uݐ���wa�O�\X�;!���2�@������й�\sMt�kM�,H�6� R햑:����Y��D�k+���8���������f��6 2}r���絰7�p=�y���ڿ���_�0��4��y�e����Z��vs
��.��
�e�����k��.�G�� x��6έ����p:t���G@c�=����e�n�+����ik}u��Z{�:�]��<B�ScF@�G"�4����|�%?D�Hb҆+�SA���˿�j��G����*��!����!����E�@Úh��dIe$�=��帔�N��*��m �"�RR��y%�|�h�Pܚ���+ Qt�ۇ�������ڟ��+��k+�%<�j����666����Q���	 AhEo�W�Ui���5�@]�]��{ܽ�6��W������黾���}<2��2h*��Gz�����B�y	FuO�eQ�.�8E�L��$��}�S(r ����G.����c*c�	 Ҷ��x;�� zǑO���p�ʽ�� ,��}6C����)��xb"߷��U�K+��] ĕQ�$._��ώD��x���[$u�DQ�nB^i��]��O$�9�w�(H�@�6H���|�2����yJ�#��*/�6��Aihb�Y������R��tUIL��boB:'��$T�q|s_�.u�d!�:H(�[��i�I���'h��6�;���������{�_U�?�� <�t�ߗ����J7�����Cx^pzj��2h����C�\m��|i�v~��+��s�{n5���wya`6��3�����ُ����x��)B�~�1s_tX�q��]F~w��]Y�\X�� ��� xۀ�sqn-��G�m���i֬���;�:������a�j ���@``f�qSUފ����"U�Q`��	ji��iV���Z����L�#�`I����c "�ZM��K*c!�h��Nd6 Q@��+<���d/�ո|.�Eü(�D� J�y��^*��uS��U6+�כpʠT+p l�N  �����N���xeUU�iF�`0dc@"µ_�j<7��ǚ���$�
qsg�XݖO5lo�y��"l=iG�����bx��Dު����O��6*kp�#���3ά#�/����~s���P���7����ݕu�E$�.����T�Uc�2����P��>�K�u��c߾}kD4����Dtj]�'�8��"����9L |��om�"�����EfΔ:'�*(��Y�ʺ�X�B���"��fbʄY2���A����T2�	z/>C�RYH�%�[yK��#�M�����/���<��M͓R%y;��$������gv����SГg�f���ѿ�{�/�uݠ�F�����`+��`��k�������m�  ��<�A��`�:�ڠ�p�w^�y!���#�� @�+��̯�+�_���?��:�(�Q�R�H�۬^���p�5�=��y��Ed~\���F����۞���� � oz��³i�q��`�I�ڟh���s�=w��{ �e��l f����1���'���M���j�����M�I��ӏ�_�w�x�,� ޣM�8��E<1HuJI��(��$H��et�$�J�ҫ ���+�.y��?��,�^}x��<d�I���Ǌ3ґ��}�/�S=�u�4��ڛ�9Xũy��:�̎���VP��߾�Z��?���*��u��V�(�8�WUU�����o|MEXi��$�Ժ�z�����B���O0��{L���=ꖣ��Uu�9��$\�!FB`�_cv�۱&	+�5&1Ɠ�x2��5�5Y���X��8�0c�`�<<d☀�@<,KF	����޺���>�����Σ�j�U�jWu���>$t��V���j׮ꪽw�ڵk�im�4K�~�f��?��;k`��ѣ��чvV�����Tb������3a�m2���sA�)
{����-�i|�w
���B��z��R�,4�~����u����N P��G����i�<��9���	Ow�� � &������:�e f���H��!2&u��EdsL���B�����9D�[�"y%ʈH��t6/
G+�k��z����R�242T2FIa�F�2�IQIy��oU���
�.�CwYT;]�Ȏ6�A�+C��~�q����1���Ai]к���g�G��d2B�TX�y�@�.؈��Vw�Ҷ5���!Lj���;�G{��;v�0�q� ��K�E��(�ߪ�gb��e�5�
���0aV���ӓp�E����m�E�����?�*5z�K���5��;��; @i��K)u��.���+��o����9B�`꯱��XZ"�pFp~��� x6黒4GD�Є<��SV:�G¼��Y|��ؑ(3��s� �ҡ0�Y�rC��̎{�d���)���:��1e�d�ɓ�s�a�Gu�ȓ�W�Yu��gᛷ �Up6#�]"��a�/ca��?k	U�C��CYT���A�h�R��Ƚ(5�+�~��`�\@j�X� �A�E\�q�M���xj1m,>�ɿ�h�g��~7��@���[��W�����3�.Dw�f�y��bX���d�a��R��2��<�~�(8�S�!X������娪
 
��?-�����t����o���  ���^ kx g���U@��ŝ��<����J�%q�y8�|�G<�H��V ���wh&J\.�|�t�\h�`��f&�EMK����8>��*�L��p[��AMH���RX#���,	���]��d�#��@(�?��C�e��h������1ޒs\L�c�Q� ��yU�Q�s�4ʲ��'@'�>��A X�2�}_NJ�7kPi��i��F��T�?�K uc���O$g��<�q�r�G���O�P���u�
��.��VXh6e�r    IDAT���y���,�O�+m�U����|���(Jy'T, �% �����/�>v+�z=��e/����Ƙ�z衿 .@�5 ck1RJm����������߼�aB�a� ��9�q�@U����"
������`Ȃ9�h���;�WN��HXS�#��Y� Ң#�2BPHm:�U�`r��T��(7���]�'�&�s���V��]�8
"���L���#ɟ�URV��1�H'�U��6/:����no�?��1}�ex������_�]�U���CQx�?�P�eb�gM��OGU���K=�c�t�Y?�ߒ��0Ҷ'�w���Ok���bR[@l"�[|�����p� w�y��Ph�����~kw2,��s�e��g{���Qfc�t�f��s���O�^Y�.N�BwؕFY*��yd�Q����_��HXp����������, pߑ� ' �J��xj��#kK�I��0�D��]��Jy� =�<x�=��Y�k����8�����H�08P<)�bF�H����O2@��0 E�4*e�i�.">/��MH� ���'E���V]�@]��EW��d4#]�WG�I�mt����݌e�Ae?� x��en�_9�eYAk쯷 �*}��i��T/�2E�E̳J��[�o��I-�!L�qX�w���]������G"oAd�_�ګ��e
e@�����e~�������P�C��1qGv
�Z��Wʭ��e '���
���[��k���oK�Գ�R�N�>����!����;�v��T٪R�1�0վ ���E�=�P�̃U��z�@k���3f�Te�=l����V%�jr�0b�+����r�	�<7(Y5?XD��_�	7���0~���Cp��p�K+a%Ϟ�$;�({�q�jʐ��׼�	21+ � I\�I�1ɺA�nc��U��,��_�������9�� `	�^���:��-��k�567ְR�2�b+$�EG��z���Kڄ��a�Mkg��g��0�l�� ��D��8�'��_)��h�(��@`�iC���y�4Ij$���I�j�3���Ӎ�)�	�ao𧽧H- ��ן^������o"��,��<x�4�N|�j ����]O ��5P�s����:�gR��R|T�FC-��ˏQ.�U�b\�d��|1S`��R��8W�E!Y���s=�Ҩ4S&e0c[�v�0�>ק]T�W��a�eۊ&�%�<�\����g�r��[�=��$��e���*�w�5!������_7nY���W��ʲBY����Vڕ��nn��i��
� ����N2M+*���`�xƓiT�7&���+���7l�4w�q�c�~��m 8wiY4H\�q�Ww^�+:ﺠ���a�W���z���۠�Mv�g6b�϶p�4(0���vhl��t�̙�0|�󟏥�%4M�`��������xE�\j|!��U ����� �X�����͍�^W�]"�D;����'��>���l|�pB�E�Z�<@��a�b+�Ʒ�aK��E�͡�zI���6>c�2�)-�H>d0(�/�z��d$p�ːm�Y.Q�.�@h�<�Ҳf��_#�#�%@�x�e K�[ �e�,��{g w����@�N�>��{ �Z�f�G��w���E�4 Mc1i�ڿw ��� ɚ$�  '�}�]aFW(���{����9���4g8�~��ú!���0����C�ٵ&3&�䴌�{����T������s�=}����*�ey��R�'��ڿ��fw�|�å  ������:�l��5��*���I�Շ���	�'����$ �E����i�>*z���h!�3�6,<"/�/0ER�B��D�)*����ڀ8����H�䰐���%�gS�E9�	@B� F�B�Hl�tV��)�����U)wvp����?�ϼ�;X�0�����4��/ �P��Bm�|�ߴ.����ΈƵA�_w5nY��r$��	? ��10��p8�c�>
�X�|��(��M�/���g�
ϛ����\��e\��%��s�.m��Q4��v�{ȳ
g��f�@����{�YX}��W���@i��ZY��^]]uGp>���. �'M4 �b�F�J;&R�Ā�/����td����c3�m��g���m���`�����ڿ����!�Ia����	bd�u �ԥc��e%��PxL޵`�/+�{vb�m�@�@͠Vm���C]ٳ~�g�{U�nG�L�]sӇ�o}7�����PUn�������ř3�� @(=!,5{j#���I�;ڭ#���= �e�i�k��`��vJ������[�W��p^����&��	�}-Z�%�i5tU䩸��ڢu�b��d݉Zc��
��T@�����ַ.|���W_���Z�7 �Bk���>���, H^d�5�;mi`
��4�vw����;?�_��àWy�k�K��ܑ,"$r�3e0�؆gY�,F#���$�ځ4o����Lʳ��Y9��������P%�[e����B۴Cڞ9\v�c��L�HZ�T�����%���]h�
�����?�T���v�J�����@q�̩_�n�mkVzt �G��;1";>oY����`gp߽_[��r�\w>L�>�:Dv�I�X�0S0x�D��:�}���F`�2���*[�vZ4���'@�`c�tQ4���j6t��گcXYYy�N 8�@��	x'���c'��>�3޿Z�]zYS��{V��D���ӟ�_�&��?g9��DG���؁"0�@|(c�L<(�K��+}(���q�څ{J�'�)g�f�����L	_�A"2����7��*3|�(d��6M�J��5iE�o�I�+����Ʀ��,,��:�_Vn��R(�( @x�;{vͭ�k7���i�hC����Nڕ�ܡ�������[��퍲�� �Y�X��ȑ� ��}�Xh����+_�2��OC�����~�;/��HH�w�%���ē}���4뚑1Ѵ�#/#��"��H�B�À��&�ř��V�4;��d�/	 �ꪫ�Vi�P)�k�����R ���:a`{gj��J;���$x)���o����y,m�LvH�ze��h>;��Qx���c �礳�UJ���I����ڇ�����I<H��c6�I4Q���V����y3��R�݆��4���� %eE���� �P��<�gBx�K�I��7�G��C��)�������=�L�����Za�hX?{.�g�q��iU'�̸G���C���agM���`m��p0����Q(���g ���
9_��c:>Ό$s^�����57Å,;��j1|Z��@mV��+QyM�)�^�yM��y��2�[YY��W:�J��˛�9���i�j.�y����٭iMD-�ew��w�SW_��gdBP&&����@�[TP� Dh��H,2%�U�v���!��<O����ۆ�|h�tD����!Ё'N�v�qL�����HJ^�G2G��fy�3g3����#%¬��>��^���,--{��n۟.
����# "���u{��˂�2��Ix���X�[:��=��Of�#�U�����
MZ³=�/� ��ZQ`^����_��vT|5�I��H�_�߅s���׮5p�⺈9h�b�N�x΁q�][kNT
����D��w�}���cx�_�:]	�]~�������R �p`�5��~h��`b��r띯�\�ao� {]��Z
�A���;K����=��c��E`BP3�8��ȧ��h�3/3 ���<���5���"��/��#�G��"��֬��mܐ���8H�D{͆9sY �3��1�2���S����B����{���562P��ُ����� k����^����#��-L�#w��v2D����>~c'a��>k�@��e/������7��X�Y��7�i`�@)�#���qN���h�:��~]W�fW:�q"��♻���������5��f��^�-�7��|l�_������f�#�<����Ç��Dt�Z����������  xzq& ��QYj��+��>������Xg�O
]�����l	@���FܬX����[��dA f�@���[��?'�Ӹ4A�/E�Z�!p�$}�YFE���K�斛�R�;���Y�͋�QnGs ��n;]��Z1W�FA�;����ɿ6+����?xv�c�:�����:KzW�d�/8�;�@0v�շV��v@6!9A����ipbD�����h��@x䑇�_�h��;���|.��y��0�&��v�����xu	3{7��Ġ�n`>����E�RaZ[@8�{�����Ç�&��EQ�XY�յ�^[,
�B�KI Ƚ��`R�3_}h{G�Yp�z�%�}������"�B|�x�f�qFO���ޒ���ȵO���C��l��É,1�3�4�<�ϭ|���@� ���� ��P�����{|��3!�D�>��9Ld��#M'l����6�ː�t-��}UV���X`�RK���+���?���`c}���Pj�jа�� P}/h���]?����?�l�_���ﾸi��by���=�9? �~���S�<y�RP�yvcg�J4v���+�K�
��f����kV;u��s���9/��>	Mݭ�ߣ�.�tY��YS�����%\~��/}���چ�3�#�<��V@� ����J�˗�������2��Ow@�N�x,��`��>}��tث�0�����.��nnJJ���;��H8�a"(���H�%1��x"J_�4sD�	��|n`�=�iNKG�ԇAg���V�Ƥ��/�E,	�����P�����C�{Vf�q���N�?�~��D�]%����	��b<h��� ���z��������� ��a�f	�u����XW�?�7L�{Wլ$kQ7������X��r�@Ǐ�5&�t}�˄o�.��q�E���nN�a�)v��{r>��r̀?K��%u�k�v$�J��4QH 2?,�	�+K%ʢ��f͑#G��4d�  zƘ����ӧO?e���@h{v�ę�ٳ[�g�*U�)vg��@������ ,9�gO,���;H�4����m"=�A9��m ��y�o "�~TP�:_�#�(͇���|�Q8@�p�����Rq�!y�?IK	e���0 F_E8.q��҈e�ӓlf�z'�G)��."�(Ih�$��ːځ�D=��s�8-���A�^�{Qlo��I��y�lo�*��R+ў�� ��?@�F�l'��V�ܲ��^ظ] <��yU?&.A��c�=
-���r�����9H�����A-s����;�?������SGR��,&��T�خ�ȉ��Ra
@?�����h����]�! �RJ�Ak������l"�t� p �UvL�5���v&���S��r�Zտ�v�[��jc"BP�I��Ӌ�<�wo¬�DYea[�n�3�e���)$c��-��$�@�6`� ���&y��!��;��:?�w�A���3e�b����#ӥU��`y>���J#e�^�Y��n\h�����G�S ��-�ح���R�)�}Q�.�@��v$���`ݐwi,�CX�%k�V��c�y��
�������ũ�#�,�1#iw6ny-�0��^#$e�ۥ��>a����5����c����3�1��m�  {��Ʌf����
꺞 (�R����}���V6[8\* ��`!`�@)5�{C@I���J~��c���{`� ��P�'�����hIh)r6&�?jb��<���iG��1p:ʐV V.�'Q�x'��b�0!�����ω�"B@n�ނ1��2���.XQ����^%�@�)  �(�a@ � �5uk�3�s �@�H,4�g�w.� >I������ �=e�N�KD6�@8v����%x_��h�y2�pn�gAϳ��Y����|������^��g��Zh�	�5ާ}�,5�!|��- �� ��ɓ�	p��aTUՇ�x�1摃X4����  ����v�X��R4�ҽkӆl�*�J��|�	������Ul9-��IƗ� 
��d�-n���w�D�(b�t\�4Jc�#�f0���xȸ�ׁ$_q�Wցb~ImB��WhÌdā�r�v�Hw�Uf���A�g�e��H�MV�\�M'#��ּ�bY�br7Ӈ�v�����1��B����l����azj����#i����aF�]��A�؞�40����ǂ;�0�:h�k>O:tv��0:��ĥ���%�n��לz͹���u�u�)�j�H ��=dpVlGY��R�0ة�ȉ���	�[X`�?����~��VJ�â(^���1��i �;�7K��[
��vkڐ-�H��uX��,��_�#a�h��_�&B\���2��U�4��E��'EĬ������e��:J �L�F�#��43�*RS^�'�ԑ�r���n�@,:��PN�N$���K�]euE�`����� �o�p_VR���*����(P�;;;n7� �����8��d�9���Q�� �[�¹��a��M_x x�?.Ṹ'N�15�~�e�
��n�� P�+u���J1���B��.2�`��6Gr��Mv�YcT4|Y���gv��[-G ����8^c�;������*k�M�������h�.@�ޣ�� v Ia<$ ���c�D�	���0"Z�& �-�e3A�8#�[U�T��'C>H�I X�Cċ�Q2�Uŧ�a��>�hR Q���+�(�pN,�P;��R}���������	�#>�n�$�d�~i9]q���Sb��梸�~$�e"K��c)0��_\Y� 杙�ϕ��E����Q��;ؐ�Py{�k����_"%���4�m�_�b����7��:Ş`����'�;W�Z��#:hCd�ٳ�V��l�8�W�i���og��䇻]{
{����:۵�jWl1,Z]������2?b��g���%����Gg��� `��>����d2� TQ�SJ�4M����_* 6L k1l������(K�y���u1���N ��ApFN�'���CGU$$Ռ�Cvf��9$9q����@���[^_&jr��#�VH�ʟ�gC�(CY�3�r({���23�3�� �%��Q�$ef��B �������������DY�����I�w\��2�6:������� ���S	U��Rr��e	� C��_8ʅ ~v��7�3�O'Ko�%�L�Z`���Ť�هO/�c�"B�J�΋.��]�sh�Y :�-*|�b.��� GYw����>�}V)�� N�>����������w{EQ�C ��x�+z�¸��R ��0l���(��� ������wR����m�42_
�)���Q�.�ː��<�"�/�$c��ґF�3&82,�D�V<�.n�B�͈ALI)�pO��F<��]`�%ʣv:�͊�Փ�H�r���v:�O�λ���p6���p�Ql���l�j�r�����8{�����^��8���V�S#���yov�L<�1����?�8kW�w���	J��Ը����^�?B�o���:.��h�= Lj�icP7�7��x�/܀���O�
�0!o��/��U7P) ���n��m1�	 EЅ�`�dܲ�Q �4�O�-Z�����"� �'���񸙝��KM �/�.���� �4kg�j�X=	�o2�E�NK՗a�[}|�G ��;3IE쭏|��l "��@@<� �X0�T`�0#@� )�<xp x=�A�8�2��"%p@SA ������$b>I���W��xr�\�V11q��t�I��P�,��M�Gv+;Y�W��-���{���}g9�W�M�v����L`4^�"B`#�jC�¤v.{'S������ZL��{�����mo����7��|�/�w�#}�    IDAT�%�����XK������0vcD�ɖF����@)c�9s�/j�W]5�5�:��Z����V�����o���^84��k���b46��o���_��?��/݈7�ҍ�'Pj!�$�s���I�|�o�l�;�43&�u�������G\�q�ĵ5=�~Z[<��+8�1���>����8�b ��o�}sѶ;p �+�Ti��o��_q�+{� \j����f8�����N������o���oj�h�ce��4��n1�Q�������(��l�Q�=\rNY��i.F�i�sOI$�1\圻X8�1��b�X_�P]��y�d�	5��#�e���V���'�Z>�Mbe�D>�A��:���S��wD���.���E�� ��a:�J��H�?纙�`0Bc&��N��[� �Z���%��>�~�o?T����U�w�����_��t��ǎ�s����������9 b���p�-����*O�g���@�B)`��ih��%����Q���� �����ʐ<�<*����溱���	S�;�_���>O\�侨��O�ʧ ��֏�X�o����~�0ܒNX�T�Ͼ��i"\��~t���3��~��"��ք�=���NX7��%x? ��d�:! D��R+UU}�ٳg�b�䂆KI ��B������í+���.�2�c"�\윳?�
l�ӥ��e������E� ��M�R.��j@�{& �P�L@{�VG�t �^�P�PXDC[8�� (��;3<
;&��2gC-]9̷,�`�,7]ff������=��6m
��,UnI��o����羶�H�pW#�s��.,"fe((v��Ʊ��kQ8IO��g��l��p���mǔ�g_�8��+��� y�����u(�>�j	Uo	E�CQT�gn,z���E/�ϼ�s8�������0��EQ����o���[[[�W�{�u#n�]���7A�]�Fia]-!��z��b<�O�c��ĩ�]G�q����p���|~ۏ�#/?ޓ0~ά�k	�����3/2zۏ�Z�b@;�f!^�u�pp_���	����J�_��P�o`��,������Qc�X�媉޵��p)
 @��s����c��OLk��*Ti����g`��,x��g��Ԑ�c}��{vi	��c��^`~Е[{UPP�W[� �qr��ϳN@�]�B�lJ��y���#���ŻA�8����Gr����]SW�]`BkÌ=&"�H$�����WdʌD++	l�.V%�G������ǲR���l[ߚ�}p:�o�_�+��O�CbDf}[�������&VV�ᵯ}~�_�o{��'A.�FYVк�.J�������s����?����lon���d��0�?���eq��)�����
�yI�&k��A�A�_LoЂѢ$"�$��c�[;5�wG������Yh�����O�������s����&��q�Bp����0�[�w����Bq��{���L�}�ڷ�Cmh
`h�����,����۴���kא6 n���Q��񕕕��4�Oj� ��!/l��T���A2��'D��`%���pA�#)�0_	B@�,��n g�	bu��X�c��9K���g��Q�e��:��H� ���Ǹ %P���@�a�hO��|?�gB��	����8����:Ŷ8�!�W�b���ee�(e�l"m�H�H���f�2�I���o�����'Y����,�:�\��Ŭ�Rx�+_�?���EQ��{�#�{��Zkh]x#<u^̟áC�p۟�:�nMa��������`mH�Μ�[����P�ǄβSn�"��A���[�⭱@�&S����N��A���m�|��7������0�6����̟g���8M��i1��?����hq�����Q��'�S�*�" �,����M#�8,6�F���X`���7?��O�ۭ^UUayy���NU���D4@'����R3�`Od�@;�ب:���ַz=�<�rt+��y^8�qeA �Tɑ7��8�	L���T`d91=��2b�@���%��� ��d�2C��˼8I<Ce#�$2�G%��
�w� ωI��/s��[��d*I0����;`��g��mY2��.���$�B�xNgr؍Y_v�e���g+(�,�(+eeU�(���y' _�{�o�nl8^�l���RA P~M)`m�L8�G+��	�1]�1�n����  -��Ο�`x�̐�1O-v�;c�������G��Q�6���Woe/�׮��:p���dZ[����t�� ~��>�Y�4��
!GJZ�q*�JX	P�
_y`c͒y�:��w d�Y�����)�TYū�������k�t~|�	 �[�sF �-��566ͨW�r��h3ȽЁ��� �S8(�J�w�ur��I3�KH]^^iE\�K,SIF�{�BZ��f�A"�y���d����KӲ��VY"R|�����i{��ia�Fd#v!��18o��m��c�����3&�~i�7��|����`���>�l�h�;� N�X__w�_+|�����p�S�F����T.��_�zFj�W���>��e����7�.��/"c,��`<m0����؞��?��{���Ԍ�K���$ͤ�'�92��c��~��pl�7v l �Fd�#�3�1�^�J��\�)�����Ƶ�^{#��¥& pc
�`�7O��}��xR��L��xJ����?�c�_��[�xb��k��8)���9��u�"
"�H1l�� ty%���-��p\@9�/�91[Js���2� ��[u�t��� �-���K���� b��	|��sa 'x�.�č���A�3<�|�g���s7�{d-�1h�)�f�z:�t:F=;��~�n�xA� ��r���w ���Q��i��v�?'fdg���b���wd�W�������o	B/��(���k7u�v>{5������mU�6Xߞ�m��Ő�����n6�ϓ�&�!�$ble�ǿ����}=������F���{��ol ��i 8��*kmID}c��y�@�?%;�.���Ŧ�89�����(^�ٕ�u$P�%����}�)#q	S�ς��{��qԑ�����,;�$���$AG�)�n&R��$WT�$�B�S��t��v;�E�[h���s�oH��3"�����)�J�d�	���/D���z��t��d��� ��6v�nob���81~.v�������f��y� �F�0�6Dn���}	KB��:Łv����| �V(
��T�U
�J���BA+�^�b|�+��B1��1'��/|r�t��z���M^忱=�ۯ�����g>���@o	����t��L.Gl���M�zU������T)u�Z�1����Z�� ���
 ��z@ADKeY�s]�p)r �� ���l*E�_y`��U����HN��R� �h��ݙ[�:ӑ7:��ӭ�(Xݱ���@05��h�H�ɽ��O�|:2̴�?~��2C9�-#;~��!�f���B�Fނ/Lj(&:K{��["��|<����QZ��[����� t	�v�0�rL��Eܔ(�a�)>�4��u=�n���o�gCtM������DM���z:ESO1POGh�1L���n���V���rŷ�=�xL�@�� ��8�n�� ��z���ķ?o[`���"u�0�f�B�zN{���}Y*��K��}�}�O@TƢ1����*����QV��
����|g:�e���R;#������W�	��O�ƻ���N�c�����7��Ϫ%"���r�����#���-H�� �}�[�rh��U��UUu�i���R_���&}q¥���� �0���g�ͣ��z���f�|�0�}���@��N�;-y�k̅���WG f��a�>��R����-y`~B�Zd�(�@)�+�!D<d9`	^�sY���� �!ҷ�m����P��L�s����$W�R�3	ռ8��xo����t��'|�+G�@.R�~�`�4��)���0���p8�`k�kX;�Μ:��'�׾�%���މ�?w#
4 հ����V����	8��Kq��	[;�a�^~x+|��ƾ_%� �]s_R�B�Jg��Y��+5�z�-�8�Rb�J�ե��U��6൯���� ?��?�`�����d�~����ϟ����-oyKX�y�g�6�j�� ңYcJ�ZN��B�{b�l�� ����?�( �;��E�Y���EQ?���t�Sq�3Q�`S)l�t���߼o����Ͷ���[�q�B�� �L�7Ћ}�D�'�;�� o�i؇ ���&�*h�[��vAbg�q�<�0ۥ���\�#D.:$D�uQ�摑�t���pO�c�@H���c��*m�0�f�X�%�dr�:�_���efx�:�`�8a�V�u㜰��_=p�U���Z�5��^=zO<�N�<�S'O�䩓�N&�N��n���X���ԯP@U��-��@�P*���{W(P Y�z:��BQ���L��o�Ý�_��Y��\����7�u�p���م1�BQ =Ҡ>� ������
�;����O~�oq��w��?�k7����0ú��o�Y�֠���]{��ٳk��g?�۾p���ι�w3�3?�k�$V�]5]����bTY(L��O=e	�Y 6��I� `m�bN`���aUU��4ͱ�phv�z�å,  Q`[ ��bKk�o�Fm�ܪ*Tݸ�� ���$�_��w������v��F.?��'�Cyw���7	3gJr&)&�@$�����L���g��$�ԑ�'�K'�B��<��D��}d���RH�7 ��-m���!V�S�Z{i �A��A|���X4Ux+�s_�f�MC�nmv4u�������B��`��~���뮻p�]_ő����yT2d2���a���`'@�-z%����c���&g1�9��p��eTUr��c�V�� И�t�~��@�<3������l��&�ť:�9!��@(�y��R��C1h���;��ێ,�p���������3�g���Ƙ�~55��������°dX[[û��.�|�_��6��#W�f7a��$ifŃ"��iY��z����񑣃�Ɩv��H����S���ٟ=�%�զin���� <�4�c�¸P�R $?�� v�,:7 ���Gn�w�y�śMm��;�=�K�'ey���~P
��z�U�M�3F�3���(�����'��9+O�53kjO+�����@ &T�| ��]#�@�Q0�����&F"�`U~\Fh9���U9��NZ\������h��K��J8�:J&��l(�퇜�_���ruZ[�x"�{�݉��0Ü�p뭷�c����۝��@M�ϼ�cg=�'he��Є� �(�BU��kԶ�"��Z�|Z;����>0�1}h]�6�3Dd@���-����Q�]%��<cR.�ʜ��B�EhH��
�T��z���� �4x���_����:/x�N���J���Q��a�͡ Υ�y�����l�����h�Px!����m�����^?��.�O^ �
�N�4Z�' ����?���D��{�󞵟����"u���*��� �PE�4���{`�.U H?R�p�Zlh�7:>:�=/�@�/�uL��R�ePa��s].���g�y5� �(-Px�Pk� 	fj��S���� �[��~� YopȺ�R8�I|L㛄#����L��<.E�L��v�%i�i^GZ�,�M��[�Ͼ�;%�ɩ�n!��NcF�g��8�k���hb07x��箖�amm���'p�7���'��Z+
_�U՜����2��և��U�O`���%��J��,����-�0m�-�E�B0��0���/�<!I"��` (�����Cz�$�1ߌ3ᨎ�Y��&�d��_�I4"S㿀��x���������8x'��zk���R8�b{����ܻf���x��	k���B�B�_)��O��\(ڻ��VD�|�sgN�0�&Z`�*0���O�v�Z�!��O�x�_�����,��RJQa�-^��,?����9Y/x�� ���n���plO���R��YK�~�t2>"%�)a��g���`�g��3���U<H�����KaZ����a��}幛U�l�O�l-/(���Sw��bܔ�8k��`��a��|>I�5C�I�g�E��r��e�rP��"+7//�2�($�˟U7f���H�aR�c������?ra������ �1���3~V��ٺ�A+�jU�(6P�E1DY(T�FU(Teh��(ѯ�.U%���(�N��6�Z9�~�S�����#!�H)���DMԼY���Vg�:����ɜ��}Ek�
��tg5F��s�f�����G��9�˯/TV�G�?��������F�W�<g�����r� ���z3KV�?�,Ph������''k���Ja� &z�c��%�����  �1�E���)1�& �T �k lX��n�����}Ͼ���ĝ�.l �TqK��f���wE�(ɸ�3` ZɌ�Ϣ���r��
f\������R�W���Y�!�v���\QO�a��A�2�gZ��� E*.��p*#��B��}s�������*�7಺��HP2�d\Gn�h�Ȱ"N*|7�D�D'��u	�1Mp�ń2�@������ث��c���{���p��]w�%�?��X(e�dN�)��}zSu��B�Ў��Y���e/��[��E{��L]9�tZ��nC��T�(lX/�ʻ#f��mD\b�N'~���;:|.^�z܄yHyG{\��_w�]��j�tgHb�;v��t��I����ޡp�"��x����|d|���gq�[h&���5�c����{g��]������M8��V�&�K�5��R��^���Υ��7|;����M�	��^��=���+5N����Y�uD@ɞ�5a�VQ�K���� �PJ���I.u�iB�h�Hkuvk��RJ]���8/L��T��[r��m`as�̈P^�9���Nׁk}���;0Z���h
f�|ԬXg�1!��Q��Wq���3���y>��m�V�5��B�@�P1�e����K�/�us)L�)��9ko!��֎��r:�,p�-�H�5B]�Z֭�F����Y�g�[[[`֣���m�����e����P�cTE��p�kN��mJW*��¥a���Z;�~�F�A�n����% ��0M���1
�׼���f���$j^[���'���gW�]h��V+� �� h�P'�@�P7�}�5{Z
��k���^��q�X�O��=����#������}�P*g��͗�`�_`y��R�@�_�*4
^	}����w���;QZ���;���~�M�e�_{�Q&y��o����X0�L&�^D��H?ι.u? 2R!` �pv�>����e�+4�����{t~�EҜo��p$km"��	��7i�e�O��Ǆ��dx���O� #���$��X�t@S�Uć��<�[�Q���#�RV^l�7�E�D��	|0��y�x����N-FS���o�ڹp�?�m����-/���������U�l_�C�+\����箃�%�Vn/�r���+�V�nO{��ѯ4���|WUe�Q:h	
�n�\ٷ�^�/�k��,��PZ�O*l�&�I���D��.<V��\C�I(����P*�~Oc��|�_)����r��F�daI�U�������N�ܑ�n7Ɏg�[;5�Gy����x���?��֯,z��j�pp8��}%���X]*Я��	}I��qlq��{A6��ַbS�/|�l3��a�Q���4�0��G?��S�l�Ecn�Eb��g� ��Sn��J���ܳ�Fp�@�B�
�%	 H�W��Yb��V��q��QKgA���� ?C �s�T    IDAT�����=%0�����!bd��g~d�A(�AY��E�P�ă�|!]$'�IBQ'��:���3�DJ��#� �6�͐�M��}��&��ێ;|庿�p̟��1��m��-,�+�C�*\~�3���+qp�;�Y.��_��%V�
,/�X�X�4�*Ǩ��y��ڂB�ր�{̬��CUU(��D��. �
0M4'��;vV�^��.� �d�[<�&�Pn�d����wm�o��J�y�J�&�W}��B�?��8Z�p��db��k������S�-�]=�z�-����.9r�"����%���:,���Rk���}sd�Q�X��W��E����
����IklY`Ӵ���׿�Ow�K 
 ���Ac�}u]��q�¥� �Iql�� Zcssۜ��+{��u����&,��Ne�9���q�p
yyɂ��Xط^���Q���U�>�W���D��vm֠�	cM��>ߋO1�RIV �M�������_ ��!��EX\u��|i��撤Ɗ�LJ��yF�>K�Mc�^ki�k~��]Ƶ�pd0��W��.����x�z:B�	�<{gG�pp_��P(J�Q���z�O�S^���,�뭠��GG�%̒@���(�*����56��45��y��k^ڶ��G���@�=JnS�҆ۚbh�� *5l�Ć�XNM�l����~�%��g�c��o{�,�K��2���xۿ�� S�*�Z�J�p`xѳ-�z�;�@k'rI�j��'�L򇢌'p��
��'G�����-�H���������g{�~��#��RJ�\o}�3E �u��3�� lXo,�����v�Wxb���O����a��`7E�\�R�%?��v��.����QkF��|��SQ ����bD��8�x�xY� �[QV �2E� ��H��lB�ǌC b�%��B�.o��O���~h.I�B�6# dȩ�k����1����:��V��+k�_��~��^��^�~���WY�s��Z�Nf�J+@G�6��%�V�jI��~�	~��Z ��tNsD�p��fW;vO�!d��zK-�R�� ���\8M��Ӵ��R���R��\�9������b8i0�q��C�\L�d��1�N��[��uL';�
���b��eW6x�s	��%���������K�F���N�9!+�!�[��+E�*�O�r��~�Z���������g������/[�� L��p�w�說�m��2< ��8�����8}�C���k{�'Gbf��m $v#��d�œ�5G�x,N�쎈*�Bg�H>=��X��G��H���7STʸ堧�  ����v��e!�H!,]�!Y~$��h	>����dY�kJp�9!����o�6�͝����n��Yl����Y��\gv��*�W�]�ک��ڳf�� �i�d��,�<	�����UU]�Z�o���+����Y��|�=��k��u�uBig���ݗ�fYj�_)���[rv�� gSQh��݃`�w�3�N�?t�p�غ?&�x���k��+,�{n����V��{ǒ�{X�Gy۶iKN�#s4�a�o.����ܫp��_t�~����n#��?����?��	�d2��
��֖Ƙ']�L d`�N��  �^7�ă�GÃ+����G����K�����$�Dǎ�Ve�П�y�}�<#�Dx��NRҔ9S��Q��l�/$�S�B<Q���'AQ��3���!��|E-4�3����@I\�^p��1�iMOv����a��X���:�|�ͻ'$�1�6�QN��S�W�\�U��j��f�:a�L0��Tccų;�� ��u����X��"v�.
e�.ﯻ�L_Y��B����Q �v�3�,9濺Tb�_b�3X�G��/��Nًd<���o:�k^k-L�\0������8�^i��#X"\�BXYrƟ�P#�伩�Y���1r�����_�B���N�����Y��]PJ-��R���f,�.tx� �հ1�� �PJ�?~z�S[P�G�)�/�%���%�ݞ}��{�,>��L�>j��C��.�a����L�7K/G����-;�ĥ Ì>���e#)���?�;%0����%�g�F�D=�B�e�����?[b7��'��������}�{���e��h���M��+z%�_�'�<���w�=C��v�����o���e�S�n��Z��ڈ~�_Y����W�wf�	؋�ׁ͇4@^��w�J���]��TD���{2�7��xg?Y����M����[n�����߻�XW�[�W*n�j��x�$k��;%�5�1�D��/�~P):fm����%�t��?���Ȕi @D�s��_��V��)��Q�p�p])u��S�PD��5ط�ܓ�9y���XQ�
����wĆ	'Ǉ���$��S0�S�$�D|KiYI��^ܧ�� Ո8%pR$Cid�$E
#����ng�0IY9�j��ؾn���=�X�-�	˹0����=���  ���@ ��p8@�	U�<��5����J���j��؏���BY*���Y��^�F �>SƈwO�ŗ�-�j��������X�;��e�L�gڹvf����~�����x�Hcj������} ����,;K7�/��>i2�E$W��4��?��UNc@qiMk�Icpfc����� H���ߙ�p���o��X>���2<� ��c���Ǟ%Rgֶ��,��b�,
��E�6[�{�,�Y+���U0R�����8��.2m:��xa���`�MY�����K��hy���"�sQ����6��-�./ҼǸ��B"M �YB����1 ��J��oQv
^ތ��6�P���H������~7>���w�i �6��`����d�?�ѝ8�c��]� dE�J�J����A+�5�^S0�Aw��] ��p��X�-�b<}*�^���},,U�3��W�A��y��G������ǎ�����A��_�'ZU�{�Īt�F]j����A���w��_i���f��,`L��>���g-і��0m�?��б1Cܟ��R������g�n/
�B�g�6@܍Z����Y��я�r��7��/ݷR�á	���5%<�ؤ�]�w�H�C�l�s�he ��������g�Q����r�]i( ��U#���G��ʝ;������!�3sM-�>�����[E��<s{�RF�
�{t��>!�k%u)�Z��;,�e�G4�rX�<L�(�R�=kɒE�Њ3�w�n�`ǭ�~����
^�sd�x���ȟ�iRؾ}���8�]p�~�$j���9֬N��τ��L��n+���FC(���xw�g�ڛ���;Z��$�Bg�����-K�~Oa���<�OLj��q,I��n��e������[o�MLF�X��/� /���z?{%J���or^���(+oG��:��q�+.-O��8��1�n�k�^ '�����6���%�M����~�瞵P������~ w/��B�g�@y@�N ؄S��<p�]gW�%�B�Ƅ�W���-@w��t�ߛ� �@�"s���˽I����_C!.n�"�� ���,��!�	�$�	ٌ>�3>Yz����r������0�`�Ꮲ��������Xx�(+eP(��e#f��_fg�~OL�>7�/�{`N_�̿1M����>��Ŷ����J8@g^��`gg��'}&*�2��l^�s�%@�t"��(�] ���R��J���=�D���1ӝ�K	*W�����ǜK���(��X������ʻaV ^���4���5���ݿ�.<��C�W�jߩ�_�,w���PJ|�����6]�� ����yv/���m���=V�K|����5V=f-N��~>����f�C�/����n,�nK ���U�E�4@~8y@/������GO��=�>����7{"�u����_$�-#��)ď�fʆ� 1\GS2e�ط���1�/3 ~�>$a�OgIL�3"���w,2�:-�"�Mѓmqe�#�)a$uybK�}&��?�1@][��;>��ࣟ������4M��t�[o��|�;@�ċ,�z�
M�8MA������`0 �ݵ�8U�݂ �|�7��f��qA�f��(����-ʲ�̄i�@zoM����ywK�]`r�bU�R�>�(z�c��~9����hZn��-�߂���܄���)�
`�"�[�/���Pk��$��y�9�z%�	��ϒ�i��umqp_��!��յ�{\��ڳ����/ ���-�M� �Yk?���EQ�'<�  ~8v\é|XXp��{�٪
���B �C�p��n�}���@��W�/�VE�*ǳ9��`f���K┪�D-#�(�ϑ� �(�;ދ�0�!(�$pL�£PJ�'�8%B��C����S�\"�c�?05��b4v����M�w��Z����3➯ݍ���߂i& 5 �����q�~�F;���	�EbM���]�/YaM��<�'�����3�xa�RO�qŕT��	ͺsַg��J��t���v]{�4�;��i[��?{od�qމ�2��]�s��q�I�EʢJ�%�
[�we+$�7�+��"V;v� dP %�
Q�ry"��'x�.��9��� �3==}�ｪ����eU���=���o���ee�U����}01���`�		���\6��� al���o>�X�	a���\��v*� %��>E�F�`��e�3ߔ�G��D&1؇���7����R�Vp����
Q%k���% DDB�_H��uQ�$� p �� sJaJJ�yql��K�mmۻ#i(�k]�����S]�@�_P�V�FmX���Er�q�JY˅_a:*��'�{�N�=���v�A�ހo�t��V1v���$2�uVy7�:��n1��<x�?.Հ]:4��~�]����/����e�5�I���z�U���0jE�Y��������G?���"$�����4	)s�3عsDg�����8׻�,/���_�{���2������i�t�8�rRΥ����=�� Xna�!��G�Wg��Ϡw+Uv�
�A��uQ�"t�9�}�^_"��\��g�q94���Y]J���������2Z	�n ���h)�z���H��a������;p�o��J�=m����ǖK`\3�����V0�Ӡ�   � ZK'�*�O��!�	`�����t/��O_Z�>�݂u+D�S��n9����u'V9qO$d/�LԴYd�P O 8�T�
�?��@D����,V�x;���K>_!{)�]��(lc�����9?�\��ϱ�ӈ����_�0 C<��>��pß���e�DdHD1��3�������2�~*�a�,//�Y(�K�/U�T?�m�t�>��#\��HF�H��;��Rg؛��b-���Z�]Yf�� �m")����pU���W>��> >��O��KG�GB�H��2�!��REb�耟#U�å��߂���)��m�#S�8}FJW�����g��s���vy�X@���?���-I��떱Y�J P�;Z0��i)1}b����J�&�����*.>��B�/'�TZ�1e����o�,*����0�C����u�BBa��o#|����3��*��*Cn���"⠄�(#e�v�:�;�f��F��"����G���9�s�p�[p������8y��B'��i��$9�ъKLM������>r��*���:,-/�9�v���͗�8ߌ+�
����QE37�!�~E�٭��ja��T�X���P���Ҁz*�B �t��v#2�΁�+7fHDx����o� 4bB;FZ`����}���9\�lL@�Q0NUe��w?rfi~)?`�4�g���g�����V�!�!��j��9���� �v 
�p��s���]{���B.<B H
�ħ�h/f�hؚtŠ�_�z~f)Uz2}q���[�5럕W��=�?�ru���Db�q9�M����M���KS�K���Ŀ�y�*J�ge�"�ͮXW�O!˔���S��%k�R9�,G��x��gp���f�Њ��A�@"�	���anv�v����*Z��#
������)z�Zm���9����x�Q�DbϪ���m��{�RJ���8�C�Sn��X?As��'Ak��J�~���Hi�6%�Y�~��Ks�3�\��a\�pz|���u��h�@�	\�WCC�����R_��
�/���B�2b/ߵ�r��jHdJ�ݏMLH��Ja�/�;������s�/��/}�K5��j��f��L��`E��2m4��I��T	 ��h���R�����'���(�΁�����W�A��y_�ۮڕ3��'�
��r����ؾ����Q�^��2�M94��H�|��$
��s��UO��S�HN"�#l�o?k/��T�(�cvz�����eX�j�G�U���e|�S�Hh,�m����h[�H}��:������*�<�'T��sqq!�E���m�Y*>c��U%V���0`CA[�S#�7�N�-��i�w�ޫd��Qހ��W��j%����h`#4܈@)��|�#�A� �g���[��u��{�a4W<��3+6X�6{�̑����������:�)hC�*� "s��^����޸����}�o��������:���D�4��L��'�[�@����`Scgf��N�} Z�5	�:�ψ�m�p���G�_��,8��0�|��O����/`n�,��;|C�i*|����}���9���!�|#z�mD��}+K)e\�����W� ~�ckE�X�4ŗ��9LO���F�hS`W�0���{�[�ojD�y�j#��jqa! ��j�����/T��ٍ���]�|��m��m=��y�ëa��DqT1_��c:,���ޫx?�5� ��q ����H I$��5����y����z�x�g5��8�O7]����Gå�do�9c�=_׬^��σ����v�R
�ZV�9����4����u�E���"�h�+	!�v���~ii�$ EQ�$ɥǏ���U��t��1�X�5�R �i)1��+�/�-�5��
�՛j���2P(y�i6g�W�z�#vF�!@�C��
e�wY��˻�&����_@$�U�MԀ�EA~�@1�x�|˕+ӷ�L>�r팁��Y8�!���$����~?G����˱�����c �ʡH�����w݁Ą�m��86I$�H��X,j��%/ DQ�<\V�=(��i�)���GY*mޥ̥�mb�ɂ_�Zk\��lǩ�"�VMT��4V��AB��: @�o�"��g}��W_}5�����i�H�md�PA�oۡ�\�����|��������n8�G�i��N���Y^� LB 6�����?�F�	�&4��b SSS��뭘��<�_���T�4�I'  �0���SP�R��G�����+�r�J KVUYP~���~hy!� ��m2J�Ȇ��Wγ�I�L�`��v�g�F�:]��.� � �X?��G�pok�.�,�����e�J�	l�NWb8�豜v�CHs��T#��^��^�;�G ���kDR�Z��h/lq���D�Zd���h"i4�1���*H���lsf�	�쮂�Ӗ�H��$p�˓ܮ?!F:# 8�Yk@�dkm�^��Vvr#���mb��dH$)4 ��XwK.��R��}����]���/K�o��j��Ǐ!Q�X��U1��#T(��k�rB3�X�f�'&OAcJ9ѿ=��E�s�� ��	 +�GFFj��9�l6; T���DQtq��|�	��d#@|?�R � ����'�Ǻ}��Պd���h��
��Ȟ��������d�Ui���*��7+��k�h�_{#��]���o��,���H���~h$��p�u>��{�t���^o�    IDAT��ݿ2�(C�6��!�[��w] lqd�Mz��%�:Ɖ�M���� ����O����I��-�1����I@����\���4��5���Of"����|��Sh'���vurÍy%R���j��l��1")=G�@��܌II�)��7 ǁ�������sʕfib�9��#����Z�:�N@L�v�S��oo�Sm(t}Cel��/W:4r�+d9!S
J�{��������_���6q�H���V= �ơ�7�0���G�4� ��Ͷ�헂2q<xp�;��>#����׿A��
� Q�өM LOO��^��V�CK#^3ؒ �`	��X��@a�'zznz�)��ig*~#���V��<�Q$���A�E+�	��x����U\���_U�C �edm{!'��<�bi;B�q񿩪�N�r�z�H���R������������迯|��5@�����݋H�hD�y�3D�ӆX�/����n��	dU�AJaiq��Pߩa�qQJ�eI�3S���#j*}��K �� Y�Od��v��/F����$I��(~���t����7��9!�	}(�>'6\pF��?"��ԓ���->6�a�ک|�b��f)�k㿤C)��pj\N,��t��;n�a� ����j�Z���,&�J�~��/?��c�y��- �x��E�SRb�S+�疳,�����mJVƹ/ᒃ�����?�zz�a�j�iE���pR<g�g��vMa+��x6��D�_�L9ʫ�;�~ϵŨ\�X��3��7���i'XTBX���ـD���n�Q&'�,��9�4Ӣ�������������4����@�v�*��I.�E����۶�@��F��@$#Hٺ8  .ܑ��׎SYO�ʀW;gr�s��=���Q��͞�0pG��@�2B��
��v/a}E�}!WUzz� ��(���	����H�}�^Z�i7�w<TO�T���Ŀ���
�^��?����5�ǵ�}�Bz�qr땜q��!�{�+��n�A�=��1	�?;ݟ_Ο0�s������� ���袋j� TH �$Iޕ$��m�t�" <���R #���T��G�_��=�h$�����!���@�\���P]�C��|��y��s�|���;�m�(��'�\|6��Հc�B>�e8����r/�B+��g�������@Jov���z���JO�ۯ���o�KK��
�Ќ5 �^�^����m�tFF�� �b�2�$��R�������ZL���ؘ�-~W�ަ7%I��IKHi�oU6��v�P��^C-��r���^r�������k#@fL��D�웈�]M|��%��3��{�S�"�k���>	��8���(��E����!���YL�{��<)&0��c���z|�s) � ?��������� /Vˈh5˲�el&l e x���w@�)A�|i|���r���#ϱ�9H��"D�E��
�c=i����R�kfT6C���7�8�s���x׮d���r��ʰ��� K���v�!�/�lx]l a��(�k���5���(�\)�W�� �~��{�Ʒ�pǝw������K��/��þm�#��J�AUnt������_��A��D�ĕĥ�kYp��%j��Vb�P�����V1O����F ��w] "!E��A ڝ9�T��)q�~��r�h�̀�^.PC�U\� �{��&���n��p�i6��}�����K�@������+��r�S���zɀ_�q::ן[ʟd����������!�w��c�W�  B�J�{[���k����6�"  AS�e[ }���#��Ook�.ܥ�Ҋb�(?�-3���	���kv�#|�#z"��;6/���e����lq:|n9��x�!��*n*�r��k���R�skG�lri ����o����Y�}GC�e��翠Ű� �j�F�F����1�c�.t:�h4������J:��q��r`��_����z����;����Ʉ�� ���nw�I�lj�|��* ��Q"0�08K�_�d����n��KK�ڵ�Jo�����(��={����͑`�ƢD���;�[�<?��׭�k][(E��'�����Z����
E�o� �F��|�[�j�AK 8��i��X]]����k�7	���^gm�`:rԤ85>�;6���#�X�� �8�2���6��7�Q�C�!"&�$�J)_���J���g��m�[�W&��[�M�]
�W�_��yaCBD��!c��A��+G7U���$�������w����� DR��m�i�7Z�	" 7�{�9!W���6��m�q��o !%�: ��|0wW�f�Q���Ʋ_ ��nm��)�9~]���v:3ڝo��;P!W�%�XU��&�^�2_G��)R�r�~���˱�M��Ͱ���%��ꋠ)#Dq���U�p�o�T5-JĎ�`�/��E"�v3����WV����$4�V�����]����_���k�"���L����]Y�=�j�F�іM�-�5���R�)�0��ˏ����i!@�D�-�l��|Z������[�����6y��0�"fȟy�b�9ި��u"A��ŁE�ߠ����u�
_t*�yAa�Ji�dY����n���+t���>�����կ|Bh�H�.ᢝ�Ѱ�.Zݠr�43���;#h$�'��f������8b�q���nȮa�d�Za�-�+a��D��ٵDnI�� �ƸBF�t:���F��[�b?��O��pU�3��z��gھ�-���7��>�Ǉ>�!f��ctێ�m+�Ů>&��j�"�2iV����nF82��ݾ�a(LJ��K����7���	�@����ߙ����*)��8~S�۝�ޫ	[�`�@
-:��
g�g�O?qti���Ms6~�l���R��x6�߾��!|�wS��/H�� ����x<0�������zᑑ��`�6��n�鶭�����~���E���rB/�Vؽ�B?%����nX���obzz
@$��������� ����\!S
y���v[[��q4�_>aii	i��>��O�dcP@�� ���*
����q`	�����v6\���*`ddﺤ̟�*4��������F�l`�\���[����&.W{9�MD���~�vY����Ç��}o`>����﮿ǷlsB!4p�ؽ������~��?:{I<xh攔�T�i��%hu�Z*��MpT< � ��i�>6;;�����-`p\�Ox) 0!%N<����4�>�9o8�� �W	�H*=����[nM���W�.X��Ď��$|kx���RX8g��!L3��w_��$X�}=�
�U�7���z�˳�xE�)���3�uayy_��? ���-��
"|�I�#�J # �q �W)���h���]�#eC��pC/�kۀ���Y�e�y0��Ò<B2�r��;w�Ɓc�ʪ�����DA�=*5i`_��a�A�K2�[�^ͱ��7�>����r�_�����%0�!��r�qK�8օ���{�������2�� ��
I,qrr�l|�q(�`*������x��� #��E D�K)���N�S�4¦�0�2sR���	@����'���l�ѐ��nJp�T�j�~m�_�ne�[P U:��1H��=�ȵ ��B �iPa^��T ���+>�p��/�-[�m\��nP¼6�����j�/U�j]��-�܂��yA� �4�	G��rQh�Y�"4[mm�7�>D sss�o?u�j��s�sjy!D���oZ�&��җ�4��u9m�ll4N�Љ��`�޽�yP�����N�~�IR&	���U�('U�S 䤐�
�LG�\2:��n���t�����'��?��?����)�v�mk�o���nx�<v(���]?l.�'Wa��V�	���\�ӊ��ñ#��&P������N��%�F� ������ �Q]-�<��pl u�����K� L*�Ӏ��YJ��{pfa�AJ;�*���{�&��X��R���;��fм^A�'��وl�^�E���X�S߳���&���T�v����{�#<�C��D���t��8B��7G�K�P�_)����MJ�La5�z)���_狋���� �!�$"#y'H��$3�m�-�w�;x�!��������c��u���Ƞ����Б�k�|p^7�[�b��A�{��<��y$r������JX����
�)^�D4�Jz���+���ai5Ƿ���w�:J�Haaa����nz�̋����?ak�!�~����w|�:`���!8?~�ȭ}�ƃ8D�8�����b�����R7;���G���岋' \(�/�˻�r��'�Ô�y�}�Tw߾}�.�" �����~�ǥ����.͑��� �]�'@�����%$\<J�K�&.J����23���4Vf5r�ccp��q�Ǡ�������g����5a�����{��Q�|����"���0d������Ö�vi.YA)��p��T��������׾���	}�/��+�-:`��5h����E�p�����<�d�{�h�U��='8��=�ydʟ�\�wq���p����Dعk7�8��L+���DB��Eowï��p�[U�V�����~2#����{�����y�#�r�ٟ��M{2$2��_��+j�շ�����2ȝ�'d�L^S�[���W�׳��=r�q��s����ON/���̓ ����w#��08EQ��~�v!/�xa$h�d���ޛ��M�[@=���%V�EKӑ>c:����O��]ʳfk�`�J`M{�5%�%�*���ћ�N��Ȥ�׊�A�3����4*�0���gUk��Ӱ|U�ۣo��^ViѤ5�[��vv���7�Σ��'��O�M��;�_���(*G�����yOQᛔnL�K�g�O��q�|&:��DN ]dC��];ws*�V��0
e2����40�G�,��=�io����H�������7o�C?z�ai�Z<�8�z�	���ԅ������;�yQ�5���V�fBs�X �\�ِ�֖��g�I��Jap>�������-X��E ����Go��Z;,����@��J��o��xu��؊X�[̷
=	9ЁBGJ��O�����|�:��S5�� ��L��Ml.}�d�6�Z.K�R���Lˉ�F�t$A�\�<�;@��&�Xv�>z�E�'��z̜��0���F�i�-�~o�A��g� X=��\D3�KS���¼-�Ȕ��Oz���*<t�d���W��nwR�$�m�Z�H�R�c��W��b�s�o��J`Ψ 8a��N$�'�����1� ��>�L4X�N8y��M���q`dO�UH ����	v���_@P�_��:�!nG7:�^�K����qI��ٕ8俪����`�?)�,ː�}��=���Q|�3���2m�_�ٌ �bҚ�{ƾ}�`&�@r�5ɍB�̑��N�sR�Xb϶>q󱉕�:,NG�dr����l����?��n!ccc�a�R��� �{����vְ%X����A� hU�i)�ā�揜�K�8��I��w=�'��E!}�f��=�����`��o��,^�l� ��C.
���ۏ,�u��,�o,�r쫞P)��2��ܰ�,�rO��yc�G���=^�&&&��|�s�����v��?�]flm�$7.`�����Gh�(�O���?F�-�Q6)S��� Mq	�bv���~3��ٳ�Z��% B��[݀�*;��C�
������R�O�K)P*���k˫V�8���^#�^����LOM�/����*�(G3R�pd
��`��ՐHb�T�|�c�����)�u��~!��\&1�r�ޖ��3+�#�V�'��d����u�SN 8 �\s�eu���+"Z%�ŝ;w�6خ��-�؉c�[,�-j���3�:��襇��;���P#�<��ff9O��l ��"��C�\�.(<����@s�^_	p�4@	�"�������5$ ��`5�Kp��^�m$,-�E�s(R�Sz~S��.[n���1�K	?U�������}��'Rx�E�u�Ă��y;��6�I{�������̴�Ir�K��vC�Ȍ>����|����Z�La:��z<_�|#ِ� �� Hc���VH��1��� �j����A��"̼�r?��p����7�8�!Rȳ���Օ%,-.���4Ό��f�a$�1�̱�c['�h+B���Hđ�d�:�j�
s�xyۉp8���5�69�R��N05�Ǘ�<yZJQ
�������g#P��7 4a��[o��6Aq�رbR�����h~eeź%~�a� X�s ~*`67����3s�g|zv!��ӥYĪCh��w��<|�.=���כg�VX1�]��L��!�F�!��kP�s�Od}�`0Ȉ���֝ k������m9A�A�7y��������������;>�I�|�K!J�ն�!i�	G)T����sX�7b�������Bb���v��Fv�ho�&���0k�G�� �)�g�9f���+��ɒj�̒]G���P�T�ڠ����~��gi5��w<?�%��y�^w�s��޻���юslk*lo+�j+��"�4c��ZM�F"�Df���~�����8`���	�nS`(�#��`�9C�<���]�"������� ƍ���/���(���`tttC' dq_��zrvvvq�m;k�" ���x� �!0�D�����3ǖ���*�#���r;�oWC5rC2��C�~3rH�.l���列#�i��Y�.�!v���\�2�����dH��! |&��g�o]��{�1��@$����L�ϷP�&����sP��"¬�W.�͆}�Ǽ؆"�"ڪ��_���O��B0���д h�@ BF8����ĭ��C��ɀ�X�(��׫0�H P��������F�+�|(aG���9z�VW��ʱ���7nB����M��!��#���C��V�� C�F����n)����y���%N\�	`�H���\<xt�)h��3���2�����k}��P��7 4v�ڵ��[om}�A� �<�'��(���ٳ�u��[�ƀ�z0��\�Nj\A���S�Sq�-jaĘ��6��5��|QZ>v,p��@T=�/ ��^�g�s,0�٘�8�;�d�-!��w�v��+�G�"�����U1O�{�tПL���L��Os�#Ϝ�=���v��C���q�����~=.�	��15���ԁ��Ut�� ��/Z(�-���n�E���ˢ`GT�+ "�I�@$Q�  p΀ln@8w�2�!e��.�RJ�g�Q��3��Ʌv������W�s��*��s��g�8�b����e��>�g��/R�b�I��"lk��@	$�@#ֆu��_q�%0R ?��jϣ����R_*��k��� ���2B3����Oϝ��(�	���k�6Pt�c	��k�y{�BVVV011��(��+�<�A�eG.�����m�D�" ���Z� � pΨ&��ӧ���OL�ҝ�8Ks��XY(�8��֏��^5�f�X�`�<w�� � ��1z��;p��{v�'e�i\����?�������F�����{	�>��ThH��v.�x�߼�v<�r�@d� ���X���?��sD����gE�o��c�z�����-�\�^�@F:���"g�l�qι�8P�����2��\��e��t�9�j�,ws|�������X]Y�7n�3��0�F[#m�ѶD#֢�X
đ���& �=��<���>tÃ!q����z�k���(B#�3��{��,�f�A����?+��g�����S���o h��?��K;v�� ���i �Q�9����o~]|  [�F��7�% �D��9�ʃO��\Ȳv+��@@U3?�`%���J    IDAT�o� t�%�1�ɺ`�� J�x�kP��կ猊��!i��=�������Ȥ9"��!("D��,��e�g�������w"c�w��yHi�Ű�O�6kli���r={�W*-¥��0Dw��Bn�,���[��ܷ�������k�s�s&�����I+������#����U蹈��K9܊����OYERa��ܑ�o��翁B���.����?=�N�0�m	��q��F�D�$B�q����W�aͺ-4��p�8���YXS�X�1��f,p����᱕�Ј�x���~����[ ��>�S��� $I�OJ�$�������l g� ����s��u��ё��۷��E��F�Ϭ�{/�G�ۋxVJ郍+�:KX�<�ܭ��n��z�H(�#$��E����[hO�7�*��H!S@�k��~�����������No�'�� J&8�q��vT8	��I ���\�D۰�W��v���ꈪQ��
�����* =�������b%�A���0Npɥ��o\�pyY��H���+�-� ���9�/S�Ͽ>�}����6h'����.N��׾�E�bB����mB+��}:I�1)	Q$�@�!�jH4{"@j{�����O>R���?\�Jyu_3���=���KR�R8����"4��� ^��2Wsttt�m��6R��
�<M��J)���������" �� ��X7�����W�c�]ڹM�л֡J����2��/���%�J ��6�\\ ���
6}
@�[��5@0����u�o�Ԁ�1N�G9��D���a�y���9�Ls�Z�% Y̫7:�����F��p��yD!*v��ܻ�d]� ~�C��^0�O X�i��xf3�>�Gu�;T���f�hSA�'H8�/��B�Fo�&�����R�K.�������u"\��cL$�� ��$�La����3���?x�ؚ�k7�)V���$��2:M�vh&^�Bfn�o*� ��S��>`N4�j���.Fx;&O���l竍U��B�<?7uz��4�	�����<���&<�8��s�[OA�r�&P
`VJ9s�%��β�g[�ƀ/��A�*���3J�q)�����?�*���d�qaj�� 4��j���&�/���E��u����-��՞c��~�P�Ӎ?+���s[��1Aǁn�8���2�6xe7H*��iy��1��	˚f��c���_��A��߻R(}�_*L��h�ɚ�,�+#�6�|��� ������.!�I0��Jb�<��m�D�e��%�%�������e`j �H�B�c�Ҩb\v���p�eȡ��N��#wG!
 ��v�
l����
ݞ�j7�ʪ���O�9���Օe|�K����G�J4��J����`��t�H"	$�@�`��\�`�Ν������Xi)�2�'�B�v3±�U����S N+�����ݯ����տ������u�]�Su���-�  t�(z�Rjfrrr�ڻ!�" �8`'_`� ƅ����-�%�D�#�ȝ 3v
D���h��������0̼�D�ZuU��<=ǭQ��.�<6R�U�������f �trYȔ��K�\"N���H�ks����>�_G�oE�'N��SOD$4�t�<�]6���g^�U�0$�"0�Jj�.D��i+ \yޢ���"IW��C�6:)��pA�l;)h��[�j�?�
X	�yJ>��{n�=��(��@)�g�^l߾=@�����^��%�wD��R�	beT��� m7�#H*��2,�r,�2|k���"dY�~��{��.��h�
�B;!4c�[BR��Ql�I ���i�����pD�zW�/�ʯ�����)�u�c.�bC�|������տE�=l�տK~r�G ����}킞|����aW�%���{o���
����y�*�OL)�q!��Ǘ}���gvnK�H"(X?暃�\~I`����� 」� ��؈yy�@s��,��れ�p��yfE�ʗ��l�B_.X]N��k�W[d��՚�l���Z��]"�<����=(DB����#�"d��I3�����D���19�|�c���S�r�Jf���cZD���ѻ��O[9"�`�cp~ �3�1@RF��|ɥ�q���y������a�2TF��
�%"�^�o��/�d�����yr$"�y��������K_�,�1��h俳����q�����2�d@3�v �X�s$�w���  ���t�E���>J�nS,�/|ll�����A(��V��%������`N �Z�v�ժ���/&)!�"�3B��_]�" 6�*��&x
��pJJ�:3�>b��ݻӄ��o@Aa��tО0L�v& ��<��7�@�O�F�r�@�ys�Ԋ�����<�j�N$W�c|��˺h������ӵz����Hh��F��ܑ�6��4�ڶ�ɧC�cU_iK:4��Cu�-4�>�x�=���A�7Ƃ	+0R ��z{L0΁ddT ������ޖ�ް*4���𫺓ՠH��y�^?�jO��_�f��n�w-�O���}��L�/�� �+��VBΐ��v����KH ��X��Dh��	S��ؾc����u0�b���,G�)1��e���=`Z�?�r����[����J�9��������8`�aNDsY�=��Z��I-6[��_�vN��C� NI���?���|?�9CYn�����En|�hvP��Xo�# ρ�����E��&�7�� 0�����˳yz�ʍ�6����_)-�x��a~v�THd�F��`�m�~���������M� |5Nh9B�#wv�8a�h�NsX����s\
c`�t�N
���W@a�OJ)��+��(��T�|�@7����$����_��XZ���o�sm�o!�2tW��W���MO��(��ok)��{T]�F�`���-s|0�.�׹���ߋ���o=qo7�Y)�HK"�+|�O����r���ߊ�7��p�ߞ�oHv��}N�B&&&p�T }#!D�Tǻ_O�����w@ac,@�U�R
� ��3z�����O�vˇ6u���79)@(pܽ��@_�&6��7�& �ߋ��V�\R@N�o���JL[�~�����͕���\� dJ��R
<���w��\��6ۊ�[��C���9�h�օ��9�i�g�( hwo��$�y���M`m$������fl\	&!s�4xt�+�~e ��Őz�Q5���%�oU�qؤ�	�^_��~9�_t�@-����_á���+�b��7cC�ѿ�V���OhD�D@#h7�����	��-�ןd ~��}�=���B�׿R�c���\�ͷN�R
��g����n���"�MӞ �������{c݂�x��>�@�B��(���?����7����WX�E)��U�3z��CsS�[��Ho���II�ZPk��aj��ˬ1w7qz;�=1.�m��ވ9��g��y��!*��g������\��������c�B
�7�
�����w���o�;R�y`I]_<}z� ���ߐ�w��Do�@:��t�s���R�)6��"�E�k�pR��m��zJ��C��@�-����9����j�ŕ�����~��A|�шډ�HCa�H�vC�Z�_���,�����h�D3�ƂV������I)�G��#n�������V��<sL��0f�_m���oB�u ��$i]{���qf���b�e������_�#���j���C��CS�Jᤔ85��=�����V�86Q� �UVB��㤀W!T���'*�J��ya��8{+	`���_�@��1�/�+`y���ψùh��(�^?�"<��!,-. 
�T��^�h���ĕrֵU7+'}�cTuwF"2��u'ߺwn �[�&R!eaD��'P�����G�%�<������ �Yml!v\�{�����D��[8�IaY�W�i.�/U�Y��j�ŕ7����k!"B��x�g�W�qD��b�?��d������@
 ���&�@�귿��LӰ}����}#���j����1~thvaf!}�I��?�w}�o���ܿ5�k���[��[o���7D X�����Y"�c�	�u����s�	j-AS��pJ)��'�����?���s4�A�,�/�:�'�/����*��rOY�:�uZy�s�������2�o�Vr�לG����8�֕K�:^��9�{�pm ��ȁB͊�2=d���K>l]jyC�G�ua���E��H�TNc2�(Ġ�wA�py9����Z�3	��py��R����;���a��,!�%j�P��C"�fRJi��,G�8����w����'��=�;��^�d�6�K����v����ƶ�_�k?��Oڎ�"�"�J $�p��� ��b}��7]�6����ȕx�g[��/,�wh�18�N*�4���Z�[�_53���?��G����گ]^��W^y�,��ig��l^ADs�^/��_4AV0m(�S ^�'�?7��c��[Mړ[���d�0�~Փu���g}mU�0/�$X>Л,y�E�!2��E���H5 ,�DP9��o	����� �W%��<����W�m/��ː`� �(�e����vG-�N�B��<>�J� B�h.�� �}J) #���l@����i ���z��W#J���X��@�8��T���9�ȿ�����<���can�H��h���N�OL8�51SI��	DHb�)@Cm�{��I���_����ql�Dx�����}RJ<�N�#{��Z�s`����G�ՑR����l�[H��WJ�b�I!�⏃��F[���׍' �`z�#���Ԗ��^L�xa�v+�W��F.��q
�7G�=�C2y!�ڏL:�ۆ����#,�YH�HpI�IE�����k�QD(Jh/����l��"��k��=b�E���C���U�� �&&N���ǐHm (�%f�����~A��*D�����&3��&�ۆ�wq#媲8�Ee}T�7�,�/�����D�mrc@OG����4S���;Jy�R��p��|�)��,S�f
�&��R7�-w�s򣛢���{]|���`��q4�\;�I�$$ 6���r�����1�ՐHS��^����q)����/���ؽs'���^ʹ��<���<t�������=�gu�# F��{��޽�6�޿��7�N�i��F�q"˲��?�%x5�NТ*�K�=�	"�r�cӧG�1��Ji��~��^�������7�X�RGl^��<&r��zeap&��32U���{��4�vϔ��VТ��ߞ��D�������#A�s.���x���t���&o�o9���1HH Z%q�����o�/wg�Y5�8����=���:J�CK)|| xt�ֱ�^5`~��_6�eA8U4C �}iK�!���X��X�z��[jZ���Tȳ���¡��@,��������C
{�SO����ŲJB�Z���>�T-0�����O ���~���s>������/�L@�9x������ ��;�j^p���-dqq�>�h�����q�f"����W��Y7lI ^]�;��FR�}M��5�
)ј��7�?�/�����. ��R���mQ�㷒 ���^��,�3d�-頹,�翪gfId [D�kA�+	�@�BK���u ��o�g3¥��� ��!@$��?m��7' �p�����?���Ja<�	辡�0B�XJ+�ʷ6'2G��[]�a�h�D m`�>b�5n�4�.F $��/\��Y1�HHF�����ϴ�L\ �8�00�J����������>��||L%�IY��ӎ'��(W�TiUQ���w�>V����qgY��}��#�9Z�B'V8o��8ք���(�
�}bτK2�!$���d�#�F�C�2B�)�p1=����O �X����{�n\s�5�}�����������������nٞ�Df�-�}�[�[�kǎ�-���C�Q~��h\(�x��ơ��-�', �=
 qn��j"@�S�Y��;����{��ƞYhT�MZTo� aVy(���Y#�̾�8�O�N�j$������
e��	 )�PRA*���ȕ�"�\���8�Xk݀ )�u��)G�s�^!Ϭ�xL3�z�.>��6 �����N8�&߶�Q1DI�0�s�� 몷�)�,/ciqId$�(��Il�|��̾'lI1�w� p�X"���edl   ���!$¹�3?�3��Q�U�< 
iU�w͵���'F������Ʉ�?�,K��~��|#b��y���������>
U�WV�*ݰw��G
MX�h�@��r�,�N�c
rVVV��tj��B�سgϮ={������������{������!E@@�7~�7���/}�vG��nwo�� �R'����W\�g�yfp�!l� ^}$��, �Ɂ30��:%%N�.e/<qxq��=Md��/t/`X� ��z���)�S���D�V�����*o�0��G���S&�h�`� w������������E��'�|�^:��\o��_�Tq���b['�`���m\G��*IN�:�|s*�z$�u���	��eO��\u�,(�z~4�.�`i��Q	Y�@���	DQ��S��)�7)h_��@��I;��}rt{��
��Y�i��g?��|��	���ъs��m�۩Q��>l˫�/�`F���&|�ٯc�^
	4���B�h����+%2�8����-o�����_Mf�r���=���]����i<��S����R����e����7�\�i«[�k��C�,���"�xEJ9~���3s�l��X&�G�D@��b0h����k-"`��* CR�l�>޸������o��OY����_��@�F���d�h�ݝ�W�y~����~�p�M���� ���N�����aۼQ�{cB�3
�i�8�����t"�V�2ɦ�@0�4��	��0rHF����k�g���}��	���F���E������TǂX5G��V3|�.���u���ޤ���3��Ӹ��5�r����$�!��%r�E��qK��x��O�yִ��6�t!���`1�~ ����;XQ�����������\}��l�fQ�"��ВR�n�馷�-��{�b����$�{�x�e�DQ�� �E �v@�%z�.s ��kO��z��W/����K3�*��I�)�93��",����W�Z����Z��n�Q���b�\<���cE��OyD�)��?'ϟ\�e�`sm HB��L�mgm7o�s )�?���z�}- �y�'O�����E�>\��@�J�@��7Z�&Gx����4A�|p��^������r{�P��
�D�R��@�aո�]X�0��a�$��4����p��_G$r����Nr���HU���Uݩt8�?pzd�ߊ`|W I,�J$:��?��(�/|�3+++����JDW]u�U�|�l�N"�n�߹�K.ٻwo�z�� �DDK ^��|.��T������ɀ.�kw������g������V"0�I�HohzaU�gm�{ѿ��R@����r��6����W�:p�D��y�^�ore�����ߺۍ��V�cc'0a��2�ĆsjT��v�� ��� ��c�N�<�UPL-bǨ�$}���t��+#웽�)@�8��K8�#�	�v�bŊF����y�)���}�����V����=H��������qۭ7�3���
�:=H)�D��,���A��/�ϳ¥|�,9��K4�
HX��?��?�m��[o2�4MϏ�� �*I�~�ȑ�?���l�    IDAT�[tk������{��}�E]Q����q<��s����RJD9M�y~�Rj���oR�7����po�[I�<���1)qb��:pxq~�Q"�: p����
�zX�{�D���k>�	�|�!L~�K4a���?�} ������s�� ��������fϙٟgٍ>�X?j�H�;=~�I�Y�8��n�q��z�|/8E؎J�
��Ъ�Hh���t.D0�+�Tx���'�1�"[$����WX��X�)��T �_���R9�y�����z0D�I�sF��c �d�_M�k>��]b� P�Kd�W�݁V��Dۨ�� h��?��������>	!�ED�m�e��(��^x!��l���s��###;�m�vᰗ9�s�=�����X�O���8������_��	l �=��#`F��]���_\|��g���h �$ �����P4��H�,	��?�D��?-1酄M�}�6T7t8X�k��[�>�[{y�?Z�ΎT+���/<��I�<��\'L�T ����&�x��p����˳�N��6 ������Ctr��+�ɸ[b�D��v�+��#+	��E���_�e7����
dX✕�)�3�~�#����#:��4ŝwމ?�����W!G"2���$ǾNϫ? �ɠ��+����5�- |�>#�^dփy���I!��3D�Dk{�f�G��$�K��'�*�������G�=t� �"z�������f���{����.̃�$���t���_��W�ZG	 ""��R�ټ���>��Ọ����[��E"��F�,f���.|��Ž;�#R�9m���HF�EI������3�y�*��O�CCo~�� �s��~k�Çk�C(�Mf��13��h-"�۬}�o�9�Y��G�o�������Y-N'��0�i�/�"l���u*vCĎ%r���f!$�7�����^v����^F�a�C����I�A��W]��TE���S�ӏ}����]YF��p�:q���.	��W�'��X��cAUH ��Έ��gk=���T�kU@+hFZ*�iE�_��n���4]��������o�=6O>�$����7����8��M��O�?^�����w`� ������hS��ѣx饗�ɹb����ر#����hC�E �~`ס�OL	M�0&�|���x~ai��Ib�� m�IT���a��A���s����Q����������'�;6�vqD�U����Z�?�ow��sVp��(r�Q)o��ئ]�Q ���")����ɷ���sn������T����%0�fi䟘@41#�|S}=3'>����m�従].��J�uB��0q�4>~������}םP��/ù#��3�3�w���8~�1�����6E�\,[(����F��X��Db�a[;�^_ug�� �h�����^{m��t����s��i\w�uPJۦ"�MD�J)��/ޅ�� \�߆G�#_|��\pAT��[n�%�Mڂ�GD'�G�����c��[��^o�(�2���L�=���$�"!��������o�1:=�G��-���|��c����� �� ��ϖV.�l/<���}1�Վm@uT���u�Czt��W(��e=����xi�G"$vD�z5���qGO���_� zv�+�ȵ�;��5�R9N�<	=7�ڋ��J��]�E������4��pO�c��^J��G�������u_<���w�X_�5�R�=�VG$�F�i&�G�k���y�K�/��2�=����;�@��R��s��D!���(�d�`)�C���*�M���,���0�  	H��.1�@���f����H FFFv����c .��_������ٟŻ��n\u�U�����o|�����#�J�v�eg��r��vs�\z�W�-dvv�d�=,�B�#�~��S�~,��a� ��K�0.��\�<�����R��/!ĕ�bttz>E�{� �H�o0�h�(���7õ�� ���]Ȱ����P����u�����矇���%r��!��A���Y�l���^��d��%u�lQ�ɓ'=��E�n. pD_�(��,�����
�U�Z��#S`H�i��	�D��.��#�E�R�X�JZ�DބYl��$�hƄ,�F�B@��6D���{ɕ��ܳ� ����D�F�c_s͆֝',�.�}[
����y��Y'��v��|��+ɲeَbyHҤ��:@ȃN¢!Xyo%4�H�,���{Y��q^�@c �$�mz%!vB�mǲc;�-����y��p���{콫v��9�l����G���]�v��������iW�*dX?;��S�S�'e�5[�vRa㸏劌{q�D �4���aQ���J�|�R��kFϜ9��x�	�}��\��
@#��ݾ�_�Vm-��o�Ⱥu�6���_�mG��w°)�O`���E`��@_ X�EZ��I�I�����N-����G�V(6\\Q�Kj�Y�Uy5Ξ�+d��(%E�i֫Tq����(E'��T���ʆ�uq�T�8 �~�[Dl��"8��)赉�؀��WV�2Gؿ���㸠����ԬXm��0�8�\�B(��;�H:��{v�Ig���@�$�����.Y�x�)�7� ����o߄}�8?&ן�k�o���vS*�y�L���L)cF��Q�'B���v�� �	���N��r�����_��G��J�9�Z[		V�w����>�K��Y�d�wQ)KƆ�<j������C���B`
eå= �(��J��J��3�F���֭[�R|��	u�M7y�2<���s�|~��ӧ�t�5��>������G�s���w��]I"a���Kmcf��j��H)�J�i�A�� k�\!@:�*v����Z(��{j�|!n������ ������n�3�&g�y�M��x@�y �Բ��պ:��N�E�6mÌ��苄�[��}_�ĉ*�g���e�B8|�<2nU6Ͽ������6!�f6Ml��k��;:�q\.iG*�����]���uzLCv~S��������F���	D�S{d"?�^�?�w?>���Z��"��
��x���
�T����!?/��	<p-�h��I��#�L������Z��w3�'B!N��5�8�V����a�e�)F�hD,��C3$x/1΃1��_��a�R�a #�r���*GQtME�
���u�]�SJ�"uYKKK�����n��φa��ĉ�	�������������m�v��Caii)�Y���������[�28+�,� ����!@G���)]Mzr�����448�hu�*�c�,�H�{bJ1�V���eUkr0��d�پ��UXugk�Ht!��V��f�I]��
Μ>	
đV��f�lVe"�@�PЕ6 �X@`�e�٘"�+ t7'�)#�;{6�ϕu �j)��
I��ʠ&�A���� ��°휶��$�*9��c�e�a�:" �	҅p�F��R�z�/���WJ��~S�X�	&E��U m��S�T�Ql
�/�ud��yo����O�P`3�»e�iYL�����-b��seae����]��y���������#y���M�� �8��y�<'
Iy�1 �T��hJ����RqÆ7
��\.W��r9!� M3���?x|||�,3��8h���?����?��w����;j����A����b�x�Z��z���L��,���E�� @#�>O�w_(G�[�x����R ����0��f� +�x`̯[� ��Й7mۼ�ԣ�:9)N������0�C*���AU��� ���c̊�v͉�5��ٌ���t�K�"��ӧE!�B/�������1L�pN6)�u����f�SY�1�d�>L�+v'��֥w�mz`�Z�m�ل�G�3�п�w��_9�r���YwAa�8�sx����H'�S�	2_6��^O�������Um!���1��k���?T�4@׀�=S�iO"6��!ާ�#94$�=M���)h�:�y�� �m�ͧ�a%�R�X�(�J� ����h>�ZZZ���r�q��m�R����	����B�}O=��R�̬J�D����x�P�����'���t�ѳ�>�*�h�X,nPJ)
�Jk����%F�# �9 $� �$?�o���-��^�k���P����<%����K���Z
)_�.�B��W!��Gl�Tŉ�M�҉�RP�� ���"Ӣ�k���������;b&�"9�rcs�IK,mr�.�~��μY�]��xzB	��0�Ԕ�����O?��O���-<M�5}J*Z��P����?�]h��t���V؏�.�id�9�S& ��݄4�oMB �׫\�#����7K9?9�آ<1�7?�?	�톇r%�{��)~	�) 'I3�Y�즮 P�^�j�i�G T�(Z� E�P��(�Ŝ�radddc�R9���g���v81::�\(�[_��d ����?��w�����:��?��?4m�V�G� �1��}���.b�����G�����V� `�'i$@hV@���Jt�T�5o�}|b�D�_*�ڕ�V�U� ���@��e��Y�[�_푀dS��w%�(t�~�gkgߝ���BE8v��q��Y�R���0Nr������&�Fk �j�����1�hL���X�����\��ʎ&����b��`���[�E�H �`l潢 x������y���|!�"@ZJ�����LU=݆L=��5�Af.��A�k�
d7�f2ӷ��p,��,�äQ0<�!�X}i���N*��d�"��e�4��O�Ј�JEE �F�AaR�R�y�W/�JJQ
��Rj~||�r�СҡC��V��
����06<<���G���������?�]�ve7��y�y6�.`k�@_ X���LHW[E���B���bV�(xjj馷�~⚉���R
m�:��������H��d)pj#$�4蚿�� t쳽 ��^�3+Da3΁����P���!�r�4a�YT  �$%�9
����҉��]����+��	R¤���r�1Ǉ���MH��Ob'�Ծ�������@��!��F��])���&{�v��C@H4yA%8��W8�Ō\g�v������@�0dۻm\�>� �_C�b�Ѐ�@)�����C�/A�8�3���@3���o�:�0 Iz6͈���H(]0�!�l���TL?e �.�M�zfV�lџ #o|����/~�k��o��oR����J022"����0�[>����i+��Y� k�\��lt $@t9{(!��#��sK����nٲ>�+�Im�pyWH�|@�,���m����I_�-�ʯ3z���e�F�^m�a���� #���Y Q����&Z��BKN�eLf"�Mݚ Lq"���S�V�Lh�F  �|c
KP�������u
��V�<��@2+V�0̟%�B,#�/IR��~�xz�@��y������$�� �����M��:2���[�Z��-� X��r�(��'1������L3' ��9�̑���o�:�j/����B&�C��&	#~#�9!�/=:�7���	 g���W���v*��j���?�k]`��O`�_�VM��?g�7��MNN^�q���u:إ^xO>�dj���HN)U�<��SB����+J}�ʡ�9�֕f	HO�P,�$��+�z��E���6m���, @�\�Z��8g�Gn�a�H w�*���S�e�W��p��d�BC�`.����� �����!�����k(�,#�N�ie�-��t�����gIfH�j��-�J+���5���%&f�G_��&����(p�mQ�Dā+� kf�w���A�o�sQz��G0����g� ���_{��u��/����;�Y���>��р��>�9��c���d�?[���uδ���g�����ހ����<j!˿�9��0��P8�B��ߦ9�#e�S������M���N��v� �J�s�=�����t���s��\�y>%�1�R�鱱�R�c�W�~-��O��n�g[B�V\�� gH�$�B�D=P�{j���B��:�Ъ v�l#g����-���j�)Q���5�\����Jva�7��b�I�5���Pf4�� fAvQ��3�DP���7�z0Sf=��R�l�X�XCL	Fq{���mw�+nN�p����8\������6����Fx������5v��\n/�fN���{�̱;�q_��96;���sB\u�����c�y�j*�ҷ��6"�"���h激���}�\�o�t��e�S�j�k]d���[�^�?`��o|��w�=�m';w����Tv3+���|��^����裏�y��# W"Y	��_�ċI ��U���\������޼��M9�:UN��z�F�Zx��j�MO��cn��V��»/l�})'2nڋ���2	t�d���2v�c���hG���R��� �3^���j�u��x�x�JW���F*t��0��Ds�6�m�������oP9�(0}D���S�4�Yd�pF��JP-�9�H�G�Rݭ7m�� @���w{zlĭv4�K�g�	�P�������JCZ9�4T�������A{���������q�K�!Ӯ����@-��+����7`�{��{����]ɊRJ�u�]�����#f��<�Yf�ڴiS�"<pMR_ �r�]�	XG����6	�RA
�(�=��|�6ܸq4�/W#���-�B���>V��h�޿L�}( bH�ywgn�f�
=4t�%��������E����l���3��2�U\�XZS@Z����ߧ�
`27��:�ᦅ?J�";b�������B��>#(��#Ýbg:���	�8�r>��@$u�db�I����o�܎�:W��гP����w�B�>�o�)N:�hd�?A)�Ƞ�����[�g����)�p��H��砓�X��v̿ӈW��KѤ	�Y�FL X�����_�������}�k8{��3y||����L5��FQt�^�"��/ \��p�	��*2g�Є@T��h�Kю�C�vl��%<��~7��̘M��_�d���h��� �|k�U�=��e����������Nж��P�%�3���Z(���9��'��jj����s��IbÏ�� ����B�鏜������k�>.u}*��rV��Łt.��G=��c���7�H�S{�-�Y�}W��*c��n�4g�X-���
n�x&�)� �6���wߞ9?�='���a�6ԯ[��t	]��X"$9���?�aÆ�o���n;��j��{ $����8�9`���4��u�]9rd�;�Y� W&�K���U�o 2΁���R>�7Xz���������b�5$|a��h��p���?%���l��0�*�e,�}h�W�ȴEs�fj��%���h�*YH�%�$����3^�c�Nb�m}�n���4��ψ���LD�}8u~���V�(N��1˒�+�G$�O���@�y�P�6��i�?���yϠ#F���ƍ8p�;�Ͼr��3ۻj�*u���		^�ɽ��S��y�3fӷ�}��~������Fr��GfΞ��q��9�o4�富�C�W��rS���X`ݏ�ȏ�̟�ٟu�w��bqq1e�cf��KJ����Ap��G:t��/ \���/��R#VH \���S{�o��7�m.z�]
uL� X&��-)l������6�U�a�0�� &�\�mܝm�glm|	ZS{a�.����ds�Ա�� ���<2 �E���~z�����=�������$��ud�ˤP�nW5��)FKb���cR:t0���0+WS�m57Sv0V�to?��5Z�A{�[ �	D�*2)�9en膺Ex(��Z�h���./    IDAT%��R�T�X�Uj\�y�;D&lOb���=Gn	C@�E�6��P���������B�R8c���濌$��u�[k��z��� ֿ�-o���k	���������Q*������3 ����;V�ڹ���/ \��یt%AkP�O@ B�8[��q�da���WB(������X��o +�ɓ���v���ȶ]G�@7�|�P�Ŵonk�6Ɏ��_n���|־�5"[�8�N�C���탾���T{��5	�1#q3& �K�T6H	c1RC	��}N���I6�{l3���˖��9� @$���'q�xw9���G�+?uS��	�o��w`�Y�ԕSG)G�GF p����?S�T��3ɇtJ� C$06����ҡs��K��%"�V
g=�L<���a���:���g�C6��0���nݺ�v����n;�R�S���HG2ڨ���aRJI�� �W*�9$eܯ� W>������� ��B 81]NL�W���}l��\]�<���f*�ŋG/��|�H�*���`ZhF�;��=e�/Bpm�)�^�P��Q�V��,ƚz_+����q���q�ؿ��:X�&���{{��eJ�9(K\q�a����)vdK�EČ�����;���w�y*#�A� �<��B	Hjr����������y2'����yK;�����u�BB�yk��S��"�S�{��aϑr�#�g�	S��4�}mx^ ��lh�Za|Vʶ�Z�� `�������o�}������{/�9�6	�8�i":y�ĉ89ەD}��#W��$�� ���̨?�o�~a�q��>>26�T���kz%�6Ǟ�q� �����& 77����f��3ML��m�Ƀ\ʚ+: �-���Y���0wk���e�e�?O�c[��E�&��h�q������d���qI4O�j�I����Uƿͽi�9�e٭ڧ�)I	�੤Ў�1�$�$i��8x�;��⊈����B>i��;@FV��h~���)��b���W@#H�C>�����fgW�}���R8�i���/ ���q�/'�t����]�z�O�~��C�vr��1�{� R̟��!�8�᷄����X[揮����!��k�0h>�	8�'��Q"#����ן���gJ�(�4��sғ���e���i����j]L;0%+U;6�����N�ݖ��]c��� ��-סT�R	h�RWG��pk���9�tKSSSPJ�ݭ�t#�=̭�&S�u�L�jC3����i�VS��I�xQ�f�=�07��M�ۚ��s1|�S��{&/�=K����se?����O��y��%vj�����g�rzv%��%���f��[�ϡ������vO)�cpB����Ϳ�tV�����B�����7�����������a��'�k�L��!��ax��k�Y��:Q���U�\$���@�L\Pg��$P"�~����'[�o��1�F�`��[v᪆z%�MLM΀Yf�h��y�zck�<m6�LI5���iA�BO��|�D T*��w�b���-.�4q�3�{�9��'��u3����(-~ǣ'����̜P�4�ۏQ�hbM�������	hS�����I 'ɔ����� �_}�8>��74�M25)>܎��ܺ-��wZ�M��#�<�A��А?�SJ��U 8l<��{��ﷅx\O���5��B�$�r۶m7��ox�w�ѕ����%<x0����zP(V�R�%�����z��G]�s������c�?�8��m� "����*<r�V�7�2:14 �ސ&G���wV`�ܼ�1D�d��ۆ�c��ݗllf��@��䔵%�i�c�;��uCF�ZM~_��P�i�h�F+�eL���3O��{&���c��)ĢE���=)�c�F�G�'g��h�F��z,����� ���_��Ѭ��o�ġ�����}����-��E��׊R��E[7��갍�{�P�ig�Z0at؇�	��O�M�[�
�S �@3��޿S�E�j�k���ߦ�]700������;�(v�	3�ȑ#������l�B��)!�!f>���;s�Lk����K�j_\�AB�7�5А
!Pc�ʡ3�:;޴cd]��y�@AJ��B`x4�N_Z�D�� Z	�����֚~�gk��=��Z!��æ�@(�˱z<L��1�g���R�f��.
��J	���Gz�U��d���A��q3���-p�;��IZ#,��� H��{@����q����98�l:n�E\�ˌfߪ}�̶�f�m����B^`����t������Ų�gB�\/��*�Z��-$�!���.��m|�{���w�q�5�t��XYY�����!�����(���\n�s ��R����G�Yk�PO� �~rр�E��*�0J��@*ԅ@@@��j��t�7�4������+�����V�˨)���smF��A@+A�1�ѧ5}{IhB�&jjӞ\�)��"x}s�f�F�z��g��D6@���sς����M0��U�z���.2��v�����K�r@��xL��{&$��ԑ��fp�8t��̉w}�$~��_��:S���)�}��̿��m�2�8ɏ��>�{��Wv(�'p�0��/@{�[[���%OK����8�y�������_����v����������a�\�`*��ǉ�h�RY|��G���D}'�W1��]�9p9f8�'�p\)#�cAȇ�9��oϑR}d��@�C�A�@�vq̸�q��uֿV΀�
ek'��͞�QZC����)��wOC�4��q��_��R�*��{�nX��he��r,�:/YJ��'8$��:N+��
"��k���Hb����@��{�z ����mz��y
:!�3�T�����R��w��O�����R�?�ƑAM� s"}�@if���3B`?�� �{��ϖ�]BR�����*��̿ �O ��������[����Ʈ]�R�? ����B�c v{�75888��~����߉����\�j�v[�:8dX�&����B��+�Cg+���ׯ��v}�_(�#��^@@q����b�! v��!�s$��Ȱ]�Z�q'HA�
�ޒKw�v�L�K	�� .��{Ӕ���� R̘�2�?�³{����|>9G�û�̿595��w�}�,�sh���\����s��N������?��ֶ�[��Rf���Y�?�%���M.�A��s��at����F���+��V�CB����7m<��@�.�Z�Z��-���6���|�C�����v��xꩧp�=��4���R�)!�nf>�gϞ�={���D}��I�i��� 8^ B��@
�岬c��?�Ɖ��6s`q%�R�l(���v��؎N!�lF+�?�c�k���Zp��D�h�Ar�in�wE�3�]�;�A�������N����t, �iF����+��;��(ŹM^%�F b�u�@[MQ)��m�8|�{S  |��S�O?q�3��V���*�׃n��;3�z`J3"l˃|g�������B9< �*�s�C��Ϧ��0��h�d������y׾�}���g>󙮋�03Ν;�?��?�m��جB"�B���z.��]�v��*�/ ��(�e� �Q d���/ 
u�P%Ww��T޾0x݆Qd�d1'�Q�GF�&Ď��j�?��96$�A¼c��)�d@�E�Se
FhZ�9�AW�@3щl�`� �3����<����= b������_@A���5��_��h� {� ��L1��s�'��Α17����	D��N�?�"�� 5P�͑ �p��$�  )��	�X*����.,F�	��P8��Oˤ����[���Ux����������u�����_����o�#f���2>���aee%��K"Z"��D���ƅ+���j� ^���$�b� P�B]!P����ұ��ӵo��[n�684\(`��iDgd��!�X6Ц��Y ��g;�g������2W�\�{�0#���m	! �˯ڶ���p�
�$#R�`�P���O�ڿ���p�W��f��%uK �	� �3���t6K����mp��@ ����d��jC[�if���#i �)��N��C>|O��+��U��pPL+���C;�Y/�*���V�_���,g�al�7�|�-?��?��������K��J��Gq��	 ��)�"��~Eq����a�3����c��"E}�O@�I �B ��E��U�P�Ȉ˻�,M��l�e���n*�*�*v����l�}"���$��D�n�p��4��m�s�Y���ǵ���]�PL{����I��h����33��K/����
ܟ:�l��"N�֨�) �y�ʡ���ʬ���D �<����L�ŶVG�XOm��jH���ar �OU���kgO\��4�+������^���-3͡~�o���|��wjxx�k�vfF�����]LMMe5���j NxZ���hB���ꪢ� ��V& �%�I �6	4<�
��JB`I2//�����l9p���g޺al��Q�!DZ��L�/��a�M�p�M�a�3#A8m�O+�͈@�<`�� YJ\�.�,t��NNf����� 6����J��|�	���%�!�.{z9~�I�qv�	-2�ISL��L��y��~.�����)'D0y&[i��q�������tZ_���X?�C(��������x#���8�X3~ �2q�+A�����j���o������}�C����?��\��J)�O|�x��gS��m� �{�RO���V�-�8q⪱��� ��[��?C/ad� �y@�J
X+�X^,E����k�m.n���#��'HFʘ��n�X�荚Gص3k�5G�2��Ze3�PFN��������Sx,m��R��8�u�+<����h�Ip���v�~ل�VL�͹|τB�Aҋ�2	�[�_�C'f{� t��/��m����[���#G� �@�08�al��c{��G�Վ���9�Z�����������J���L����7��瓓�]U�s����O�=�X:�����U����Y��cD��y3'N����UG}�O�(k��'��j�2P!`E*,�%�C�KG�����m��N^�~4�+���da|˒�ҽ���1 ��

l��� }xFr :��A�G""LNN�뺋�[�_3~)��8u�;�zaa{��Eb�W�\�rS��/��iպ��t�* O?c3i� �Ev42����ɞ� ���<	 ��wns����h�Y�����V&@�'���jCʇ�[�95��qA1f<�om�+��|��~V�_�L�N��$����������pÆ����doj?tD�g?�Y<��)���(�<o�󼗘�;J�g�����ڵ�N����>���$`��=�&���<��e	,	�E ˬ������u����v���P��y� 2��b�	��dp����ZT���x��ݽ����j��� �{��7nڈ��^�ߡC7럎��5 �[��Rxl���'(����3�:��sQ��E�i.�uN  �IE)�C*92����X��'��w�Фŧ��6�3]��A SӠ�X(E�3/--��O�q� 4�3p�����B�+�%�p
����_����������� ������o4\($�y!�KJ�� ��Ԯ]�����ʾ2�/ ��9`|� X!�."�F4r@�� �"����R#TK�情���M��R������@�� ��hB�,왘A�f6�xHpЄv��s	��8d����h3�m�܈��2=�:g�C���@ݎC��v��G��r�]-�EG��ݟ6���gC).�� Y�%	��	 ���'���h�E�C��I���G���Gj��R�#���1-� �S
�^��o����l�_��~.�o����o�y�G>��srr����wo�����2>����������</ P�<o���dEǇ��J�
���� �ԎZ�iѢ� +��E!�H�r��Sեs��r�غk&�E?Gh4"�`S�Z�n�7U�1�-����l���˒k�H�d�F���#Hl޼	���0&N}ӡ��Y��?3�ط���^����.��ߡ���o��S��82�}�< :o`e`+8>!..s���7�9�_~��-� �׀AJ�'`t(�JC�əz��c��Rx@�
´R��9��Z㷌���C4{��5�o�� �뮻������������`~~��ۿ�#G�41"�r�\	�~��Nf~��#CCC+{���?� ��:���r���V�(�@�����V�+r電&ǆ��?����Fs^�.Q�K���c "��`�[��i�����QHl�+lJ�J�'�3��}�&�a��c�-� .%�	����R�)f��:�Jᾯ~���&���_��_�#��G^
��H��x������O��A����M�{�,��n�:��������O�����'f���@��G�Փ�����!!0-f����m&?�ݟ�޷��@��W04>>>���|������ԥ���q��A|��ǅRY��{���� ���a���R�R.���k�9�R_ �S���,`���I��*��R�6(/Wd������-�ߴclx|D�Z�h��)�bes��^4�)�BF{�0E�R|�����Ά6�� @C8�@�Z�	�[o�;�fS�ԃf���I�8 �=�$]������Hs�e���u)̿�c�3� �`�	3� ;(	A'^R ^��k���شiS�#��������O���l����AD�)�-�˻�_aV�(� 3��a����
��#s����`��7��n����]�	���w��N4�&��B��2�)f~X�d�^?����}�^5�� }�Z��v+�h@�Fx@��W�2	l
C^�w�z�����ۿ]7q��b�xX�DP2���dk���;�����8L �00��ʾ��GN+�,���E� �� `��n8B���׃HtF���kG4�Rj&$���wČ�&*����#���[�r��讧���/V=�A�(�]�����lؘ{�H[� RV����:��������2�n�~k�*�F�׬/�RW8|�����҅RM!� ��硙��d>V��~��?f>� �߸q�K�V�᳟�,���o�L�V�3��d?�d�ǅ���������S_ ���P+A�.:v
DF�䀲R���A��Z����]_��M���\3��UC�R%�u�Z�X�xK#q&��駜� ��[ ���c0&"���"�	����$+�L�_��ގ��g�O�ӡ-�c�B�%)�#����Y�!��_���K�b���/��wyhogh?ɫ3�.�C��@��=�!�:�~\� ���2�}?�.0���gz�  ��Ps�Cx����9�م����K�~!0C�9�p!c�a}����k9��KV��#)��ƍ7ް~��������)|�S�����S��&��<�JDK ��� ���:����x5��w�� ЧK�Nf�8o 4"�h��6�,&,����?�������7ݶmx��ɂO`��#HfxB�X۸�0��k�i��~�y�� $�5��\H&dPk�� �n]rLXu��������~�Gߎ:�`�֩	Ml��P�o����3�<�S�N�_�#���}h��t�Cz�=1|�5�/ t�j�8�o��d���at���ȇ�ۿ�Q�x�݌��N�_�����	����B0�B�X5�'���f=`���H3�h��
�����J�U��[�o�5�����+����Ξ�-k�>����+_�
��)�o`�����Գ ��<�i":288�855�V�#^v� }�Tj�m�:$5B����X�m�C  �IDAT
� �����V�K[.l�x����6E�a���ᅮ3`5y��0&�ć ML���c�?��L�81<AFЂ �z�A��Û~����ҳ�jű�)��@/v���R���GĉHa�.7�S�̾�{��;�����	��0~�%�H)���2E/%�~�+x�_�G�Sx��ߏ�R�2+�}�%4B����=G�����l�`�� f`��;�
��|���Ƽ��_0�����痠�]ѓO>�?��?���t��or�B������9 O!�Ap"�˭���Z��z�>��kj��f*	�D
}�!�UŨ1�&j����bP:t���i`�����Q�<�C�!H�A�dyׅ�d*��
r���< .��x�uD��In��1��_���^eJ��,�����`ꙇ`�m�|�D���"F#d!�́��n 3������4�9� �a[�,Q�O��ڵN.���G��<Ym�;�2}?3��e�v���I'�� `�>��dO��~g������X����S�l�6HAF!>�?���9��?���C�R;�0�:ɧ	8/u*_�oC�H3��_i���G��� ��U*���o}�{�۱�g�y���'�/}	�J����(���q O�#����y'K/��«��}�O���h�e�) �Y��g�X/|�$0����u�szk.'���+���摡��y�\��"/ڶ�03AXGAc�`v� #1$�>�*`}���ee5�1/z��I>�Z3�f��!�Wx����/㽩i�a	�����Hk������J��?��p���$1H$l�e���WX��c;i�-6��?%_5 @�5�� ��(b���Ix����.\������������v�[7%"bvfw|��ػOW�۶�!��b�X��f�at:�%{KH�����t�o)k"��\���.|��}��J�r���P��z�����?���G����3ׅsDtP)�KJ����Rjnjj��+�_�e�W�"اW)Q�p>>�t� �|`��V0!�f�NLBa��	AXWȋ��O&ߴcl��#�6�)�é�Rl�B ���ƌ����jC��`T
��E�Hϡ6����Q`ey��0�F���B����j�;/^�b�5)���'�y���E�Sb!�]�,t��d&hb��zi�?��7��Q*J �PߟF��2����`#�M^�����o���F�9{'O����VCe�j�Tz<�J��s�z}Z�w��VK���������h��u n p=������m�ݶ��|�M��r�P�\Ǐ��O?�Z� �w�a���������/ �.=���j��p�̙�L���B}�O/7e�1W���0�?���F��q)���X�q6�B�m�����n�qS��yD2�U�"�Td'���lT IF=R�5��B���@ ���l��B�R
2
�������oI��e�� b��h{�{���X\\�/���Q-/Cp�(� ��2�+�w>E�\�[-�e�N?�?��d��l�?hD�B��y�m#�慲�a����1t��h�bq)���ߞ���T*-Ak�V+v��������8 n��6 [����\.7622�e|||�����y���g�����B�P%��J��}������J�ґ#Gl�_��� ��r����f7d0Z�� X�%V<�4���҂���F�3�P��@it�T���1�n�X.W�
EQĐJ%�F��>�+ �6���
h'@_r#��J�P�pp�Ɏ(�^�� ��cb�|�����w�g��,���}�紳̌����u�?+Ҟ��b��	^"u�E��Aww��������+(��1x1<bx����J�rE��r$	�Y	���k�N�R�7o�H��Q�b�.�8�yޱ(�2�"��u�Z�%{M�����0��xQy���3CCC륔!D̫��J)VJ��\&��J��B�g���(��-,,����Y�ʞ�O��@�^I�6h3
���jT����Ha�<��2�xb�,�����z���o���v]>)��"�P*J2Z������W�d1�����	 ��ҙ��YR�@���"�o�y��D�1a�O*3v�څ| �
	>I�	�z[�z�����0�ԎU?AKv��Թ�6+�T�����`�����,pn�^�Y
V@T'�n���i���|��B��<�<Oy�Wp�������Apnhh�R.��=��Vf��rZ X�6�y� "�Ł �FN1(�gϞ��l��+�@$��J)g���)��| ���Ǐ_�4܄e}r�/ �镦,"`_N��]�,����́0.��$�x`z&�Fzvq�����isqxb��F�r�J�R/����B����(��<�D@9_ ����T�%A	m�_ �`�e���$��t��Q|�`r�k�?GFhY;"&g��KV��� fP���{��9���%���e��bA ��
�_	�������l$Y��%��)�����<�J)�R���B�X,Q@Ds 3�3a�]YYYXXX�u�f���RAb� )��V�EB!$�����B� jJ�Yf>���RJ���� 8[�ח�l�RC�?�j�ϋ��@������ !]� �P 0��0��0ʌq�0.�����1I�6o�P������Qߋ�Qo(�b4"��
���U�Mlm�a�P��B��?�P!�Z��)�/�l�cd���>�cf�<Dȋ �bAG,\N�U��Ӭ�@��6�r��~4w���m��5���� �V�\9�!;�.��5�yV��MV:LOs�R�r�0�ϣX,��oY1��:%�8���0;;;[��-��r�}��H2n��
���Bo.�������y�FD3 �J)+�NAp�^�/�J�*����W�� Ч�@��C��zH�r�/ E֟����1)1f�c &X��E��76�"�}������A��R��`xd�
Xo�~�R�	,`TC�JM �P!�l�>����.�+�jU�Ư��2��v�ˋ#�O��������!�� �qMm��*Ar����D���ք��QӞ V�Aox�C�P J5�����ѕٹ9`������J�$���8}%��X��7 �FGG#"
k���0,mݺ���SO�Z���|l$���/t^�1 �B��RJ��O�� V�� ���������@enn��IX������>�5j�؏�$�H=�rP�1f�)�Q#�c�}��X�:P;�\79��r���J*�:p�0p��7b�# 5!�Z%*�R��Q�U��O|O>����9�O
"D�1 ��]�2x	+��6��Vv�M�	�	�G�@��`�A�t������A �Y
e5T���K���m	�_RJ��t���(]��un�������B����Z�jt��,��&�Ł�S�E��""*QEQj4%$I�l�D�����>�e�>�v1��-*�3��D0-hT@/(�Bċ�(+��Z�цk7��c~�ƍ�����a� T�5�F��L&�F��@ �@� �����/�p������>N�:b	�9
�!F�|��i:��Dj���!i��T�]Nms�S|�7r���.૷���l��
0��b��!� �C���j�����|cz�� ���_),C3�e +���@3�����o����&��k�	Y�>�����Ah��}D��p���J�n�$�?�]S_ ��Z�N�7�@�
��Ҩ����@���ĸZ0 0ʌQ0�ab���R<t���ĺ����`�Pi(�+Q�F��i�_��*�FP��K��"��_��PJ�k_����4 �@����^�A���[.����Y�������y�\���L���$;�0�����j$J!�[�@��O��1� ��Z	`�0�eO3�JQR��M�g�k�qwF^�dzk�kr4�,j�#�� �9��@��j���2$�G�@^�
Z3�a1&�Qh�q�+���H�<������p.����a�(�%�D�z�Z]j `����o��'����m{Qn��N� �Ν��>�Wعs��"`	B!����]�f�zY"]�}��V3�[ޅP�y���[ҷFj�ځ�<]�i�(���+�VB��sK��rΧ�rU^B��0v}�bUeh��b�~����.�o�̳�~+��Ϩ�d=79��u�q��%��Z�%P_ �ӕD�WWȦ�&�B>q�A�i�@J�d�~�Ya������h]!w�֡�m���r�Ƈ}/�����m
���:�����{������r��n*XM�{�vM�(�����_��u<���`V K�%K�"O����|a��W��ny�c��7�o��2�ɌBN`��C�T�T-P�(����R$9h�^����Bk�e %���ljR��$���߭�g!}�ޟeDY�Ϡ:����-Y�������/ ��J��P�Q؏E� �9m&�A �ð�0�ì����it��55�q<�n�°"��@���T	Q�q
Ԏ�l��ػ~�|�;�������I�`��`�b���bnv�s�8|�0~�a��V�g�KD�)��ߏ0�5�	�$���/uw�|����[�ݦ�5P��G����y������Zm� ��S�9�AT���"t	�� (+�2�F_6�~��������V�wQ�]���� ��.3��>]-�Ip�
�H� �6�b�1�8#���R6���a(�p��|F��� dr<?0>����3PR��7������@�T���2�R�Rl+&&db�"�Y��
�Ā߀/4�o�� $���1�ݮ�&�E�];�q���<{����|� (U���T��}K�D��he��)F�"Q
��(�){��g�:�Z~iǽv��^��/7]��O]P_ ���D���V��1 g����`�=#0�҂���(�F=�&�Ɔ�Ѽ/D=P(��$M$����HPb������n��� 9!��$
�Āi����/&��R���޶9���RH	-�{��U�}�#�=��syr�^�h�Dmn�-�*^aI-��R�ܴ�m uj�B���|��kkv�~_���UC}�OW3�f"p=�]�L���
�T0`�S�EF�0c�C � }A��1ڈ9O`����l@ey�c!��1mC@����O)z�=��(f��d��Nd�Ў3z�����ERA��k%,�DѺѼ����Z�+ U�.4�Ð�TA����+H~Rk���|��z����'��L��t��>�銤5�l��O���@�:������( ��\��Ja����c�a��h@Q�<� �D.g4����{�mۈ�0��RVũ�͢Ev��(�9@4�$h�-Z#�%��L�C����I��} ��,*Ԃ9g��$��tZ{�L�3-N�K�/L����rf��m�;a��a+v���C����c�k��l�[�AAm�~�pRP�R_Z}碉�N1Dk��Ë�ڢ��;-K�~�����r�k��YY�z]���*�6Y�_���%����Ryc]9�J��T�4�l:�|Zޟ�9 �F��&��(ȓ�RR9Sh�5�Y�W?��$F�$[9�Vfv7Ƹ4�����c�2��R��ʻub�,�W!|~Z�o��W*�WӍ������tU��;�ߗ�G�ї4�ET_������©�vy<�hL_׉����v:��%��P�'��Ͼ��Z��e�I۟^n^(���m��j��4��χ���7���Lkm�FC��X�ʯ��?mݧ����-|?n `��i a�b��OP��"�(����$J� �w҉�V���Ļ޻�dK�Ƀ7��̼����֧�S�CY,c�7k����G��/,Nb�B6�6ʞ�Q�9�W��-v�9���M�����'������v��W����g��鋍�P"�Q
�_��Ym_}�����qB�+��O*�o�q�}j��}^���\I���[� h��^��'yB��I��0��ߧ@mE�x�&KIK�ܑsZJ*c�43�pN.�6续	�\�]����Rҧ��D�M�o���gQX�������C�#`��ξ{~�wb��p�Yy�L?[�~��Wk������n��?̱�_���~c���'�|Iؼ�m���q��  �]u_L�kJ���T8R7f@Ҳ�F��0#�{ct
!}��a��ҹQ�a��;e�߼ڞ�]騵k����/R�?�];P?�G�ȎiW�JAMШ�_��:��J�U3�ϗ������y�Ͽ󥯴�w>f$ �~I
�JA��@
�iQ��y5�����8��(O.�v��Q!�;��BZNuT�awtn�wMiC���q+���8��f;�����z
�s˾����p{�@$ �a��g�d /�O���A:z�g$L���P�q��B�D2���{�랞����
�73����O�\�~�X"��		 p=M��}���#�z�'��ʁ��������ms��Pf��ye >=�*�\`�^'��f$ ��s��5ׅ ]^�p.QH�@~���=��yU��1����5�.��V|~�>�@��	 �~��{m�?W5��;�Y��>-�]��!?�M����S���>��  7�!��\y~�����.s��uM��:%{��# >,7��%�����	��u�=O                                                                                                            ��D�ߗ   ޣ�c'�1I   �D��a�dr!��    IEND�B`�