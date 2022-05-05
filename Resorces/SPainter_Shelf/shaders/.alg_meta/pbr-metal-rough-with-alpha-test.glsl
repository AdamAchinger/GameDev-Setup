        r e s o u r c e _ v e r s i o n       /711d9bf1b2d9d80985c617c9d4aa201ead3a3582.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           0 l a s t _ v a l i d _ v e r t e x _ s o u r c e   
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
 / / -   A l l e g o r i t h m i c   M e t a l / R o u g h   a n d   o p a c i t y   P B R   s h a d e r 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
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
 / / -   l i b - a l p h a . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` a l p h a K i l l ` 
 / / - 
 
 # l i n e   8   1 0 
 # l i n e   0   1 1 
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
 # l i n e   1 2   1 1 
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
 # l i n e   9   1 0 
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
 # l i n e   6   6 
 # l i n e   0   1 2 
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
 # l i n e   0   1 3 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   9   1 3 
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
 # l i n e   4 8   1 2 
 # l i n e   0   1 4 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 4 
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
 # l i n e   4 9   1 2 
 # l i n e   5 0   1 2 
 # l i n e   0   1 5 
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
 # l i n e   0   1 6 
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
 # l i n e   1 7   1 6 
 # l i n e   1 8   1 6 
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
 # l i n e   1 1   1 5 
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
 # l i n e   5 1   1 2 
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
 # l i n e   7   6 
 # l i n e   8   6 
 # l i n e   0   1 7 
 / / -   l i b - p o m . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t P a r a l l a x O f f s e t ` 
 / / -   ` a p p l y P a r a l l a x O f f s e t ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   9   1 7 
 
 / / -   P a r a l l a x   o c c l u s i o n   m a p p i n g   r e l a t e d   u n i f o r m s 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s T e x t u r e V i e w ; 
 
 / / :   p a r a m   a u t o   c h a n n e l _ d i s p l a c e m e n t 
 u n i f o r m   S a m p l e r S p a r s e   d i s p l a c e m e n t _ t e x ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " E n a b l e " ,   " d e f a u l t " :   f a l s e ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   b o o l   u s e P O M ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " S t r e n g t h " ,   " d e f a u l t " :   1 . 0 ,   " m i n " :   0 . 0 1 ,   " m a x " :   1 0 . 0 ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   f l o a t   p o m S t r e n g t h ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " M i n i m u m   s a m p l e s " ,   " d e f a u l t " :   4 ,   " m i n " :   1 ,   " m a x " :   6 4 ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   i n t   m i n P O M S a m p l e s ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " M a x i m u m   s a m p l e s " ,   " d e f a u l t " :   1 6 ,   " m i n " :   1 ,   " m a x " :   6 4 ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   i n t   m a x P O M S a m p l e s ; 
 
 / / -   C o m p u t e   t h e   o f f s e t   o f   t e x t u r e   c o o r d i n a t e s   b a s e d   o n   p a r a l l a x 
 v e c 2   g e t P a r a l l a x O f f s e t ( v e c 2   t e x C o o r d ,   v e c 3   v i e w T S ,   f l o a t   l o d ) 
 { 
     i f   ( ! u s e P O M   | |   i s T e x t u r e V i e w   | |   ! d i s p l a c e m e n t _ t e x . i s _ s e t )   r e t u r n   v e c 2 ( 0 . 0 ) ; 
 
     / /   C o n v e n t i o n :   1 . 0   i s   t o p ,   - 1 . 0   i s   b o t t o m   -   P O M   i s   a l w a y s   i n w a r d ,   n o   e x t r u s i o n 
     i n t   n b S t e p s   =   i n t ( m i x ( m a x P O M S a m p l e s ,   m i n P O M S a m p l e s ,   v i e w T S . z ) ) ; 
     f l o a t   a m p l i t u d e   =   4 . 0   *   p o m S t r e n g t h   /   ( H E I G H T _ F A C T O R   *   a b s ( v i e w T S . z )   *   n b S t e p s ) ; 
     v e c 3   r a y S t e p   =   v e c 3 ( - a m p l i t u d e   *   v i e w T S . x y ,   - 2 . 0   /   n b S t e p s ) ; 
 
     / /   R a y m a r c h   u n t i l   w e   c r o s s   t h e   s u r f a c e 
     v e c 3   r a y P o s   =   v e c 3 ( t e x C o o r d ,   1 . 0 ) ; 
     f l o a t   p r e v H e i g h t ; 
     f l o a t   c u r r H e i g h t   =   g e t D i s p l a c e m e n t ( t e x t u r e L o d ( d i s p l a c e m e n t _ t e x . t e x ,   r a y P o s . x y ,   l o d ) ) ; 
     i n t   i   =   0 ; 
     d o   { 
         r a y P o s   + =   r a y S t e p ; 
         p r e v H e i g h t   =   c u r r H e i g h t ; 
         c u r r H e i g h t   =   g e t D i s p l a c e m e n t ( t e x t u r e L o d ( d i s p l a c e m e n t _ t e x . t e x ,   r a y P o s . x y ,   l o d ) ) ; 
         i + + ; 
     }   w h i l e   ( i   <   n b S t e p s   & &   c u r r H e i g h t   <   r a y P o s . z ) ; 
 
     / /   B i n a r y   s e a r c h   w i t h   l i n e a r   i n t e r p o l a t i o n   t o   r e f i n e   i n t e r s e c t i o n 
     v e c 3   p r e v R a y P o s   =   r a y P o s   -   r a y S t e p ; 
     v e c 3   n e w R a y P o s   =   p r e v R a y P o s ; 
     f l o a t   n e w H e i g h t   =   p r e v H e i g h t ; 
     i   =   0 ; 
     w h i l e   ( i   <   3   & &   a b s ( n e w H e i g h t   -   n e w R a y P o s . z )   >   1 e - 3 )   { 
         f l o a t   p r e v D e l t a   =   p r e v R a y P o s . z   -   p r e v H e i g h t ; 
         f l o a t   d e l t a   =   c u r r H e i g h t   -   r a y P o s . z ; 
         n e w R a y P o s   =   ( p r e v D e l t a   *   r a y P o s   +   d e l t a   *   p r e v R a y P o s )   /   ( p r e v D e l t a   +   d e l t a ) ; 
         n e w H e i g h t   =   g e t D i s p l a c e m e n t ( t e x t u r e L o d ( d i s p l a c e m e n t _ t e x . t e x ,   n e w R a y P o s . x y ,   l o d ) ) ; 
 
         i f   ( n e w H e i g h t   >   n e w R a y P o s . z )   { 
             c u r r H e i g h t   =   n e w H e i g h t ; 
             r a y P o s   =   n e w R a y P o s ; 
         }   e l s e   { 
             p r e v H e i g h t   =   n e w H e i g h t ; 
             p r e v R a y P o s   =   n e w R a y P o s ; 
         } 
 
         i + + ; 
     } 
 
     r e t u r n   n e w R a y P o s . x y   -   t e x C o o r d ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 2   g e t P a r a l l a x O f f s e t ( v e c 2   t e x C o o r d ,   v e c 3   v i e w T S ) 
 { 
     f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( d i s p l a c e m e n t _ t e x ,   g e t S p a r s e C o o r d ( t e x C o o r d ) ) ; 
     r e t u r n   g e t P a r a l l a x O f f s e t ( t e x C o o r d ,   v i e w T S ,   l o d ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 / / -   U p d a t e   i n p u t   t e x t u r e   c o o r d i n a t e s   w i t h   p a r a l l a x   o f f s e t 
 v o i d   a p p l y P a r a l l a x O f f s e t ( i n o u t   V 2 F   i n p u t s ,   v e c 3   v i e w T S ) 
 { 
     f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( d i s p l a c e m e n t _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 2   o f f s e t   =   g e t P a r a l l a x O f f s e t ( i n p u t s . t e x _ c o o r d ,   v i e w T S ,   l o d ) ; 
     i f   ( a n y ( n o t E q u a l ( o f f s e t , v e c 2 ( 0 . 0 ) ) ) )   { 
         i n p u t s . t e x _ c o o r d   + =   o f f s e t ; 
         i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
     } 
 } 
 # l i n e   9   6 
 # l i n e   1 0   6 
 
 / /   L i n k   M e t a l / R o u g h n e s s   M D L   f o r   I r a y 
 / / :   m e t a d a t a   { 
 / / :       " m d l " : " m d l : : a l g : : m a t e r i a l s : : s k i n _ m e t a l l i c _ r o u g h n e s s : : s k i n _ m e t a l l i c _ r o u g h n e s s " 
 / / :   } 
 
 / / -   S h o w   b a c k   f a c e s   a s   t h e r e   m a y   b e   h o l e s   i n   f r o n t   f a c e s . 
 / / :   s t a t e   c u l l _ f a c e   o f f 
 
 / / -   C h a n n e l s   n e e d e d   f o r   m e t a l / r o u g h   w o r k f l o w   a r e   b o u n d   h e r e . 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   b a s e c o l o r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ r o u g h n e s s 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ s p e c u l a r l e v e l 
 u n i f o r m   S a m p l e r S p a r s e   s p e c u l a r l e v e l _ t e x ; 
 
 / / -   S h a d e r   e n t r y   p o i n t . 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
     / /   A p p l y   p a r a l l a x   o c c l u s i o n   m a p p i n g   i f   p o s s i b l e 
     v e c 3   v i e w T S   =   w o r l d S p a c e T o T a n g e n t S p a c e ( g e t E y e V e c ( i n p u t s . p o s i t i o n ) ,   i n p u t s ) ; 
     a p p l y P a r a l l a x O f f s e t ( i n p u t s ,   v i e w T S ) ; 
 
     / /   F e t c h   m a t e r i a l   p a r a m e t e r s ,   a n d   c o n v e r s i o n   t o   t h e   s p e c u l a r / r o u g h n e s s   m o d e l 
     f l o a t   r o u g h n e s s   =   g e t R o u g h n e s s ( r o u g h n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 3   b a s e C o l o r   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   s p e c u l a r L e v e l   =   g e t S p e c u l a r L e v e l ( s p e c u l a r l e v e l _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
     f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 
     L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
     / /   F e e d   p a r a m e t e r s   f o r   a   p h y s i c a l l y   b a s e d   B R D F   i n t e g r a t i o n 
     e m i s s i v e C o l o r O u t p u t ( p b r C o m p u t e E m i s s i v e ( e m i s s i v e _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ) ; 
     s s s C o e f f i c i e n t s O u t p u t ( g e t S S S C o e f f i c i e n t s ( i n p u t s . s p a r s e _ c o o r d ) ) ; 
 
     / /   D i s c a r d   c u r r e n t   f r a g m e n t   o n   t h e   b a s i s   o f   t h e   o p a c i t y   c h a n n e l 
     / /   a n d   a   u s e r   d e f i n e d   t h r e s h o l d 
     a l p h a K i l l ( i n p u t s . s p a r s e _ c o o r d ) ; 
 
     v e c 3   d i f f C o l o r   =   g e n e r a t e D i f f u s e C o l o r ( b a s e C o l o r ,   m e t a l l i c ) ; 
     a l b e d o O u t p u t ( d i f f C o l o r ) ; 
     d i f f u s e S h a d i n g O u t p u t ( o c c l u s i o n   *   e n v I r r a d i a n c e ( v e c t o r s . n o r m a l ) ) ; 
     f l o a t   s p e c O c c l u s i o n   =   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( o c c l u s i o n ,   m e t a l l i c ,   r o u g h n e s s ) ; 
     v e c 3   s p e c C o l o r   =   g e n e r a t e S p e c u l a r C o l o r ( s p e c u l a r L e v e l ,   b a s e C o l o r ,   m e t a l l i c ) ; 
     s p e c u l a r S h a d i n g O u t p u t ( s p e c O c c l u s i o n   *   p b r C o m p u t e S p e c u l a r ( v e c t o r s ,   s p e c C o l o r ,   r o u g h n e s s ) ) ; 
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
   IHDR         \r�f   	pHYs  %  %IR$�    IDATx��w��Wy��[k�m��=}4EҨ˖-˖�7l���P��T�	�%�#9'�I�	9!��@Bh���Ms�&[�%ٖ�.�4}f�����?�=#���2���}]��{4��>�<�ӟ���Fm<�`)��Eh��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��6�h��g�OZ�6�8�{dbR�����g����MO3�	�����}��?�q�Sx��M O/��
2<<�J)��8�qX��evb��r29�{��y��$�	�'��?JI���A楙�=FJi�VJ;���R� ���6v�m��	�{�g.�I�����/�l��9��K�\8�5ʥ�����Q'�T��~������?~�������GGQ"0RJ-F)�E$L,��Rj)�Q�a��ƩISU�(����q[*��Idp2�{!D?�	�O�����R����K;v�m��^+��Z
Vs��K��/���1��k�,��!%X�AQ	2��Ιf8�o���[�����6�Ň�Hk2:�I@+�dRJ�R+���8�q�^w�"!,z;w�4���m����Sz�Wa>�i�[������Y�>�T���.:�Xk��4M��^xǦ��|�?z/�X��X+����B��y.RH`�>l8�D�Q�Иp�P��������/��Q�e���'K��I�щ�d^�e������S� ,۶-zDO�d��M ?>�r/���6!v�$�q]��o��g�Y�Kk�II�����1���,�t�|_`Y_�1��yW�/|
�-�H3��!$�qp=� �()�|���|�!	��4�&���׏��Cw�㾽ƨĸ&q��fY�z��&I����뾯U�*����n��a��*��$�&��?L��M�F�e��ȑ#�S}�_z��nL��[!�J��!�A��椛5�F��$�,}}�,�C��{������{�=��?���H����,��V��ȑ9\?��p�[/�����x���*H������#��i�	�1�o���������F�uG�T{^�i�&���Q�}�׵ZY���}����p����I�M O~���ira���R)e��ǛO����vOv;S�ϓ����L��	�Z,��nm�3�h�,C)AX�gr�I��E����[ؽ�2����{
��' ��	tWJTF�fb�Nb-0��{Y6���Y#1��{Y�+0���>����{׀�dIH8?A!�k{�&�yǾ�߿���A뺱��5&�2/M}��q�E�,�je�y3�T*��;��zrxp�}�	�	��q��O��_X���QE�S.g�^w���t�������W���B�'b]�+��@������`�
���8�a���F�H!�7���1�R����C�%J�#<�c�]J�����h�T�T[�1l���� �+�\���P�"(��#�|�G)�P@���S��Z�C��8[_�L���ìZ9�������t�2���-$�T��OJY��f�jU�U��n۶��������Ip�䄞\��]�Z(��F�w�(���/������ӹث^�*�����r��W���z�O7")��
�2�c�4�[nk-BH��+ݤ��2��5H!�2M3ɴ`��a��$�����·�Z0Ƣ�%�4Z,���)֞ss���d��b8����8J)�� �@
�P
!@�5����17}��W��hW����U���=�{���>�Z-<�#��qB١K@�;��12� �6m��聵�@� ����_�U,��z�s�0����c�]��������{�7O���W�u��"3��)\/����"���c��pg4�?�ƶ,�"1@�3���Hӌz����<JH�O͒)����M���oB��R*+��M����b)�P�'����|\��Kf2?��ޡ1�R!�Rr�/��07{�5�_����<���u����գC�_7Y9xx@eX�H����	%Z�Z1��bhf�U�Vq����?�6~���_ jl�Xv�u�M�z���ū�^�术�$�������ӹ����ʅ����A��G�������`���[wcZ� ��r��w�`fz�\{9sS3��	jx$�&a�Q#����=���ݏ�H��K��`E�ҵ��:�����{t��!$8�n�p]�R���y��!���D^I��8��%odj�p˃t��`�&I�(�st�l�{�뺖w^���^3ј�3�!��J"�B+��Bk�#����{L�Y��cǎ=�sk��A� �cxb�/7mB����lz�E��R����tŪ�_[f;�F�+���[��d/��7=��˶F1�~�PB9������QLFHa[ʟ�k�y�X����-/�P,p��Q�jB�^�r0&�p�dY_���@WW�z=�x�����QJalN6�5�B-��B��I�:GG��qp�Q�P�A�|fH:G��o�V��i:��3���RRHLR'�ُLC:G�ӽ��Cݛ^7��><?�+�HA��H_+Y'�C�F D83#V�X���&Z�@?m��x���Z�����y�zZ����V����-�H*/��5T7���gn�ޓ��o�岗��y�^\����45�8A��dk2,�u^����/UɬmQ��]o��ނ�H�����	i����4IH�:35�f�PJ!��Z8|�(��+��B��H��8.¦��YA���uQJ
()@J�l�H�2��8�;?��2t��ኄ���6��k0֐�s$��<���s�X���#�+o�94�vn�Ԏ�u<c�RBz����(��)FFFN�<�<�m�QX��HZ�TSժ�y^����y��7_�j��z���F"��)�f�G>{�#O���x�Ut�K����N�����*���(%[q}��fQ�[����N��"kAHt�"����$I��DqJ�fdZ���O���E���Â�
U��h���(�
��#�O�@?ւ�j
X���W�Z�t<&��"�F���j����H�8�з�_��u�M�h��c$�(v�ӳ�"fvܹn�{�[6+;4���V�V)�&�	��B �b~�h�?m�A��_�6��j5?Ro��~å�7�қ�� 
1;;K�Cz6�ç��������q�?$r���&�)�;�(�:O�5�!R��左���-o�.%u�a�9�</�Z�ϕK��h��=ϑcX=���B�B���Ek���4�c-B*\�G�>�+�z>6Kp�����V��u\��2?7�߷W�;����囯gxl-J����8�<R�y���N���.�3z��3���Ѕ�׌��7���9p8=f��R�H��L�E�@�fGFF����?�g=�p*N�������y^䭿i��篼�����EVKY��S��S�������;���W}fņk�`��7^����}�u�Z7�R�k1:�Xk�Y
i"e>�[_���͉ mֱB�e�,�m0�00�����<��S�$��P�ܓh��b�\\?������sf(�AIE�X�T�er��RGj�<B��+��e���_�c@[G��J���Ͽ��y�ǚŲ� KB��!��2��҆	�e�m�W8���,�2��4JH�$R ucdR�244���*mo`m8���k������+���S+�������ZJ�:�51�@!�������O��w|�׾ѹ��w�B�-	|��=����Cn-�iY�R��XK�f�~���V
�Z�NB�Th������4BYCIj�8��K�16��Ǝ��dV�_��R�z9�(�����_���"���(�T��؁�P�:D�¤,T��Ů��+�]�2����,���ٛKl2z�=)�<בeX�k!���H��w#q,�{�����<z���Z%�#\Tbe@�R���EzzfDu�:˱c��� O(�-f��u�u�f���6�t����TV��R��#��p=Pʀ1��sw��d/��w��=3���7m����=��ȲlipG�H ��R#�5�jk��$�-���|�� !Za� 3�f0���FW	�:%R�.t��'	�!�D�2O��fFO`�IvXQ6��f��C�|.gs�B���#LBP� �@9.��<D��J�RBz�-� Y���%.)���W�bY!e.�k2L�zXc�iLҘ!��Mi`-�W2z�K�[Y9~���G�&S+S�4�#��"$��y���}�*�"���.��;�a�n��˾<�t��#��4�3$���K�0+^������'{��zͮ��W�w���L��ٛ��������+_�
�V���Z�,˻��Y*�ksRhu��i� E�;�ń5:�
�ØF�c6 .THK���^:G�����T�)v�y���7�r��73�f���[�u)/'����Zq9N�(Ӻ�����a�c�����D�{��
E����gc-�~��	i�P��Du���&pL��RB7�J!�þ�w�U�̕�Z�{CB`҈�9G���ܞ�2W�������Z�ќ�u#���u��_��:����{߉g�U/�	8E��DߠS�c7zy��Z��Ǆt�4��a�(���)�~����d/���z㝳�#����q׃�3���"i��{����ju�0$#�,#������ �!�4i���`2�d�,jr(6\z�T��q�3�Y�����s��G��~>���4��E�"Kg�xU3;3�5��!�=m%#}ŮF:8{U���R�J)Gg]�}v�є�m�^�e|�w)6��Q*���z0JOw7�Vmk�;��α砲�Zd��ńӈ�΀�Xc�t>�l[ݎ�,�6��Ok4Q"��)t�8|�z��^]���>�ݿ���Kc�B�f$D�7&�0-��#G2�mL?l���g������1�Vs]ϋ�/\�5j���)�����&2�qF'(Z�}�>Y��櫂��{k�J��bx����(�P_��c3�JaL+0�8�[� ȴ���'I���e�,1��ȼ[!(��� g�7LV[���,����}w������a.Li����>����;�����d��1>��s���Ǒj����{h���G)0I�2tѫpV^āG��<�m��&(u�V��ѷa���&�fy��Ў�ٷ�[�=�[R�Ťg���њ���$�F:>�P�п�Gc!Zw����Ow�éP���fBJI�P�P(088(�<+�㳞 FGG�f���~�_�ҳ^�6���r+4�H���h��Ji�����w�����k�����ۼq9ݕ�{Y�jH%)Tz���o�lh4_��J&��=������I��GDܬ1�0ܛ2ҝR�"���O+y��Bݶ�ډ��8Np
�Z�F3Fg%S���"���B�`Y|촖����Jo?�:,�"5~��sׇx�����?��ů������sۿD���5��!�(�G(�Be�b�A�w*ڥe&:W|Z�Pc��UY�tbM��t8K��Ig���@����W�����(��(%�<C�f�i������l�&���<��l"�S+H�R~׍���N*�a�GڜÈ�c�Nq�l5��#��]�8!~�������¯.hM�����!�4��Kh�0?�@W�`>�/%Zg�iJ�kP��XK�9���1��Q)%lirxJq�hB3�b�JZ6�]���t� �*)6�����8F���@*IP���!����cc�WkH�/(�`-R
�"J9����T�njj��5��k0��G��Yv�k�����ſ'������_�C�|�e��e�������,����4�˞F�݌Z/��`t��F���W0���ׇ��۱��W�"���?g�Y]k<~l;BH��p�M��W�m4�^^��g<q;���G�z���q�5�_s�[�RR�T1a�$X��?Ȳ�}��O����	�R1�\�Ծ�s��T��h�/�H��z��A�M�����))�Q�i�e7�ל���Lͥ��Po�8��gʵF9.�Zf檋�\��A`�t�j)?���$jP���(�i3���M8}�ec	�M\�@P(S*w��b�5=� �|��q$R*����Z��{ˇ��_�cՕ]����Տ��q:Ƕҵ|}+�Λ��=a�[�N'��<�܀�=ߥc�Z��Q�C\��+t��4D)�������^z�k�?���R��Z�������ah쳅�pJK�ڵ���A��CO�/v�q�U�mC�Ғ�8
ɲ),�R���&�Ƿ?z䳧#�?����rC�s!{��?�_x��p`�^��M�l���v�FI�;��n����$i�N��qjN�c��W�0����G�H��:C�B�H��X�R�i�k0k��k��()I����������t{}�޾.�f�q<�PS����<����B*!q��t=��"��qbS"뾀�LY��mb�|�n|'|�T���(�wl3:KȒ��d'��y	k�I�WYF�$��I�����5)�Ȓ�s�����#�d�fJ��w�h���md���`C�f�Ioo/��U8�y�<�	�Zz�]ϋ�u��r��~�D�Yӌ��a#ߨ�E9FGh��ɇ�p����}����П�3o{Ee����\y�y�L����˞��:�}�R�]�	�r�5iQ���7,N��h��Y�D���tUJ��M��Da����h@���R��F�J��K�Ek-J���#'1y���$���z8^?(R�������+��p\���;����BJ�PyN���Nf�F�b�j�u"�,V��7y��2ߧI-TF6��x���=M��fl��)&�P������������q���af�7�Ě�&�+�Ku~�]34xá��;tS#�Ak�j��6�"�L�]�����)U�g	<�	��?6����]ߏ�_~�7�"o-�h4h�`L��8
P8��Ca޸���NG���{�J��]��*��s��!6���+�13s�u�6���r�r��Ύ
�" IR�U�-�ųU�?no^����(�BPo4��dKCC��\h�&K"f�C�^5ȑ��\rѹ����%$��#�4�
|�A�#��R;8��w ڈ��?0:�gp�3�T�诐�{�����;$(Ga�F�b=A�L��gq��f�E�ͮ�>��ݟ!n��^�Nӥ� ����)���~�aIs�/��>�&�݇��,�kW��,�>����P�`�0B���Q�e=�j�glYP���1�d���S��x�׽�¿Z���њ�Y�ր�%�]���'!�X�����OW�J�������W�����?3����/��r�ױ:�sc���*��(|G21=����fL�oV���ܢk��<8Ή�t�q������㈰Ί�>v�;��}��܋�B����Z���L����#B ��sZ�񽒊B�����[z)�A�Vc��j�D�R������X�:�**��l�l8�B6��?2;����}F'��n)V��_g1&�[?g,nE�VCk2����|3�Ik8�F�=έ\��WV�f����c*@�uݠ�lz���.���'}��x&z K��� ���0t��$x�Wѩ�/TB�h��Y��RI|_��V�-����]y��������G+���_�"��0���_vGv�������<G&/�sx��m�{�6��"�e���Cu��k�j�s�ZVp��7�`�4��c���P��۱Dk)H�����Z����$O�a�	�(/9&�K�!��!� o�u�A�G��%���bPI�t�a$7("�Ӳܭp��/./�s �C]��{�T��F�b&���_�)UrE6i����>'�$Wz{����ba[�f�:F	��]r�*�"zt�P�&�����qHǶ����ȫ��<����P3����lz�������p܌7�^�ju.*��շ��F.������'�y��
u���9?��!�����l8w#�}�����Y��^��}G��ƫxp�^�SG8:�`��=��\|��$I�6z)igtNB9�,;�"l��L~
����+�ztV�    IDAT���CԛI���fs��X�����JR#�B�R�����H���<?`f���)QJ���x D> �u�X�)	�� �ƶ�z!I�Z~�eL���+���$��{s���Mq�������t���A�7XZ�s���A�+=zl�Ucc�����i��u�Ji��6�c�u����I����I!��=ratT5Ϲ������/�5<��'��X�w�c�,~V><s��"q,~�t���G������ީYf������!]�~��я�
��3ܩ�YHJ}�|�� �&~�0"�N=���4��8����� ����~��C����+T��G�����<q��]�YF����E�K��ℍ�nn-
�B�D��q�T��PN��o��+��<ֺv�����ށ�����M&Qꐅs�����e%��H�:M �N#�%����x��?K��s���I�㻱Y��@��i���sKa�9A�)����4�(f��]�����4=�c*@�q��E^�9��
�)�R�o+�)w���]�3�^R|�f�Rh�*�
\��('_u�i5����RTk��ݯ<]��������5��wMrË^Ǝ����k��Ӆ��8���N̹ĵIV��n��[�iT���[���i��BF�e;m�K����y!��nk)�
4�</ �����F~���c=��QJr�9�s��W���}�1V����JGƪ|�_���.�B�I#ʝ���)�Uk�B(��ۿN��ڥ�%R��t���N-�wX,Q}�
�5���x��u+,Y���Jrl;�C���-�.���ǡ�ڒ�h�O�Qt�1��Ln��5c�x��}�`�Vh)�I�2I����gNb�@ �$�&Zn�Ыz�^����h���Da)�l�pZ+��]f����_6 ��;o���ߞ�`���K�R/�|�fyp�^������u�uk�Q���;���3�T���~>�o�0��7���5�͕��L�HpJ��'ƅ�+� �x��y���`�֐fv�%���q]!i�q`�F��Xc8p� B)��<��� ����� n	��)t�Q(䛀\��u�V�R�2�y9P�5������XK��;i�-yy/B���&�:r��D�I�.	\���Q����&��~龥�֞P�SW��V�b�F�"�D���L�߷0-����5F��`Ŋ�.:����x� h))���eq��yے4&Kct�"�1�W��c,���L4�lmB<O25�����t�
:�}��\Ju��~�~ܗ��λ��s�1X��;�����x��_ɮ�b���4�3l9{���)JE3JPF�Z�R
Ǒ��C��R,V���@
�U*?0��B"��G6���!��\O
�G���d���]�Tz��_����$Ɵ�5�GW�?���{����碤BH������ţ��Rɏ� +䉽����KۈOt���qJ�C9��~ot�tP�>L���}����r [N�Ӓ�M35���������������(N�:�X�,-M���$��#Ȇ�:|���mk�EX���R�0��������Yg�gp��R��v-r~>r2'
�p��ۢ�FǠS<�C�PV��ІR��F�R�� iFWY>���'OG��|������~����$�=�,���cj|����	���x����^��Ǧ�p�,�=�7���Q�,���wA^nS��iG�� _�!Y76�C�@���R��;ț����z����7n��#7�|��Q��T�y���'v���w���?Ќ��^P Mb����1zG֡Ӕ;?�G\z��0�����V���(��N��K� ���ey�c�ֿeDS���ݣ�N8���ӕX����)sǮ~�����.��u'y Pi)�	�oZ���U7(�,�J�ǅkn��ێ~���5�k�"���f�iGGG9r�H�&�o�Eg2,���~�y7��2945��A
�W�~F�����D�l�@H�$��)y��ǧ+\g���z�n�sس�v��9��!zF����5It���UxV��o|�=;��+���D\�an�F��]��V8�A*E!���Ì._��!XA���T')���CE(%�6����-o?U��:�h	��=��:���y84��S�yqW�L5�I�u/x'F8��Ll����#;z�2u� �C�9��]�:�,ɧ�}�~e�t�q��ј݃��zWa�L���=����n��9� �
��[�����֢�
i�@����1A~ֈF������Ƌ6���ny�*6V*�1�*� (�(��ڵ��g1�y�(?��9���ߦM��^7�+^y�/����NNM!��
���ꌨf>I���5����8��c�4����]v���5����s.������n����|�[�e�yg��9��$��˲�~�~+J:�������#�
>���t���g":}�8��Z�d�+,��Cn�f��	
�t��`�_������m;�~�t_���歵[���O�z�~��K��~8���^��rߗ4:z�[�}��?���l��c��'(����=���h��EutT%��P$�;�[��f1��6<�Or|^����24����w�[=F��䵘,\�9�<l:��ވȵ<o�
�f�ο`�9����Z���Z�R�,3N��f�bW�j�31p&�1Ni�v=�鍌^w�������M$.>uz�f.�qɌ@k��n$��L�5��đ����|�B�u�w�>�g���~�\g����w��������d��C��۶��_���i�o|��9{��L��zD��?F���z����<���(&I�&�4��]���yk��k��_n��龆�
7�|��޸��s{���Cw|�#��W��F�A4�(ne�q�Y��Y���d���Y�7;��E(��̾��]w9���H�b��	:(�c�Fe���᝸�/���֠�:U�'� �Bg	R�X�!lJwY1[(	�
�`v��z��Ik͔Rb^J[Su݈� ���Z���ۅ��8=�%�l�o�n]'�ˮ����Ys�8DP�Ɋe���x?����ʿ���ڼL,��ݻs���h-���we��B�AwA0=1Ş��\t��Y��ݬs��qv>|'Ͻ��uw1q|�e�]�d~b�U+�����|�14���p��>.��"&�͐'�f�\���}�M�v<p���S�[o��~�����[���߻�⋮~y�o��Xk(/[O&�H@�4��I����~��e���� ͅcyӊդi��5H��y����������R�AɉP~'�Y�>@&l��`�3
�P���!��B�N���C��tR5��,'ܻg~\a�E�J)e�45�c[�����Ok�ipJ�_����O����O�Ȯm��Zc����"f�.�4_h���i/6���Z�^��߳�����s�+��[>��R��U�>t?�;{o��w���˲���:��<���و��-<��<������nRC#���Y�1��#k���Fs��1=u��d��CX$�������K�v��w����q�?���|���w���\�������D�Y��.�1}��M�-���,e啿Bxd8l�KO�:�c��DMT�ZL���U-^����X2��Ah�ꉐ`Z����b�&I���
a�-3.$�<�9����٣�X#�0V$F)�$Ib���l�Z=��?�I�L�\
�6�l6�U!I�s~z��z2�ʸ9���,J�=M��3��(�t����L�iCw��Zw�7�))(�מ
A�<�yo���D��_��g�����<繗����LK��̇?�E���{�����:^�K�����>�]ܢO�sqI��,��������q��<�j%G�=�������
��+����+���7�5{�����߹��Gn%��di���E�������cx�O��KI��(�)�P���!I�����#�v㺊r�C���%����q>? ����0�C�����ĉ��|��p���Sk�[�pe�0��(��,eR���o6����)�COk<�laI����u�FÛ�U~e�u�sHkI���Tĵ��O��v�	R9d��O�%o�@�ff6���>�����Kvaj��Gb�:G&C^���rΪa��ϻ����������qx����^�_|����7��?���Ac�p����<�z��B�0J(w��yx���x��7������ć?���Ǧj3amFJ��gq�r~>�����2��a��|����oM�P�|��ҙy�$F"t̥�n��{��yE�á���­����i�1ؖ���pq�)��"�pD��~��Ʊf�*1��5�4�*���L��i��C5�M��&�ύ=[�Q�u$Y#%-JG�Z�f��9�b��+�1T:�����;�1<�����UW]��Y��͛Ƙ����]���9Ο��g�����{'y�����ab������!iF��}�,��{�v�CH�����~���_��?�	��?�S���?���ɯj+�X��#�2u`Y�(N����ä^��-o�Ukah��sbu�1E�T����ɵ������c��fe)D~��R%@����s!��GA���XIj��k/�]#D����*ƈ��� �c��V�N�����L �S�|�pP
�{�+/���}�R�$�&��ClT+���aX�q]��P����@���8���J����g����p�|�K����9���u����/����1lc���	����d��2^ѣ��@3�y�s/�e�J�L_WY�����婒��w��]����VQ�t�L�t�R;x7��1'��4�{���0�u��N�\l�Y�ו|�I֯)����V�)��m��x��/JsB_�!If]
�"����r��%V�k�X+:b)���{a���O�P��N '����v|?�V]�⬡����ۧ�(_�$�O��ZT�x^@��{\�8������ܭ�<���J�Ç�k�+GWr�[�輳x�[��?��3/?���>����K0�>��so�������'ɢ:�f��y���>��zm�JOϻ��gr���~��M�κhe�\@��������~b�N�������
81eO��������U)�g`�p��VǤ=%�G� �Ū���~R+�i%��op]�/����vBZ�2)�~�EQ�]{���ӎ�� K+��T��=�Ҏ5�%I��)i�I��o��\2cp��?\+Y��D���u��g�;���xHi�=�� ?�T{��7��N�c���W�LX��bQ�����&V�92>�^򆷠��ro7{.pŵ7t� ��ymajr�u��3�~�����g�S!㙀����C��ߋ������s����ǐ6����FJ���?a��'E�'���x9%���.�>5����U;!,B��'� Ks�J^��M�$�앖n�q+ K2�ߏ�Zm�!��=-C��3,�����h8��z�}�%w�i,�4AaI)��b@���j�ܿ���1�|Ʌ��u�˶�$Y^w�Fa��>v���B�J����.�zJ���wp��[�;���~����o���=�;P��QA7���K�pߝ��������u�l�
<W�w!��G��G�x���B�3	�w���ʗ�c�w��)��B�u�4k�o�'Yk��}�`I�,>|���]��#t_�&3-Ґ�^��K;U����]��9�4&�Ug]5��X�m-6�D�B�^�$���ӷ*�t%�%�V����w��/|��Y��)�Lb0*��I��$�_@�N��cK��S��Z��p����4[�	�O].�<�n�yϹ���V�o���.��9�l&�����i��wԚ(%�(�W�)-C��8vc%R)��v��릧L�3����{���oz��KH)�}�`ٹ}����.�~R�ݶNON��ݿ�U��"|��;��R���p�d�X�8�X)E\��?_�2fzNz��=8Y'�J��<�[�v�D��p�tF�1&q��w��}s��d�=~ƑxE��B�$�b~���8��$qQ�� $�櫮�P

)@	����mX}�ek��}�t��Z���|�oX��DIF�%_���\�����)f�
:�v=8(38�,?\�q�淾v�S&������t��ϷB!:F�?��<ޒ�������j�g��<ѴM�4�Ƞ-��*�c0�S�D�zɽ���\��yE��ƛ��h� ���36cC��x��{�����Ǫ��O�iE9�������Ԯ]�j�z��<�g�>���r OJ���O`I��Ħ7�`��%��u��Џ��/8�Z���{�"���U�I� Cl�� �V���^`�m�V�	!J �*ra�I%�f�V�g� ��P��q����o?�v�C����͎-�#b�	r�I�5W�F����
(��N&��'�)E�t{>�M���
p߽�����t�xt��9)�X���Q�e�WAK	��J��;P�<������?m��e��ˮ;���~ޕ�J�v+~�
-����9P8�j(�s��
����1r �mN�Ւ""M���
��O�a(�h"�}�'v�/VvHK����&���yx<�L�g� ����Ճ�^�'Ц�a�+��[%(��{R����夣�BJ�J�����{'�"F)ؽ/�X�����F_o?g��R>��/G1�W�t-���h���Ӄ6�ظs_�C�c� ������X��w�=]c{.�;���'̟S"��Vt���xˤ0��Y�IM��'lW�=ғ�_~��]���k#Ҕ�x�� ��&`!Iu�)sW����[I�bE\�2,
�_���g�W��& 2Q=22O�a�5Ł9�������ةt1h�"�bm���R� ��XqLW�
(Q�JY�� ���B��6O��W3Z�W�����>x�B-<����ny�ox-�z���:�1��z��-�����.�|��/�bӦMz���\��7V������I(�̒z�V��	�L4�w?��Jݧ[�_���wa'�/&2�ǵ�Hc ����>�W��BJu�Y_.,��V�(�H�� E��TT�YAϚ��`~�j�^��\.
^۽�ZGh���)$����I�8�CWI6�Bee����H��U������!������K�|�ZN=�|��x�z��*����rj����b���D��+�Ėm|��_��+��/|�?��q=i���OԌ���k���e�� �etܲ��e���C��6P>a���0k,5�r�r�=56�ay�Z�������g-�Ҋ�e)�BD��؀g �l �K��
��_y��[��^�c�8"�� ��.��D e�#�� �ƪ�J���LU���X����]O�"����˒B`y|�O1:&��N+ȕ��֩��z��+?Q�e�W�h���W�8y�����M�6�S���n,n��Bz�s�M2�����g�{��dn	��@�p��S��s�7xL�y���:���kHi��>��I_a9w��w	)ۥ��"�B����B!�؀g�l �MT_��P�jq����3��mL�(��u���|>��}��'�����Xj$�$f@G����w��
�>���j��[o��v�����D�R���J�rg��9�yƸZ���J-ddl�C��#*!BXV�[�����i�s�����Y�r�rg�+ʩ�J%ֻlhi�an=�EI�Є���"�[����#���F�
a��2������F�c�}�)K���"Z!.�0�b-zv`����TT�y=���u��FǑ�4.�OH��!��N+$ZF�\�|V%7�Z���Eپ/i�hg�M'���OB�����Ƿ�h�<��*���U������}�F��+�i,L�"���Z��G������^��������v�ibvl3_5���g76�[k�s����DU���"���2�w�U��,�f�D���p���7[K�eB=/��ثV�OzF��  A? �0T�������5ڭ��+��u�\yB����OJ�Z#j��+5���������r�Qf���ۿ���Q��`!�{��J�u���(���Fǫı&֖0�A�����i�s����o�����]��?9���ǚ|M�}"���y�e�-�������I�Vz)��&ᒂ��Z��m(>z?    IDAT=�~�iZ"!J2��zNaz�-��   �m��b1��}������q���)��p�&���V�"�@�X�i��Dp�|����g)��f���|��r�ݻv�v�i<��n��:��������X�)�$��5��|�k7��Q=���/��?���/���&~��*��>�A��[;Е:�t�����b9&�H��f��I��}���MZѪ�e�,z^�+bb��[��M~��eːQ�z]�+-�h�E��x$2q�,�XS��(�J9��#�H�w��&���bi�����e���Z���>x��X���+�yщe�;K���20w)�v=
\sL��w�>mAI��tſ}�]��M��������Ir���9�����@��Ĥtǩ�]�8�p೒��Pqq�KuYhQFʂ�u.����Ϭ7�� ��ǈ8�����z^E��g�EXICO������ 0���T��a&�y�i�7PJ:{NB� 	��_�u��*�j��oy�{w���߶��N\���<@Wg':ք�&r��ϵ���c�?��/��׾}��v�I<	�6k �ʞ�O�C����*F�\b��+ R������EF&Ϙ�p��K_.�i�V�Zt9�ഀ�Á�%�Ҭ
�gZ @b�W�}�X���u����T�b-J5���E�gUk���~p��96dђ^�,ʣu��X�--��鏳Y}��ԫDac-]ehi-R�jl���� �B�'�<��|B���-�����CWM��~�?�����̟�4���*��_��n�J�u:�=�D�OM�F�;^���B"�5;� �j1- �B�����:�#0��L
�l��X��Ы�up�\�z��v+%��B$��mt�)r�	HKAa�}B����ٶ�����%����!�t~״��Ⱦ̙��j�B������5M�>���c���W242���Ek���x�2��.�zZʒ=O����i��>�������w������Z� �]�Y�1P	�o�A��H��n:���;{Ω�"�(!�B���A>��j�3�.��� �p@���O�݅R�����7&��Jy	 P��&۝̳$fthPʵ��bK_oѕ�R�]{*��t��~C;�G[�������c�v�2r(�g�KX�1��=n1�h?�3x�w��̳�����������~*�O��.?�h+k!}�yr9�=%�PJ4���sK��L�9q�iV�j��ZS��E9, ��g,G�� ���l�s�E��^:���:��j>��WZ��ZWKH�L��R��'�j�{^�)�xJ��@p�@)��v֦��r���v���r��n�;;ext��U~b��?Μ�����hg
Dᴏ������4�/�lí�������'v2���x�P�i�<#����i�p-�:}~���kO_��b�J;- �*��9�����~�4��[$�q��8����^�)���}���y	ӫD���d1)�O�<�Lz\q�Cc��1�$H)A[�d�����;v�k7M��ރ:&���ho����׼��x�ч��::��ݷ����M�`~���˯��J��d�s�����L�\J��|Z�Z���hɹ�>��M���ǭȱh�A�$HHZ<��NsEi�j-Ħ,�.�H��y�GQ�l�`���3m�0eX���u��(��X�.<��>R(��' ��e�R�l5�~��^����AHry$�����-������ﶴv`t�Ƈv�ٻ�E�Vp�*��w�Dww;�����q�<����.�GMK]��i2}�[?�S�TJ� 	��.��0B44�,�GXr'�R��R�,�<��s)���c5� �� O	׃2A���|�)#D�X"��q�̀&-�9m�7(-B�j5�s�����Zg�[�|��k\��d�5�G�%���7^��C�(r�&�/|��2w�Ǯ}vʳ<Z���ȵb�a���w�����ڇ�6 �?���,X�����b�&��iKK~�&SKgy�H��)lu�ʛą��d��?n�Rj�̼H�k3f���*şW��i8e���%�E*Q�3%!T��P��z�G%�A�FϨ	���eOOK�CAXw>׉��SH�9�8L e�*R�� @�|�-%ر'b��Y�������?#7�|�
��'�<Ȗ-O����>�_�ƞCu
9�eK������.9hd�cF�<�}�a�SG]�.8L&�+�3E|x:��^�M�5��*�������Ȯ%��%p]��~+(cMYiQ�)����xZk�d�Ί&����������x�
K6��n�B^!�r��BJ��S�:�Yf��ߜ��tK�}Z˝����@R.)<OP�̌׭�Adu��R��jB���qd4�����/�;�@*�zX'���dÏg�t����h�R!���iФ��hA���ZD���(�����fJ	Q���	z,�����X���s�3ζ �����Xy^�C�u��hc��@$��4��:��lb�5��j@#�;u�5z�"�� J%�\N2�v�,�~7 ��K������jmc-{��'˽w�Ɠ������V�Q��8#�y� ����H�{��Z712M��䀞��=%����a͒�9�2��.��_Wz����7�I�9�2,���S���pB@j�Ӿ�Â���oVq�ghD�io�Η�MT���t�B�e9�)� )ԤY16&CD����vO� �� ���ѱ���[��i�h���ٷɸ�h�Q^)``�����8q���x��;wR�U�VƉ����S����G���%9`
�?�?Ҋ�L�����p�\���j-��/�4�4!HJ�d��c;����,QD�"Ȃ�6��	r���	��) ��X���H����7������X�E���z�B*�t]��b�g�+�܈��	$F��^����IW�OkK���ie�¾��쟾��; kKWO�;wOp��tuu�d�J�Ԫ8��7f���؋���;��헪�N_�ܽ�yD��yr�f��`2�0=�L��	(�����g˃����k���-"DQ����Q������� ����	��b�j��Bd}݄H�'��K[hN�A4�v4���Z�61����8/@ �x�i��ȍ��K_�^��7cQ�A�{��̝�ý�<�Ï>��DH�6FGG'�zk��32��)����i�P(X�������Ï<�'�{@;��pMB\��1rA�9���+��V���M_��| ��5J%�@������I!
`
�����Z{ZE}r�s�X"�"Y*u�Y�f�(�=���.���ʓly�P�䍹�/�W�k
i�n��.� �����%��|�C1����3v���C6�j,>f�B;�rqT������s̲���u16��8������Ԡށ`Mf"
i3[�W.�Gɤ��m�Ka94T���h�2Igi��*\F`�pIkd��{�qK;�� �al^h���	�UZkY[���d�_R��C����ٽ���O�%��PL�s�Ob��ds+��i"G��%�@��S�)w.g�`�������+�~IO��m}��yp�AE����\}�5�۳�'�܋1���@u��������X�g�c�M�}��[\�/KE*K�Y��������̌P<�����AJK.���\m�)�R�J��9�=����r���̘ �u�VC�#����r�}ߧ�hC��s��Ӫ?:����o��߭��&�4�v��0ip���]u%�W�1Rj���^97�wW���3_~>��!��8�y�����yt[�}��1����'�Jw� c���/X5�x����9���0����Ѩ��Tw_��l����׹�Mkho��=�'��%P�	�ҼwW��[C�W��Q�慰y�L�k��e#�:� %à�KFUN�w|K�+j���GR�O$�* �wn�f��Y�¸S۟L28�@���0:S�Z*5&&�������Yky`�c�R�]xq��A�'6!����;~��KNh���<O�����A�7���@�*���%�|@���6��G���Ϊ�%�P�i��Z��xI��ԫ��
H7�iY>жlDas��A���FEQ$W͂0�^ E��c��>޻&O�d~�@7���o��1	��L���N���p�C����j/[�����k���!���X0S7����Kz�,�5oP*�"��j�-?�1!��A�����1\�D�ܙ35��i2��t�ea��fEc]9���|g�{
ry��,喀�ן��|��P���9I�TR�2��A!R3��g�B�-#��0��8<�m&h6@v�@h��1V�\�<6!�R�u��Z�e힘<���͵�� ����A�n3�ݶ�0�n���'��b��k�}a�L��?_y�����0���^�Z��q��`ǮA�͛CWg7�B���%fb�ӑ������U��嗡�����:ݿg��\��/l#�4�Z��`��ui4`ڗB4���
��
~1� ���V���8�8�����"�q��*m/.3V&����Z;���Z�f_j��	�I����Ɋ}�h�ks��V��iǖ�O��귞̢�e�<v��g��ñ��Xn���Slx�+�2��l}�V�c�@{���s�5S�x�&�Eo�oZ�3�OI��/��Kl��O��	l�����cVZJ�JA��"�%�"�f�h�{� ў��.\܉�y�̃�Km|�s��F3 ���̪	ǈ�1�F�K��щ�z]shd�\>pn�#��	O�Ҵ��}#֗�W��_��S�y�]�5`�%�cu�}?{�W�aw�9��3u�/y͇����E߼c����3���Z�1��]��Υ��͂������x`��kfj�ӑT.�|\˒E<�v>{�M�FI�HH�&���������ʬ>�D໌�TS����5$!(�94W r�3V�RZ�����J��H܁3F�* �i�VcU^z�1�B��Q�k�����\jm0��j���>Jv$��������Ƞ�u�^���Cþ=���6:��Ȭ����e���C{���õ?�kO9+|�ϼE+x�GP�x�K4�~QGς{J�cWՙʹ�|?A��K��g悂jE�՞���⺛Ʋ���Y�ڟ���6\쀒0�cy��6'��ic}�[��Vc�L� �j�#�بpm\�j��=)-�� �\ ��Ȑ~1I`�H��fJ~�|ǰ�	���1n�5D�%�,��_n��#�~F;�����M����:�D-��������N�C�����O&�#°��������8��ɴ��E7�5d��o��6�;%�]5�J��-��;&�iwJ[�?���a��=�	� t�֒�6PVB�K)}���j�Z��$�vA0�ˍ�VX��x�����r(���b��/�
v�we���~�X��$���P8@��k)����[Elb�sN.���h���7~g���t��X�zZiikghh���9�w^� %/���35��i2mذ1��[�U蓙�����H>�<F�b�������g��4A(M"�!�4 �U��]� #���x�ZiLA�v+�;
�E�R@^������դɧc~���LJ��H�&0��?2!@#��gj?hZ[���.=8������U*5�5rFc�_x�+��-%�Cã�a�zhk�`|b��у�v�����?_73�J��#�3FMWw��ʤ��FH��KG&:��i-& ���~%QdX��tXg�$R5.��O��/����+k��c#aތ��L�I���V䬕�[rK����r�R>�繪?F[�*0��cb�+���$�_��7Z17_(�&�]N�5D�{ձad��7�V��Ǚ��w�{�����/�G5��<4Nkk�b��'��j�[:���{����+fj��dZs�鍨�$b/c�&7^���݁9?b��H'NY�l�6���Nt4B�ÉPZ𬕾��3�z�Z+�'�<'0 �i����r����r��(�(B$P�T�<<�G�c���a�X��AP��Y���t��K���Q���	p�REi�{�<�s������s_v����ѳ����ز�r�$�k��[�2S�x�&����t�w�Of����&O
�ʖR�������q�p��J��#X��	�uOl���OJ�c=m�������@h���
��2@���tw�&P�q�@~kcb3NgSп���c3��ӣpe�j�H�R�A&� �!�ݖ��n3�O*U���A��-�������cÔJ-\u���x�>*Ï���T@��Xt�I\|��3S��y�D��=7�Հne�i��Dnx��g��P� �J�\`��&9�d
� �M�J��jղlU�R1$҆�ŷ��w���Vc�1F���  0�G��������\��HL�Rq%��H���d5:�rh��K�!@ǡK��5Ųkטc�&��Ĥ� E�̈́@����q΋=��.{��gj>q����v�Y��Z������=s<����B�^��;�:��~Ƿgj�S�Z[گ'��ǩ阥�$8SZ�NkK�,X���+����,}8Y��ʝ+�B��x����������b�%AY���*eQ�"��Nk3�#6kn@k�0E+��~��j�GZ���&�B�{d;�6t���t2)��D2�\!�T��[� P�a]��RQ21�0FF/���y�e�<��=�39���7��dD�T��[Ay�#�R��S_x<�w�P(�^6��x�r��X�$�<evcmR���wJ���}F>���Uƫdڂ=l�&�V%���E
,s,,[�'���DYk�g���� 3B�fc�1V��KK��r��Em��C�(BH��Ǵ��B�H,a}ܝD��w�����a���������c�3xH#n�ז�徻���-�9��c�"�♜��t��Y/;��8�<M�p�1�z�X@z��G��g�s&��J����{����?�u����x�%��s�e���d�AJ�p3�F}�t�N��6�F�c�u��,��B��������Kyׇ��/6^�i/���ZJ/3'���n���c���*k�:o�]��7��fM0�Hk�l.������۩�#� ��Plǚ���~�����$i�� Y�ФA�RIs��/k]Hp�zBÞ�.�E���q������xۅ���䄼謷�^4,Z��Ƿ<�1!]�����BKEgW猥*�.�%�߾{�Ns�K_���mo�|��L��S��33M���Vs��6��q�����/y#�����$Ϥ���ʵ�m݋/����cN:��LTb'L4�ժ���
O�'�����<emAcg�i3) �/Z�I/罤Z�yA�\"�&KI��{JH�1�J�^�9�w�EDC�'���A����@��"�F-������-l��<��� 
�++#�Ѣ@ogŖ�v�'�5����J�^w&�\p·gz,�����7>�կ��#�������sn�Ӣ2)�
�d��i����"� ��06���uvܒc_4�56��Ϲ���m%QlcHZ:�+@!��e�@��â��f% ��X)"1�:Z%¤P.���z�V����
��|'9��B|'���ѳpAq��B�s�������j����C^��>.x�O=����I�?>��7,_2��+���;طw/�^p�@z��ո濮���֍3=�g;��W�x�����o>��xh��oz�+.�m�m�}%�H�ś�B�u�~�V]��(��/Z��n�7���]������j�.}ºීן�Hk�g-҂��"�m� f�f�0a���"eM�cY���R���ZfS�w�9��chko������&���Y@�	���NpB��sw��L�c�0���"���_?��/n�P\x�93R#����g�룄:�ig��5ٵGtvu�U+���W�'oz��)p��]���/z��>��~�D�~�#�ۜ��W޵���uS�i� ꡥj�!�'i�c𔥘���a|t�����5/���K1ۄ eA:/��&� �����ob�;    IDAT@#@����4�0t0fp��������	|)\*�1�ζ�I�?Y`�ڋ$l�X �Y(�̫^���F�yպ���ǯ��l;c��^5��LO�����]�fim�����PJ�x�rT�n���Zp��5���>����|�+?�ēzhh�����O��a�ƍ�ӽ�O<v��e�����o��O}�S X�Ժ����{ڲZ-$�]�h�+����0#D������X����hm�����_��u��Go=w�����{����
k�e�-�.w�w9 � u��`,���T�h+�&���ۿ/I�W*k���U��M�>��&�I\@XW7��[B�9����Ti`��1�]]��QH�@m��ʾn6�����_�;�Ŋe�p���y�+�H��^�����M�fc<������/my������%����h��8��'�y饗FCCC����`��]WwttO��Q�a����z �����\��g�4F$N�E�u!�	Sc����I�=��j�U�W%Act�� B���7��'?��^{�1�y՛���X)�U�Z��!��Bk=c�Af�v@+�6���9_1���X���d��}=�����c]m��N`��4�;pK?���f� ժ䘮G</޾}1��V��Zju�6I�Bz|�OO}��7b�~ѱ�������['��>�СaZ;z{��ڗΊP����暿��e��wuw������K/���o�����Z۟�zu�P������=�A4B|ߣ�����_�M���ޱC˭U�m�+�Vs��Qdٺ-̢���h+ٿ�XC�$��?���<X�#����p�k��İv���������V��Wϭ�%;�q��qN�1F�bU~9�/����6�SI]��I�Ej���<n�w��EC�'�a�ȴT(;&:ػ����(��b�!�u�3�W �at"p�����k��/34G���ꋾR�GH�������J�֎�.Y��X�x���1��ihhh�����o����w޻7n�X~*�>�呫[�ڧ�����}���9���l��O������{~�"��b  Й�J��)>�b�<��p&B�� C'8��b�u�wF\��h����ο���S�8T�Z��lZ�fH��t`k����v�Ā?p�ƶ��x�R�U!)�i�i��I�;Z�����rS��6lFי���Ғ"B@i�(֌U5㕈RN�Y��J��"��%�o�y�g"K�dy����4��e��sbd?`�"�B��6?FT�18\EI�������]�1����m=CCCx���/����_w̍�]}SGW��������|�;�k��Rfټ��W}��EOg\:_��,�(2��F. ��d�����b�8�@kᰁf�A�E��KA{Q��W��o>�8��Ǘ��Փ[�:V!D<�Cc�4ƈZ�w��!r��vPH�i�^�m�F�r����k�+bI)e,�������2�A[�ed�-CKY��&8v�Oi��.3�&���G�S(��0ƒ&6\x�3[3,�׾�|!��Q�Ŭ\y,{��d�1+\���d��^��W��pħ?���G��Z�'?�I6lؐm��~�����o���g��/W�xʔ@޻��.�����ho�ٍ?_����O�^�J��N�������@ݤd�e#�M
#� ��c�h�s���y_��.x�[�n�p��o.�;��.)�S����f-Ȃ @����\Ӆ�R��U�"1��˭��a��V_����=���0�u����ʮls��1Q�뒝�\`������r�chF����FTC�"�J�~`�l��k.�������B*z{{��tuts��x���Zr�vV�Z�����S������𒗼��(�)���{9���r�u?��{/���=�������{��cʴ�����<��C ��Gg{ۃ�������n�N��luo��M��,&���²���D!<�2I-�����#=����"��?8gʱ��/�⿽��b�e�1v��svK����[K��h����fZ�V򚗸�~P����h#�➞4�-]�q_f0�)%���3��H7m;*��{YBY�S��YJ~4O �����;��}��+��"���<J�TG�r����ض�8�)�u�w\�m����nڣ��R�|��_�/~��a,^P�����v��w���S�}ם�� ��[�ʵ���W����ʔՐ?���r���)IgG��k�����U+�,>?M�u�"�!I�=���gl8�Hkja�E��?�J4)��&!�R@{���ɔ�y�[�p^��r^[[W�t��T4k@�c��2:S�Iȥ[�����T��<��%��# � �ᤤ�f�_�����镅 ����i�{�s���2;�T������f��>�v�`>���ٚ/]9p���@J�"��.Z�@�È9s,x�]|�t_����?�]�������71>����i�[��;o�ٿ�Ǜn9������Mu�O<qY����:� 7�|3W]u������O�����n~5}�s?Ŧ���c|�X�mb��dֺv��v� ��T��� &	���61#R!� ����n�r\�6}�)gX��V�ӯ�Y B["!,�`��cV-����ԾoT��B��B����j�LӪ�2}S�@��4�@��jZ�>���xA�B�#�ǬY�c��	��E'�_�THozݹ)��t��m���k�1���y�,_�#O�att)%Q���,^{����O�>��7Lt�o|�}�\(�T>=�ןq��7�����j&>���l/�pY�V��� W_o����n���i/��Ѓw~T��
���{8#7i���C���HH�n�dZg�E$;<%���Ω���ӣ�ΝwQ��{��V�7O.�7]4��!�p�V�	Ӊy|�{��֘t��'�g�^㿦�ɪ�L�T��͓��Z���5�-��^`�ep4����Pg����u�G(i�OO���*z��+֬=6u#�By{�x|��x�JH�_��5ǥ.��M���݇V�}��_@*���'|�'������s���)���߿�mk׮����u����S_9�<��K)(�����5#%�v�ܙ0����0�dtϑ;������}ı[l���Tk&-�E�LN:_�*3�������^=�ؾ��_'�}eWW��Jt�U4+������Ʊ����ڠM�5&�8��M�`Q�ϟ��M�~�`h���A�k�c�k�Z��^'��-�?� ��CW��R�L�콃�WG����}���Ы/���Ȟ{Q��R� _`ݚU���^.G�І�"��S�0�q���]S���>�4�֞��O���?�u�Z�1<g��q�~��z�T�_r�%���'����O���-�[��^%�I��֔ۚm�l�m=}�1RX��O*� �X�cL��鰽]ms��7^���~04t���'����U�|��`�<�#�ȧO3% ���
!��0�Dҏ=�+�0"�bbc���t7InF��H��7�pos*ps����X�fl,����8�v�Qng�;H��e��z��\�φ.y�E(~z��W4�'��<�Ǫ"aE���wV�l�_���w��#�xޑQ��btԹ��B+=-o,��s}��{��U��8��,����Ђ-[��m��6}O�7�~׌�j���}��I�~#)�{o�E��$Z�u�Gel?co�m R3���3!P�˄��{���|��K�7���կ.ίtuu��̴��{"8Ck+�ǆb��@_�x%tZ@jLB kio�LJ1�#}e
��.�I�_"�/m0ڠcM�����Q*�F��h㹵 �ײ\b�2�Гfx�2ڴiSuۣ�E�()Q����<���g�QL��&�����}��=�m��ιi��o~���Rѳp�ߴ颣�����t����˧�,�����M��?��?��ǝ����+ڽcWC7*C�D�1}�2�>cs��É}�xZ���{�z�䞶h�3�@
����[��� �޽{<|��B�b���Z{�u�=e�0�T�Ի�	��3:.�;F4:��?���f�_ d��O�N�K��TųM��$�mlN;�Jd8Lg9���*�"d�|�;?8#��T��o^����o�����BHN=�E<���[ʌ�dth�%ˏS����oz�K�rc�V�8���0tޗbk7?��g-�m����~�����������o(�v�O�|�>W.�I�sO�d>c1I���,�R5�c��/�R���Ȃ̭�z p�F[Y��C�L�H����<a��~��_$�|EE���M �F�C-�z3x�2�����i��#Ρ�F��W�Ȅw��jPj�e-�L��<\�G",#��,���n�A(�r���q���>�/_:n^��Ze?�<����p�����ރ�����X��u����8z�4��}J�~�����I׼c^�T�u���ҩ����=�y��Yk��V'7��-w�s�S��oC���v��W~�ݵzC�i-')�M�Q�ۓ���ۘ�&I���F�%_l�Fc���<���,Z����~�y\w�ET��/;|��W���YJ��L3�Ί ط+�0Bcv�-��hպe��<�Z��5Z�.Y"s6��!O�l?'q���֩i�U�4��$������Lac�v�9A_����w�
��.:�7^m������h�ѝRyH�a�I'���;(�Z���8=}����O����W�m����w �b������O�\�ZtD��u�]ǵ�^�L]�碋.��Kϟ<�.������'E�J�;�p�}�֔h6,̙�Get�JW��0�95c� ���H�'�k	z�VrѦMG�R���7՘O?����ڳW�XQ�ι�5 }���X8����
J�V���4��#�ڠ4�X� �}";�_&Q���Pȩ,DS���i��1�E��H�
Y,!,��y���lս�z]��v�9ߛ�i;:����|[۫������eŪ5�q�����	�ڻ�g?w����S���:bߎ; �x��=�)7L���=?����.�#� �~�����J����ԣ��~��S��oJ�o���|�1)���x��������+V���IO��+�@"�t������PJy���o<������p^��|>��ir���E:%I`u[c`�3:^�R�&v�������S�Vy�������f1�"�j�S��N�.�6�|�Uk�cC;m�V]��[I���{�� ��1y�y�/<}���|����H���rX�������]DaX�1�E����+]����N��~�c@z9���7�}�cBؾ����!�=�e�|�� ���/�����Օ\�n��O�:�)}���W^��w{��R)e��K��gNP*�l�������X<�>�M�'�^�î���J	�-\�ޭ;�jN������}J)��+���֭[��+-�4{��BXjXۋ,>#���B�D5fѼ�SǛ�=���~���,P$����B��iAQ��s^��������b�I�0ف�<��CG�)�ۡ9f� g�����B<qh��n��Bf%c0���{J��9��ur�m�06:��|j�X�ŗ���.³�8�N���(���]�����=���>�\���Ї����28�|%ķ~�=Eڽw�h�H!16@J�Z ��n���P����Rm��=�b/C#U��$�#��Dj�ʆPdA��n��W�m�I��t�i�uc�4�<���f�����օ0r���T�.�ZF�jt����'��p�L���E�8��%��Q �5Ro @K1@'���M$U\�GaDn�����Q�I�6rEI�N��s����Aa���7x�ԉ�3D_���+����U�'��
(O!�b�ɧ�c�>�C�>#wU���g>a7n�x�o��׾�h�B�)�U�I���/����eǭ[t�	��Ou̻����:p������ӥM_���6?x_�nXcd��a'&��A��慼������H��̘[4���54OAkI���S����n�~��J�X�4�����El}�ח/�Z+Fǫ��2���N����2�(�{�N`dv�%� H%�%�%�����<m}�ѻ�b���BA`��R��&k�47m҄��c:���YLgo^����8�l&hӦ�z�?.��d��(�"�-]ƞ�O��;)�tP�V�2/ї\|�I��戇i���,�d����@����6�o|�����>���>�ag���ܝy�deu�����{k��mz��avpܣ"��P�㖠�D�5���1��ׄ�q	��%.\4*�)����0[�Lo���Y�?�[�=L��38$9�O}��ު[U��s�����H���x4����~��_���U:�&�}�Y�d~_��m�-G�<<���=���A�Sp�f�A(	Q(9�ɧ��e�|��944�'��688�b�s���+�] ���i �a�0���`���X�`((,ژ^����mb�gݝY��ms�X�́y7��p��c4���I'�I�v'�c�)��;7�90���!����d��=������ͧ��V-��F�o�Պ	���5,X�=w�� i5&�4<���r饗|ࢋ.�;�|��>��_�������dddx�sr�����H�����6�ɋʑ��0T���UJ�X��?B
�6(�գ6t�4I��ˈ�j!<��l7�g���3�@02\���Y���F�Q OUJ=.����� �:ko��T���bI�43cI3?/�7�q�P�^�Ư�ڞU�vQxw�ͼ�9O�(A��1��ߛ��P��a��z%���8k�Y�	"�Ҟ㈋�B�ɲ���k�?���"��ËW���M!,�F��T��p܉O���\��vZL�ngŊC_��?xM���������TyL4~���~���k��>��r���[�}�w�����{j�()H20y1��(�	��_҃K��ȇ����r�7�A���?�Q���I��wA Պ���;�~r���=�~��C��II�<.�҃Ut��B�>$����;�ܠ�U�h����{��=o�@3Y�G�E�T��/���y��N��6�,I(�]�t�^�r�YMf�4�r���ak�V�t���ؤI�i�n�8��_�m�9K~���A8�{�_��W�ZT~�0���a������u?���!�R$q�g?�́U+���_�BP��g��^r�is�@7��s����է��h�V�fsB��o����9P���V� ��f�vem��g��ym/�7�>�-'"P����a�V����1�8�{M�~��_-�+��G<4u����z����	�ۛcM:q�u�J�uhmz.x��"��x���R��}	�nk|�;��^�]�c��E��w$*	S������Q� �\2�P�����9:�1�?7y�3�h�M�n����>Z�\ɫ�����Ζ����_����߂u��T"CN=����;����]�v�&�>v�:BP���@���_��{�M}�K_��\����}��;^sꄱ�t)%RJ

����� $ֺbb��5�eKcq�A�-��Y������,��9)�SX� ��'��S^���j�����O�-�"�a�m۶0�A�+6�'��$
<iB'I�t�WTȵ)�v-J��z� �ް����9�W,�m�yK7PB��}f�1��ڙ	C̄u�t+g�P|���<�f)6��q�4i3���T
Ѣ�a�ּ��3���=�s�{/���M�	��p���r��;��~ˍ�wm�����Ȝ) ��1Lm�����9�⹶w����밓�/�X��Ou H������"�(��	��Z��`��W��C;�pFɽ�˙_az��YF�
�t�k+ݺ�U��oḂ�(�'Ir����Dz�
#�Эjzk�i���@If��$Ͷ�TB�.�c�q���;(���z�M��{P
�m"��9�`��l�^���j� �?p5�R���Xt�!���1&��)&O�Y;(�d    IDAT�v0I�ǌ���d�oc�/g��>���vh��7��������n�u�D޺�i�!�����>�����w���}����RJ�|����w8���ž�+��:�?�ǯ:s�ĆB�[E<.�`A�()��Z�gwdx�.k��	W@~�_w2���J/ ��	�ZV�ԓNL_������;�;�8�1�,9�cT@ʆM��Z�M'WtU-��$%K�4�]�]< >���/�]�t&�o�cŊ%D����{�10�TXtg��1U�����e����r�u�R�Y���yw�!Yc76�`�&&i�'�N^K�Ч��9�A;����a|RS�1/����?����u�Z�!)�+�K�x��͌]�ɽ����d�\���˗�u��|�̀W�����=vW������:�	��w����/��@�B�c,���n����e�YY����R0��wE7�<�^�ݑ
35�(�#���������g�u� �A�����@� Lc�Z�<oM��R��q��zݰbi��/S(�����s�Z�c������1����J�D���;�{����6���0);�c��$% 'SdY�"�u�r2o��(�dL�Bw��ӻ�<��'v0��n�vQ[�|��L�����c���;>xų[���,�;6��� �;��뮻��ޑ�!zj��}��W�˿���G?�9�4���G>�����|��,�i�����O��;_w���\�x�(���l�@�|�#�uH���P��'��s�=iQ�+�z������b����\���a��G_�̱ˇ����/����v-!�Ks�sn�j��֮>P���L�B!�V$���n"�ghm�Wt�k|w`�g3+���>#������Y|M��z��]�pb��<�m��8�L#����gX툧��m�p9���
J�C$��)�����qә&���L��޵�ƶ�4voC-XA��D��f����j�}��o�����u���h֧�|]�Z0��+Y��dt��&�����|�;���Ws7�ϒS�9�ҹ�oܸ�_G���ox͹�|���;M��2�+��L[�널H�0�/ B�ҞuP
m��/|N��������x��1?[�.��Y+>����vl�L�P�$�j���g�,Y22|�������v��D��%�ڵ����!Ƙ/=r[�ZEQ��]�A '�42�1"�Բ�JI�Lӎst.h�2r�[��V�O�����6��_�ٔ_3F ��vV������]^L����X���h��)�����Ň��p��������N�f�I��ѝ:�5M֚���Ǵ��'��R:�I��@m)�F􂗼��A5"������=�9,���+�d���jᜣR���dh�B� �ݜ��	A$��7�{���羼�����~�?�W]��'9� �"���B�>}����}�U^p��][�����q���s��</�R�4W�V������	�N+�w���?o)��B��x�:P��Ћ�=���P)���E(	��`ՒF������1zR_tH山��i^�4�Vkr��;���f�y@x�ǭ��1����dBh)D֌�����@��NB�Q��,'�R�D���J�p�-~�� �$R���Q�G

��v3ID����cd���R7��+Q�$8��eM�t�S���,57a��D};�?4.�-%�yv���\c�qҋ��<�9�%D�A�F'��n��x���>c��_\w�	����\~���xZ�����!�� �����n��㈥�t�XVv�BUV
!?4T[��˿�=&G7���X��1�bÆneTp���I��Ӟq�E}W��99۝� �~�x!��sDt����J�d&8��V���ٲ[���)�z�8����V,Y}c�C	�	��{	�ѨR?:�P��V--�e��+�G����r�3_v�-�	csv�ƕ+Y�d�^�nJ݋���[�y�(��T*p 0�e >g��!�Z�<s��n�4U)זN��aŲ��z;�V,@��Z�;�{���C���IJ���^��3�u6r���n��d�j�m�:+����%O���|������-�Ĉ��F=g�܏�_��c-3���s��Н&yT�T.I'ZB-���n�O;y�շ�y�A:�{�ŗߐ��yo����+�X�x��G��W$�X�b1ev�O0��>;�4�L@(��*b��CY��M��������!#����M���椏ۭ�.Da�JvMi��垧'�,��"
Y��4t������)fXD�W�,S���eg�������m��8B�t�m�$� 
�Ĵ����$H��罀��k�:l�����Ā�����˿����T�42�����V�vm�����\`���ժժ�t:#A, 6�4��A'���J)��E.�H�rz��!��g4����XH�I�ӌ<˙ڱ���F8W��Fk�V�v}g-���;�+�iÜ� �­��Ll�̖mS��"zdހ�-�4A��@�$P�U��tL:��	&��m�N��]'kNO�&Kb����#*U	�,_��'wP�)��Ȧ��))U*��#��8�8ܴ�����*�>������{�F��w�����(G9�;7u�5��800����4bG�!REȰ��Ԇ�"�AJ���i�k�RP*W�*tXr �L6�{}��2P�Xcp��共���7���M[�����0�` �i¾e�l?���@
���e�|h�T�9�r{h�/~�'[���w�^q{W�����`�a�d(jT�����֮�+�37p��'#���Om��l������&Bk!򆋿��L7S���GLL�h����cr(a���5�X�nkMcj��2����8���5�"ql�4��ft�!��:�h�p��X�s�Xg��B,{��ĝ�%�o�w����A���"�3t��V�h��[=�"��TCA�|���y�S�w���j��yY~P*��JQ��Ż9��x�SO�o�j�{���⥔k���72�{�$����9˖�=�3�2��T+%��,�:�������PA�,�	�5�,�u�7JJ�Th�#�DI�}��G"8�J�z�P*D�4bś_���|��a��|�`�D)A�Ա"$,WQ*#7m$a���RD;�T˒R�8�ЈG����z����3� ��˷���#���9��5��� ��`��z}�dO��se?�p�U�19 =>��A�J5�"Bg��lvƻ�����^obZ)�.@�vL6=M�$آ<h�&�2�\A�j�3ӵ� ��F�����UaF�q�,C਄>'·�!�E:G��>��N�ӔMw�M.J�Hˌ.(_��	�t��&����#HZdI�)Ȳ�v�r�Juqߋ�>��?�\j{u����z)Y�ė�$�9�V�ADE�9��A�=�0v6 Z�m,��!v�ފ�9���D���Q2�Y�c�0$,W�/!�F�	�����(������=�\�JsBJ>�����ǿ�%����r��J�:$�ߜ �fz��u=6�@����C�ջ��hSf�OE��S��0�/�U��e!wlx��}��Ge�Zr�/��ER�Q�����
#�¸_+�7
�W<��r�J��Rj�����z|0s ݿ.0y.��&wӲ�.I�����HrC�m�+��-`׎ݜ���ٲ~�J՟��9М��T.���DՊg�Q���8�C8��>(j�J	�8<�ϊ��xh�VD�:�p�+��4o�O\��H3oR��	�L'Π\�OƴM��`W�a��R*���h����6�jy�A1��g���?���<Hף��n/��͛7�}�Lk�a��K<��g�%���1�į�7�t#߻�:��:�u+g�>7�]A�\�p�J�,n`L��9RD�|��rQEczI][4��w�^~�����z��T�����M�g��$P]�w'�=��n������1<�����[�J�m�}��;� *!�D��R �«.�[���K�{�9g���g���Uď���y����YO&�u�\$!r&1i���q�R�v�6��a�׮0 !�H)�մu�= ��q_�s�	#��������8������-�/桻�BZ��RL��1�o,&�$�*�YFsj�攆G�T0�"p�ڲ�����	�([��{��&#[�|��3$%x�<mK��	ʶM.*��`:�8�2�у��q���k�,%�st��N���,b�P���_��/��W�z��͜s�9\���?�5����#�000�x�(�x����g�Z�n5Qj���M� ���18<��*(#�dl�.��=�FTT�5�R��CH���$}Հ�����G)��^�[s��O���0� ��s��T�&��߾�0�b�ᅋ*��N����
�������o1���p�>��/�|��¦WX��852%�R
��I�p��5i�*�٤�R�����@:��0�����r��Y:չ�j�0R�h&���D���H�֘<����Lq{j�5Y�I��')a��a�C�i�k�.�,g�-���k�R�<g�(A���*��kH� �E�LɩXqr�>�8� �@*ʁ@��nl ����cZkrm�ƃS��86`D���Eg�u�A�{șg��{��^"�����!֯���s���[����$��ӉSʕ*�Ɗ%�褎$��yVS.E�R�O$ZT��Y�������6Fs|�[w3t�^s�Sy��I�.^ʅ~)�t j}!�yЙ����t�$n5�Y�����fd��g�&+�|ڜ��yo8{��y�[~>=��;��F-.u�JV	�ډ\�X�@6�� p��T B�մ�!�K� L �)���<s�z�4Kʄe���L�QFyb��C��޺�,}}���O�Yu�qLl�Im�b:�:�JL��J)	K���C{j�?�����U��+����**���Oz�<s����L�_�H�d�]�!Il4S��ň��*J��j��"��
p¢�	1��8Am1C#���������3v�ߥ�x�ز�^����oÆ(�8�c	�V��F���K(2�"�k�%���j%�%ɶMQ ��Ǎp��>ti�ݝrϝu���¹�c��wr�qs��#�b�	�a�]�$T�l����0$i6z3��rTBG_N8��S_?or���3��s�%���� ����?j8O����4��1�H.7Nh\�6S���5�p��U����[����s��n I������0;9���d.s�#E�,�X��^*��XG�!�� &Iȑ�:#i7	��9���&ʷ�X��.�91Ux�l�N����عm���FȄ���J��K1�j�.��M�-��"����ncWC0~/��r��L7R߄d4��e_��\�SЎ��oÕY~��g=c�[?�i�T�� ����c~�s�#�-��W�-[� �$�J�Zs"B<�#O�����gq�E7ɳg}�K{��FV���ьN'�Oq��59�r�m��ʿ�=�V|��@0����'����pM�nm_�u��<�#��`Պj7���O�� O���;�N�����E�� K�t����`g�Nɉ� Ƒ \�0��v��*]1°xco�d�̍�ᜫ��p�= ��aVʖ�D9�B�S���\s���gzs+h$�r��M�SY��k���fՀ �4&�cZӍ^VxjtRI�¯�Nb�/�D#+X���t��;�3=�=xj�E�w7R�^s��稶w��<G�*�P>����%�pf����G���D2@d≄ʒ�G^rz�|��;�)�?��5�����>���yΏ~�#��n��n&''ɲ� �V�����^���x�<���(�\��W��4vS[��WM�F��g��"�:�]�/�j?�] *T B�"���sY��A���\�R>󅯰`�ރu?}�U����12P��'����P+;�`�C�?�r|�?~�W�΁�����e�]փ�'y� ~��nI��û'������\�p�v2��d�h���4]ŭ,�� !Z�S)e5���G� �P
#�̥�;�d��xà�	+�ܑi�:��	�Y����1��=�����Y�f3��_B(�����FG�q�䢉h�G����ep��A���h�qf�(q8�U�>���BH��ְ�kI�]/r���:'0N`�H!�\B6�k�]z�9U{���q��L����R���կ~�>��^K�\��fll���]=��������1}}5�RQn)�bM��
�P�h�5�P���k@H�TH�;4�j�4&F*�Y�A\R�+����_��{}!g��J~��o�WVH�2�*�'�]ď~���o��}[�l�(�~�w����5��"�R��֍�Å/=1s<5KZܹ;v�a����,mm��Q.q�fy.u)�����ۻ� �s� J<"lx��T����*0F$�j�C�֞@A���9rcQ�qԒU����
J��p�{%Bk�c���9&��iF\ob2���M嬿i�\ﳿh�!��)���Nt]����t�ɂBII�B!Q�BT�0��4S����q�7�'�N% ݵ�h�	�O��_܁y�9�����r���_��9���y���?�����UR�[C�;�}/�S�3�|`SD���$�*j�!B��a����*"���<Y�ɚ$�] �v���
<�D)E_��C\��I�_~�����곜�&b�!a��W=�7~]|��߹�g?���jC9�{�������BJJ��V���n[' ����°c|7[&&F���K��:�0H� �+A`��m����S�k�o
2�����z ��R�L�\I�ܝ�>P�գ����K��$�������|�" �."o5�Fq�Y(.���e�u]}[<�
#�,�v�RJK�ML'���B�c���4!}�a� ���^��לK(���L�و\�6l��W � �(�!I��1�Qɞ�_��־����d����՗~��͏��1^]xH��e��]+����1��k��Dp�̳��ǻ@,N��sL�a�7��q/��JK	�
AX.�t�#�q֒�mJ}C�<�Z""����j��[͙�Yao�A8AIF�W/��}���O>q����o>�ß��w��x�zǛ=�iϙsB�7��M>��OX6E�n���m������Z��$6g���4�Q�c-m�hY\�A�8�Hk�<�����e{�@��.��y�B��s�~Ky� F Z�j&�M��x2��G�����t�%�����RkO�Y�{,,�%)�#�'v9A�WB�1���O Y��;� ����=���_'(R������N�Yy*�S��#V22�K&�a�(�i�<��;6�PR�D�
(6,c���� ��n8���%�̾� |�I��v��	v���{�����ẝ��$_t��V_��om~��߾���}ꎻ1x��V<����s_T�����<�ؓV�˃�>y�s���u�i�g��S^E��*�> :�%`�# �v��p�NQ`z���k�ct����7���-Z.:�������s�8�z�\v�e�7�/��u13e����5[�>g��=����Gq����&����Ơ��<J��#;̺==�R�������`������2V;����ĺ2յ�NRO�G�,�9�>\����cj|�r��p�8��P.�1�b��BP���Nv-�Alױ�f����5j���}}DQ�L�p&G�/>��W�K���y�S!N� ��r!�>LR�  o#��v;a��a�C
oN�pD�"�qYm)��>w�KO���w��Ζ��s�o�� I��ʈ����<R�Q8��:-���7^q� ������C?�L���2`j��<��9w�:F�9&�!�7�\A�iX�T�)a�TJ��Ey�J_��1>4u���ٛ������'?�˃�ҕ��������OMMͩmSSܛ    IDATS�����P
X0"�.�C�_���ʕ�y�$M�����1m������smPmuZ
L^�x����ϵ��+l�R�����e�r `���SI�ԱC�v����GJ_��ZA���8ʁ��5�Z}���c��d�q�Q�^�4'��\F��j�1��a�3�N��C�E���	���W~�Q�%Y��&Ԏ|*�����a�<ex�j��v���bU�?RH��.(AP�,��Ȱ�T�3� �&~�(P���?UJI�(��(��s��<�/�/��W�x�����S���cW��?�<�E�����K^�y�
n�<;U*}�y�m�/g��UW��ۋ ����]���"�8+q�UR�\��6XgzU���h��Ld��0���r��Nڹ��߱㑟�|�3^�ʽ2����}���3q��L����;ϓ 	`���'?��w�?��ΟH�k�r[Fwp���-ι6��&��������@e�-��{����C��}�� ���� �ʁ�ӘZM�yn��gm�1��Ac�E��V0�8�-*��v���<H�&�s�����a�֜p��Zؒ�Vm�0��)��xo����(��&+������"G}�� �9���ӑ!��+
]�*D",CX ���T0B�h#)��� �TBc�\��!e���ʜ�L�{�ǜ-�re�<�_��޽�P͏�W��;�~:����qe8���<V�V��v�I���m�u�e_�l����Hy����̩��r/E��%}o5�]z葃s��3� |(9X
����>��w�/>$F~�RN�=���������4��!M�T�'N۬�MP�a�G�9�/�o����!O�LtX@+�ʥ��U��h�?���p�'x� 1��<ןjO�-��h��C��̂5�`����&Tk;=�~�[X��sM`�BY!�"���L��f��]% c���O�oEv�xCa-%�@����$�"�Lu��Ȩ�*�������o���:�, �
BE =%Ub�D����4:!Q����j�h���Ɔ�b���_���̽�c��7����N�駟�����qq���6 Iϟ�������|�=o��\����?�������o�UD*�䆛n둝~�u/X֒��r�ܐ�Nk��4wlv����u�n�m`M����v$y��v��7�$���8����s�>�<�<Q�+�0�^'WJe2���%S7=���!H,^;�8��W��D�p5��8�6�v5�k�_����$W:�	��<N<��É*e���b������
C�l�p!��6ڥ���z��,خ�砘u	=Y�
�BDXB���!(�#˃��0�<�k��E> $��r�J5𣿃�()�J��i��%�)�O�?x�y7~��W,\z�\'���~���e�-' j�w��jΛ��O�ȴ��ן����֏�?��O{sB	���=T��/|���;�a]�����-�v�i�@S:� �X��V�`9̲J�ry�e�?�b^�8!��R��4 ��l��\J���5��u�Pd��N��w�E6�CD9�8�@�j?�L��arM)o�JCt��oI{7i;�9���}�(Yҷp!�H!{ف��@\�)�ʔM� A�;��!�^�{����J�#+Ȩ�+���#T�J�GoR"TQ'd�"�QH))Ge҇��y��,8�g\p��̩`�|�+1�Ct�9�αn�C�g�E������zl��;�����h���K.��@
V��|������?�Ŏ�>Ǝ����$I����m����M'h \C
N��p6�Z�y��f��yJ�������9c��i f���4F)��\�Vʶr�>V�_!�ψk���=��s������S�X�R�֒@��B��L��`\F�<�P�!*�8��pu�M��R
�
�(	S�s�<A�>�R"�)��p�c�M^���'��1[oC �7����1w�A�JT��	��a?2Q�'��{��0DE��A@ �&����n�?�k׮����{����P��tZ��;#�߆������&�vt�������7R�Jr�?~~� _���f�|�X7�E�d�B�e�i�[�v5�u-�h!D'��6�+Q�V�PW���ߣ��ا� �o��D�^"�Y���{kEk���d6P���q�!��yl}���h�<��bc�$��i��I���S�W�ӛ! ��Ǻ.}%�d<�'�)�Q�f�ABо�N:j�{ۅ�8�)r9XV#W!�������i�z��z
A��7�][96�G��	Q̛��(D�J��7����y��,��P.G�st�yp�>��lΛ�� �ɷ�����]t�X,T�ɍ���u�Y6���ǙQ��r�kK�i�-6<���-4p�n��;�[�Z��$:	�v������L�{�sn>��4˲y���&O��-0a��J�����-�m���s#���	&:����&D�o����-�$�Ha�>�<�#(�=T�@�Y�0V"mN���U:t���pWk���PZBt��(@'B��3����+���d�$t��+OG���m�������ЍA�dyKH�ڊu
�f����D�`\�Hc PT�Y����E8�lߢ.� "g�J`�m[Q�����J�S��n<I�������׿a�}��? �,_Px݋O�}<<l�a��( �ܒ&1y��g;'wcE۹^�o˴��aq-�L�(K�E�n��Qd/6�.s�I)S��m��` fg?�8� h�B�TjѱV�:��7[�2��;�BTt����lp%��s�N��!��LJޜ�
m@8��+E��h)��8M=@9Y0��QDP)Q�$����r��4���z_�9�өojqE�48�3N'8���`�I���K;����b\C��
RQ��?::w�%OF�b����#�0�	��o�yb?��:��r�է�If-+�s���?��\����9�4M�{�z<�;���_���c���W��`�@��U�{ɛ_�J�t`��5��*i�`�<#K��q�>��	��6L'���4e��	S�y���<Z�����>M��E�=�l���R*�R&J���9�7���T'ɜ��Kک� p�Qno'U��S�UCCs�6c�6D%� }ʒ$9�x�� �VX�vLͶH�	�����?����Ȯ+^4 9�}��ȴ.+0:���O�څh�.ma��g8]xV{X��m1ڐg�<�ɳ���B7�7Y�5���2B�}'''�����cT�5��G_��Թ�cz�� �'w�9�fpp��j��:�� �=�IG���/��kV�XA_9ژ���vu�ߎHv2lc*%���M��t�M�Y���ͣ�t�64�s>�4�'.H*Q����܆�q@
�m��~����b �� ��`��8+Z��F�v��S+he�L{��N08u?���g*6Jk5��cb�A�D���Q!��D�7��"��\9<AG�s����y?�o��z��;_���>�,�`{a�3褘�ƥm��m\҂<��Ay6/���1Xm�Z���gq�<�Й.���]������ar"2���e��,<�s���V
w`sL����{�ھr�J�n/&�,⯾�������+�y,�-�r��J "��mS�z9��8���ʧ'�	�m:G�:����i�i
g;Ng����ݷ[�Á�����
!���� �JNCq����4m'Ec�:q�P�	2+�E���PH0α`�0'�����Z(��U�Z��)FVp&�5����\/���o!��;���J�3�>[x �P��+y֤�q��wpY���i�6�'O�Ҹ�^� 73��(��iN܎I;9Y�{#�k^����y������gQ&��Y�iO����������|�q���d�ʕ'�P���o�3�Iӽѡ�!l���
*�"P�@
�Z�O�i���e\�a�&�zp�:�N#�F���vd)�r���H�m�#���2555'�����q�Yk���H\�	��R�TJK+[���>ӗ��BIf����"ɋ�^��e��ak�Z���R��>��
rQÚ�8\��	B���\i��� �>j�*$%�$���(v?�J#�����ȁ�y:.m��[��&.��o�6i��&�1��'��M/�����hMw�F�s�Ns�$#M3�>��<����'�b��B��rmɴa�s����=���}{��j�*�`n��� �}���/^u�^(km/Y�H��W���v��-�0Y���m�}��HD��_z�oq-�l��YV��R3�=�Q��bNw�@&:`z�Ν�+ <�LQ�����-'Es���ٺs��	�"ђ,�����,.�I�'6��k"�5�
�7ѕRQE*�P�� /�3mѢ�GDBSR�!�?�J8��"�������p��6j �	����Z�ɍ�B�]�*� ��L�Ç�A�ZC�&��[����Lsƹ���^q��������z��}\�����i���q�y�����,v/?e�?ז�N:	xb�{�:��/x���|��W^y�^��R�V�Xˏ�˴!I���V���AA��M!\�
��Q��Te�rY�lƬ{e�G���@�J)w����%�s&l6��e��mb�����ޯ��E�m�v���ǿ:�4q� �mF�A{�g!�-��v��(�ɵFMm-h�%��TVS�E�BQ��PdH�@*"�zT�����j�p5���!��@����E�^��&d�����g���f��:����5�ӝ3O�1� �DD���E�۟�ڝ�`36t
�����DTPQ"фB�{son���5ש3�~�S���@��z�z��s�:�ϰ�^�w}W��6A�����י���J��gg^�?�㺔N=��1��ԴfZ3]����$U���ɿ�_��:λ���W_��=�۞�O�tW�#O��_>����?�P%�ŕ_|��|�/��'~q־�i����:���}�o�����JF�E>�;�7�=pP�!JO�w��=/�SO�W:(��_L���A?��?N�>�Uͽ��w�u��Z�RT pL	�M��h�W�d��H��3֍��k�`��@F��qɸ
�WDؽ�i���F��џT$�`�b���yD=y�~;��EB���CcH*&��S8�j�
��KD;U"ơ�֗�K�꽸]��-�v^���x�F|mP����M-_"Z!ڍiU�7Z�A	<雮�y����7�WO������Э���\t�C3�V��~�'��_���X���M�]���;��O{�����o��Ϙ�N ���I��ŖW\}A���g3��>���˿� ��m>�ߝy�oy�ٻ��"�F>x�םl��W�t�~�hϨ�+&.��Fc�Z�<�~5��	���N?fƘuAF�KQ�(�~ E���qDz՚�o}�����N.�*��y7}��r���|V.g��`")�h��W9V�Xf��L-&��-�~l���]f\Z�E3�B��a|�+�x�a�& �q����u�;��9��_��*;� |� 5����+7!��Q&���^�����*��#�.'�e�\Ç��O��y�C^~�1u�(��˻_�lV��2�����W���������o��L��'��~�{N(I�퓟����W]z���=��Ϻ�}���@��f��_p�Tx�G>�љ��C?�l�1���O&���`���@���7jGGY+��,M��C|���L��G?J}���n<�����x(���d��hX����8��K�{��N�i]i]���Di�6�C�!�X�j���K�;9�>�s�;Q�cⅪ�D\qv:"-6�2�@�)eBjr2�\�q�0��d��E�g�Z7�b�xig/�V��:�&}Ku�U���P3 ��:5k�/���)9aU���h�5tN�+[���0�Ї�0��/I5Ǌ?q�ч���0�U�"�("mp�~�O���g_����q�S���6��]�O��]ٰ���;����IW��/Si�o����-/��������s�K�������y�s��@�B"\0/�K����o����7O���|����y�����~]�M6ĳ)�]o�ޏ�*O���;���aO�^�w�,"��|�# ���Ƙ��xX� ����va~~l��92�E�L���k�7~'޳��x��Uņo�+n������F4l�#ѹ�.0Z�U-��1���Q��m�Ko�)��N��
��sO`�;Ɵ��xy��h�X�&!ټ��a�󾛅�&���J�z#	�َ���/1�H>�5v!@���;Q���
E�I����+~ov��׽�N��'Ղh�DNz�NW85+C
�K��PR��]y����/`m�+3θ�I��ٗ>�3ϻ�Qc�"�����/��o���?����;����/h�R]�j�VV\m�o�G�4�"'l�7�����-oa8<��(�Y�8w1&���z���UU`0>N�=�<Z�ϙ��^�����z6ԺM�ғ�D���IQ�;�p>���T~y����e< ���8}��Ð/e�eNRꜝ�J�Ҹ8)>=:Y{�Yў�.g�m�)U��%V�
��,������
��(2��U��-�&m��X�����1BYZ�F���^J�f1�Gf�8J�saOc��]B�1
~�?ҋ >�Cl9�Gs���L��3@K4�Ì����Y������Ԡ@
Jm&��Y�]xʅ������[�KWLMy��tѢ���~|��[�`�=��%6�Y� ����J~��_r��<����]�Z��<��}��Ba�y7� �ꌛgt��F��v�풫ʻ?u�����̹V�V�Is~���Q���g�Up%�+��1۲U��a��7���繶��{�� �}�]��p{�Vb ��8��W~���Te�����y�S��̫b$¦ "����с��؏%�I����V�����bw��,,,�����ȗb�x9!�	e��ڱuf��z�lJϬ,G��/K�OFx��ҝ�J�s��B�K�[���:2o��`��l�yNb@�r�ɽ2�,S�N�U��ܥTj_2n��y�MaSX-��!P7��%����~�:IR\c7�w�s��Q$����!T�����@�|����^�AH(H��R��D�B�R��*`�-��P)�"c���{Y	����m��t_<�%��l���=���wKs)g�s��>w۹K��m�w<�њ{b�����oit����!��:�G�d�ȭD�Nr�.�����`g�J�#�/�ᇏ��t����/��v7-�n�iՄ¡7C� ]f��m�����x�m�#U6���*Q�I4_e�8.���)����ϔN�S�_2ٗ��#���RW Sٲ:�(�1#�d�j�����n����7ǞѠϨRF.��<ރ�����|�}��Ha���+����F+�1U�����Fd!��w��Γ��V��%k�:x'L���f��!x6Y���<"\y��{��
�����1>Q��^P�:r?}S/}���ߧ?V;��A�QݪK�,������RS֛�%ԓ�:�z�%�BK�J&���1����;v��r-s��;Y�{;��>C��]Lݍ[�K<��	k��$T�ce.��E�14mh���f;�;^��ca�l��<�9a��pَ��F�u^^�/T�罯����y�ӟ�s�c.IӦ3�*zV�_f��d�جvxdxU��M�G�G����뮻�ᶿ��V��^�"��Ie��7��������?���<��G�ޱāl���z��R-W�?����$��W.G���6�0�*��1�~@-h�I����d�m;�r�5�)�:�:W�}��r���"��~U��ۨF�U[��KR�ɰ∌�_���������HvE ֒��X��y�/S#�DY�l6�]w���`�`�n������J8Ɓ�+k�T���-ᆏ}�47T0֒�H��Z�Ҋ�i��M,XL�dTT$u!4�ũ�|D���/�ү�}~�����dʠSo�����4��Rs�b-T.�}|1���W�g��������%���K琨�    IDAT��ZD�,�ێP����W�^�73z��| @E�p�GXT�� `�hȣ(�"g��u=��э�;oY-�Q��G9̍�ʈI)Ķ���E�O�m�KN<M�[�9�p1i�l�s�׈Ցk��)���.!M#F��5agD��#bS�ט:�W�Z"~�j������e�G�ePZA���z������������4�$���O��߉�x��g�,��ޫ���޴�*��y��52%S�R
�@U4(��Î<��E����3��/F14-�3`>�4!��$�qę��q�5��Pv�0����jB��4�|�O\�S�{64��o�R����3�Z\~�����y�g97��m�����~���������4涟'�ʹ�&�$)��yT�}��=ľJU�-��3�|�( 8)���Ee��Wf���Q��q$[u'�!�]��""k)��ƀT�G��#�8��*��xOl�9�Qi�|T0�R*"v��;���-���7ZvV;��LE�Z"�H�t�D=��%�a�O'�:D���Fz�Ud$�?��/�����T��IQ������>+����ķ�V,�H�q^bEY��a{�B�(H��0��INC<�v����8��������?�b���q�%V�dj��
�Z�Tv!W��%�I�#D�%�J#��'�_����0�!��˿��egCy�RLT�H㔢�k�(�,�{�]�tG#����7���u칹�����_5���(*���˓���[T�so��P��w�y��	V���T���P&�hRY;�����.��k��$�7lf������4A��*H��8��a�+�eu�k�TP��ސ0Ʃ%�1Fc���q^ /!��R�:Gަ� 5c@�L�/�GuJV���*�]�i����"�"	�R�ǴNu	�x�PRq$���~�3�ӧV�%W��WR��(����s�vm�����:�Q�ViF��s�n�7��c{R�0�!�W]u��P#:$OǫxZ�� C.�5ϑ��9qD	��4b~q�,/}�x�s~`�����3"�hY�fGB�:ڭv �MbD`RTd�	�ȸ~}����aЮE������O���'<�	g��;��/���5w���9����^�7�����nc�ܻw�#&W�rS ���e��4coe j�N}�:��m5�x{7�7��`�q�fe$!��+\��c��9|�(h�XO�6R�(d�XJR����aJJ"RɈ��!i�	������9��(Jh7���DCQ�H��LS~��J<��j���v�7�b��Mo��I)����1��8e`D	I���rAiZ!2JlB���2,��$lK�.�hG����N,g�KI�'�a��-ǝ��a�o�*TaM0���R�BhE�=GV�h)byX��"I��}��M����#���ϰ�����o����[��q�lo@Ye�(�<L��ȸ~c����0�S��^�����կ|�����x�y��u��t胫��}l�(��- U}׬���' (��ι�<B��� ��
��CP0vv�u}�f���q�쭎���8�;��Ǜ�D�rň�� zMM@�]p�]�/cB����1g�L��4Y��*J�U�f��,"c@=��%[�4�Ya���|��O�ǧP�)Ai�&�VV�ۿg6�~��Z��Z���;ɟ-��_��ԓ�ډ%6���P�U"	�X�fۛ��f����+��4b�����n���_���߼�۞��$LP���WJ���ؓ&){Zw��\�#%IR�̈_y����I�B�|�.�[PD�e������X����đ�%�I�+sn���ߛQ�_�u�_Sd�WՑ����;���\y��^��G4�T��ǔ�UU�vk��Rk�� �$K`�t@QZ�m�0��n�G�����ytd�Za�'}��ͽ�a5,�`ԅ4��6na�u)�h�\#
#Uƨ�V�qՠe�L-�)X/����85����"L����6�jv)LQwz��9S�O y���nA��"�2�S=��s���*ছn�������GƓ8c>�ڈ�BdC=�BC��)�2a�H�����a�L*hF�O�4�r濽��;C��I��{ڞ�Bw4��m1��|��}��dpl�$�\4/���z	Vٶ�y��b��TŘ�[ݵwx��BG�5`eU�5cd]��ާ=���및����e��'?�����s�c��}����k��1�|j~~�Qi��� ����H�(��4���9̆`����Ǜ�_�сaLg<�Ɠ�F$`���J���7�`(-R`��AFʄn����Qs,`'��BG�"GYy�((S�
�WFU�jU���(�rl8��HT�f�j�|��h���OY��&���TE����TX	U��	 k�p�c��Clë;QPG��dNy�܄s[9�u��Њ�Ҋ*�ѩh�V�E�-1�`���iJ7I�v�EVLh5R�$&m/<�����0�.X0\0oh5"Ba]P�Y^������~����jW`]�5��&¦8�TU�-&�O=�iO���h�ɭ���쪪^q����8��u:����w�}7�g�����뮻�QaW�rV '��@BE��&Ie��>�uUu]0�d�|ts��lP=�+��;�&T>bs��������[8/�7.��U�5�6�"!����"��gڤ�K�E1VM"�F�R2]�C��4F�[mԟ�Mi��(	F�c�s��|��s[$��^9;p���%1{ܘ[�rV��!�q�\�D�HxL{�5�c��=ɉ#���/���g��S��j�.&M�LJOd�aIw8a�9����@Xz�F9�z�KO�0��u�۪�ྜ?�\4���ʒ4� �(˙dZxp4����>�ʦ�Pր5�5U�ų�h/�j�����C�v�5?�я~t&��o���>�9��\p�����UMN޶o߾���T�$�y���_�
 N�P�h����ԙ���z�]]�X���~7�A5b�Tńm	�ۜȂ�A��<D�{9���#;�U���x"����4(�AM��7Qߠň9;���
�=��?����5�\������I%�^�ÒSGT�6��~�C^J��K�l�{0Z� �l�7B	�i����#��#���������x%1)&�5"<�f��5,�q�h*��;Z��� �����b�p(\ڻw/��[��5�\sB5d�:.]�\�hhł��l DOJ�l�joȾ������>�w:�nxϚS��ίy�֝��h?��xTD�<��]:��U�z�˯�������7�n�����y���=%i��{��9eB�N����������L?n���7�x��`��#_��@W�ׄ�T{z�,��(Z�F�*�֫x/�����g�����xn��u����o�<��4��ЬϞ�`sە,l~�=^����)�S�Y

��4�!5��B	��V�@=�B���v���?���iEMH�)�H�ُ��ӇT X�8�o}��qEɉ��&|��@�n�"�+�&�+�L�C��\c�|L!)�`�Ŗ�[,H� E,��;(����>�O��=�Z,��c-�҂���Q�We��TeFUM���hp���A����u0�V�cUE��E��}�R7�*�~�8O�w�w�_v�e�h4���^�����Jis����]YYy؜��z
��,�i��W�{����Z�/w`*'X+P��q<�he��^��#�uEWY)On<�m�}3o��$e���
JV��AԓD��ޭ���谓H���ji�	�)Bn�$�h���iQc�f*dN�lP�N�ǟ�֍<�@|ض�T\���ֈ�J������/��0Ro��ܩ>��a(@��'��Ӝ�ΰ���\p��rG'P�-4�%	o��ٹ�k�UL� M,6�H���)Q0�Ij�cK+ͦp�\�9m�e=���Uv$���\���f'�yA["+�'��ɤG����ý��ʃ(=`CaXE�
�׼�:�n��^�nHey�/)��=���{6���U�D�E�z`/p�����h��g��yŬ�?��?=�8R����m�g�W���V<��F���Ǔ�
@!�]�`�AWTt�a��������use��W%�;v���8Gd��s lB7� ����	����Q�a4g��Tjkb���Or�R��c"��SA=َ�v������U��ښ�S~�"�6�V�����}�Ę�2�����`�Xj����H[�ʈ�H���~.�/���B�?8�-O{�*�;�8�-�K�$A�pjI���`�s[�$+����ڎ��sv<��%��턋�a[��|3e��\H�Z����#�B߻op�X�+*t]GXV�`X5�k�uS�^�nhQ������dZ/ �����?���J���Ƙ�~����^��g?�~NR�!/���NѪ�>`���w���O��`*'������C�KcueۋwΉwדּ�_Jǔ�Y}���1f{�J�*���V�*�k#��*U����|Ğ�CU��@��u�� ރ�gR�굡Y bR�� �jƟ���T�q����� QM��ǯݢǮ�H����[�R�O�1(
02��;!6�����+�AVrɒ'a����	�"c!ɉbÑqĞFN���g���;��3_�s���^�|����,���������l�1��YZ\@����f��<si�s�ߙ⵬Ӕq͛J���QL<��w8�������{*l��UVUXt�{�Pl���2�
3ȗ�)���@�q����W��L�>0�٥�8Ϳ'�n��:��ʯ�J8�j."�c>ˣ �9^��,��l����@��&.��ԙ>�t��Q����˷�?x�͛rw�JY�c��[��A�HM��Ҫ6 ]����dj1(1.�8&B�ΒǻhۊR,�'8��z_���P�'up�)�Ҝ�h�Yg�F�M����4�0���T�r!�����y�]F�\|x%�'�1��JC���.������Z��ɘ��8N�Ʋ#�t���l�F���=�u�E��G�>g�|��(#�'�\��xH3M(�"3+��<"UU�]b6��\JYU�@6)����qz���k��u�oCC�e�(�"�zeM�n��^�PFY��9ʽuz���0���-�z���7�P�"r����.���͒�Dp�M���v�"I��x2�۞X�Q���ft������8�M>���)*�����	�N�U�i��Od�t!M��
���жI�B���fB�K��\h��&Gd4y�Sf�h]Ǌ2)�Lw��[hF��G������^0!�щlMu"15'!���F�5��Xl7ȝ���,&A�P���"2�]���&��ǚ���_f����?��t&��vB�9O,e�^$q�׊v�I�<j�HP<�4c!���TŐM
�2n��7�[��{l���),#,��b�(ʊ�n��:�����x:����K�<���vg����E[]�r�z��{��G���W��SӃ�T��iJ^E�X�Hd�N����"����?����;�ڜ8�8_Q9Wv�?�=J�^�,m�L�v�ѮK�4v�2��RyŊ��E�ڔJC^�{j�|m4�Ͷ%��/�^�g�'X�'>���I���\���_v�C_����J�y�J������2(�q�d�D��Z4�:Jv��������� �����f�ໞ�=t\�C�J��"����z�F�VeݱI����<�s����d��g�������D�Et��Q�ptY=k�T㺥VCSţ�&�����>��8����v��,�8|����C�������ߞ�W����J���:e: ��l��&2]����k����l����X}���}�DBj�9��u@-��fLGw������t��_B��_�aP'�,c��B}���?`�TKʀ�=q� ������4󿕺;�u�h�?��?m�*.�Fh&Jd"RkhŖ��b�Y�	󱲽Z��2�8���Ři�?�'I�D1�QATG�Mli��O~xv;�׽�/y�SG�~N5��0�&�T�$+Bju\8"�Xz��t�+&ܲ�<������>�lxXU���Q���8�VʲzV+�Z��U;��C����*8���Q�� eY��}�X����4M?q�u�=j����+]��wL	@1�gR�d�|`��Y�����e�=���nl���Yt���y�B�A�%`�,cpXJ�b��`/�M��tp%	%�8.�� ��Ή�BωL����u{*tw<a���d�bҀq]�<��_\�ya���w5�PKZI�CU	F*&�b���LH�#���cmLb�������i�5i�a\��/ 21�Q�m8�T|�m�1s<�����K�H���b����a�"��g9ޕ|����ᩪ���н����EeS�5]e�l1��F������y���\������V~�N��׳���fUD�y�M7�?ڿ?�� ���K2�(���JM�"�~�2"G����އ����;���J0�����ʱKH^ئ}�^�x�Lz�٨w�n@�
��8�	TeQ��4^r�s��! X �в|J���ip ����?=�XS"�G�z�:��˙KMl��8�Kv����Hc��+��;�:,�� 6������`Od<�9�$�9G,ʟ����+������(����yh�b�1\���iD�F�p�n�Pq��Z��>ӹ�B:��uD8*�#������qvC�w*�����e2�L���#�/��~�����z���U�}ƘOqz2�G,_Ii�O�DV��X=��f�Ф�x\�9��#-��h.b2�L�{h��it֥�[�hD���1	~�1[�oS&�2�$��8,��H��l#�յ�^M]@S�C�a��>��(Vs��(Z�
CӄJ�Fl(� ,��?=D5!�J Ԥ�9}HcKw0��Q�R��jk�9�+e�c�1$iB��H�)����Vb6pA @�w̷b�4��m��hУ=*��k��Q^����\�'f�;:c˹K�s�B��wE������2ѡ #�"u)����	tU�Zվ�hh�Fv�(w�~��fڸs�.~�&����nw&Y�q�+�&k�_�r�-��w�|�X S9%8x�v��ɪ(ኾ�tTed�9���*�9\�;���']?v��4q���*�@p�3c"j�,-9C�4M�A��\��汗�@�m�rϒ��`��$&���*؝���T)���L����[�$5��"��(�������q朥�$����F�ĵߏ2P1.��\��	�<��`)y�F�rf�+�v���uč&`X�+.��WMpŘ��u7����^���ܬ�uY=G=����w��e�u�9]/��t�z�;��?p��W��9��pDU���Nf����k)���w���q����/�8���60��!��lȫ��V����[a6mdVA��{=�^�ʑ�jy���ޱ��^�4��o��-<�u�AԑPq��Qx��b�J�����@���1�,@���W��5Q�b�;��9�8oy�[��b\�B���a�F�,4*����t�07ߠ;���e����XR��-8�����('ք�>�+O��֗Ϯ�{�U�p��^ �0⩪���pۆＳw���"]GdED�b8�ᰁ�(GUu�z]��k�CSţ�1�m�mG��~&�T���L�M7ݴU��T�=��ܻw�Â?�jrN�̼�28��϶ᣒJ\Qz�N��"�ƈ�0d�^�?��O_xV���G�^Lއ���(!f���
˼��HY���^��G��܉�!��֢������FMk>ur�"�����]��� �4�Ġ��1���h��(ۚ^�L&Y�R���J#6 �D��ЄE���C;�0�I��K��0�4E�A��s�M�y�'x�O�����x�s>��?�P?����h�Vt@�"�W����o��tU}��v`ԍJo��ټe�ŨI��B�7(�S�����EU�nw&�w0l5vr�G��[o���;^�� ̈�����U9κ��1�q�DU'*L�c/f(�H+�?8���v�E��ϸp��KEC�ߺN֘� ����,  �IDATTQ�g��G�4�p�$+Jv%%�b������GP��&�݉!���w?�ƫ*+.��g�r�n��!�4�v�mc1��JZI��%����c�cJ�i�P�%V�A��.�+C�����#1f8�XhP������<�O���:�i����qg�����UF��_{�l��JWѾ��C5d�ٌ�UcP��C���}_�U8~m�۽m־��x����T�z;�Vc�}_�1/_�
 N���C�Yß~��jRR��(�'�d�t䌎?����*���ɺ�}t��$s��n9۴n�"���$�F�wU�RaN*ڑA#��M���LW�m۶���{�;G;��|9�~�Th����+_�J ��#��h%-��$�œ%I�X٪5�*�0.��E�.;P�Z���)�(i�P� �պp�eJ~������M31��=?�|�7=��o}��$��� ��J�H�R��{��\d37�y+�<�ұ�ɓ�6�:���˲<�Er-�|�Vī�}�o7�n���G���p�50KN��ra��5`�RFD�
W�]TvP������A����+��[u�����}C�T^�����}��02VJ,�r�lrqsv�וW^�c= �V�P]HM.$!���_8��5�m��)³UD����j�� f��9�\�w-��Lj&]�V�R�18U�1��ds��F��yjE"��c�%�h�N���w<��`�]�������s�۵������pX�U�+b̚�߈��lb��e#�fE���#'�����~����N�����_��u��b�Ƙ����o|T���=9M��W��ԙs�滰͂xR�D���h���XmG�9]0GUX2�y]�cIv>n)��ǦfwM�[+�j��x�����%��\s��K�`����+«���S��������#�RTpI�G�T[��.�H�O(��U�BӴC0�Z0(&�!���/�5�Ԉ��ĳ���_juk>������5����ͷ�mNS�8�����3jN���f��d���4����/�����^������N���~��N�T9��oN��>��O>�N?����p��I�����k�8��**)ʊ"J�\\��:�0�#�:40P�y#�W�<]߽���[��N�����ŗ�g>
O�A�(L\�9)���k��Y3���{��c��cڬ+��7|����K^Zvʼ�I%Дo�(S�p��	�J"揯�0���B�c��Fl�-�ھ�C#w!�B˃��sc�yx#@$�x�I>��<����}�×�޽��������_��\���8�;7*�&�oSm;������{��J��y��~v��Z������7�q���޿UU�䓟���jl%�3m�W�(�k�}г��q�V���9��0��E��
9J���1J2AuB�����ލj�g3����i'	��Bs��?�y����f�ȃ\��Z�Ί�á�'�"���g���3O�mo{ �8ΊG4ɷ�t�$��y�`�k�-�z)��P8%�1Q���xU��u�c$�X�^�����?���d�?v]T���ЄcS��z��+����I�h�⊯��H5��w��{�S�j����M�r~���.n틴�O��k���C����1>�� "���1���~������� ONJ����`�K�-G�W�QB*.ib���F���Pm#���Fi"�Fi!��jS��ҹs�%�]0�w�U���`�s<����:��0lT�c��K^�N��'��k����7+;�	�$�R��Y��>�:sq촧5�*bRj�v�9oсUk��
���a\E��B�ݜ�n_��%��<(F��0e�E� �#TƂ9�,i�����'5����~��$j���K_�җ���^��_E���S}|�O��t��O��)��7�p��0-�UDު����ۺ_��N��xx2}��w����A;���wQ��*�(�+��21$c!�C3(m��1M��
mT����<4q�״������/wՅƞx���<�Wq��C4!£
F�Y?��̜���6�DiH�f�X�01-�Y�C�:�1TU ��KEmL3�4" G$O�h�!��c�Ž���z�츌(
TrD&�d�f�2�05cԏ	:������(̽ �=������>�7���Ɏ;����g�gED���<�Q����_��ɲ������͞�,@���׼���@GD�QU�Z{�-���E�͒�� >w�i\�;�I�*�
GT:�(!�>I�k��4�k�MQ��h�j���Rն`@�/z�E/��<k o��W�����n���	?�g~ǩ$�JL����x��\��0g�`���QGJ�ф�R	�Q���J�&�Ĺn�ek7�c_�&9�
��
���\!Q�E�Pɼa��Xԏ12Be�Ǣ�U*���_M�H�ڦ���qq�~/��Ed'�¥��-���7����&��r�W.��kU�ǁ)��*�=�_.--��B��~��
����.�;��%Q��8I��#�|��HS��h3
�-<MQ�*�-���"�B�q��?�Hz��7���{h�����Ϲ�Gl WPk�GJ��մ*:�/����(�U���w/�qdU���ܪ�v'�+	�F�Q@^ !�P��)Fl��5�$Vh� ,Y �9�XY�	0����c����Uu�9,�:i:�$0N����QR�|����R�2F��;f�2�ֻ�+JR�t��$ھ�:1焴��c8���6�s��)�S�<ue��e��4U�<�՗_���/��$?`�o"r��o���gu&� ���UUU_s���5�-��l�UJ����3��E ݉�fA�3�Ej���B��R���U6�c�!+�X�����_���/~����/7��ݽm'���?�ۤFr�3�A׹���`N( e7t�H(�܇�����{��er lਝ��91InuN\8�aZ�L�k�k�lJa��f*���\&�Q����˗�j}�JJ�3 ^r���������;�9)��ׯ�0�� `�T���{�o߾�S���4D ���=ta��0Ȇ�eY�̆2����>�`������o|��,���������a ��x|o�������������� �t��O"{��gX7� �L@�h�lh�ֈ�qr
C��i2֐<u�ԅ����ωm[K[�qȇ�,a�.�`~��]޸q��nݚ���<����b8z�39�L��[�#  n<�ـ4�*d�QdG�E�P&TټJ���0���$�����|��~����X��w�4��w�����s]��?������|�~���P����.���Ifa7E�����$�1e���M��ɉm��m��m��+K��
�؁�7�<�޹-��I�ӳ,�~��W f��0����AZCQ
�H6(�PHᕹF/\~q��o��g?sccc�r[[[�y����� �ǹ�l��í�9:@7�p~���	������ȭ?�'��|�>�Y �Ҍ9��Ԥh��I�Zb��ؖIr3�\ȡV	zXv���� �%�=���D <�a0� �  ��*�b����!�Iim��/W/}���*��׮]���,{\5I5�;������&����C<��� �1��]�P��A���J��l��:al`I��ԖP
������
Bg��U�]��������(�g$��;)fW$l ѫ`�"�$����+�X����0}݁WI^��.к�]w{W�fkrp�����{��������t��?	#iBhK���:	�pZ��&X�>�I`G	�L���~�У�����0 �Y d���m�CX]�2Z���r���y��w?���/�>��������fw�Ra ��'�ZM�����	��B��� 
�^ߕ�;�R������|��g(�|X��a �'��!�>�V�F/U1T�d��{n���g{I`}ρ��Ç�����_�p�����ݾ�� D�E�P >迧/�����ϫ���@8��|H���g! P�*`�|�K�P�����M4��r��>󸢎��9�|x�~zTX,�?���o�QE�E <��d�����}���}�B���D ��:�}�B!�B!�B!�B!�B!�B!�B!�B!�B!��8Fg�	!���o0�ٯ�n�    IEND�B`�