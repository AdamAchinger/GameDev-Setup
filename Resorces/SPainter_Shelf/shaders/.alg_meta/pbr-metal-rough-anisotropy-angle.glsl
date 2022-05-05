   	     r e s o u r c e _ v e r s i o n       /9dd1edc06dfb7e626c273b298255107d0106f738.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           F l a s t _ v a l i d _ v e r t e x _ s o u r c e _ v i s i b i l i t y   
   � # v e r s i o n   3 3 0 
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
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
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
 # e n d i f     / /   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 7 ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d 0   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d 1   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d 2   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d 3   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d 4   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d 5   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d 6   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d 7   =   i n _ u v 7 ; 
 
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 # e n d i f 
 } 
 # l i n e   2   0 
   > l a s t _ v a l i d _ v e r t e x _ s o u r c e _ s h a d o w   
   � # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
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
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
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
 # e n d i f     / /   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 7 ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d 0   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d 1   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d 2   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d 3   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d 4   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d 5   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d 6   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d 7   =   i n _ u v 7 ; 
 
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 # e n d i f 
 } 
 # l i n e   3   0 
   0 l a s t _ v a l i d _ v e r t e x _ s o u r c e   
   � # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
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
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
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
 # e n d i f     / /   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d 7 ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d 0   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d 1   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d 2   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d 3   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d 4   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d 5   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d 6   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d 7   =   i n _ u v 7 ; 
 
 # i f   ! d e f i n e d ( V E R T _ N O C L I P P O S ) 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 # e n d i f 
 } 
 # l i n e   3   0 
   J l a s t _ v a l i d _ f r a g m e n t _ s o u r c e _ v i s i b i l i t y   
   g� # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # d e f i n e   S H A D E R _ F R A G M E N T 
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
 # l i n e   9   0 
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
 / / -   ` g e t S p a r s e C o o r d L o d 0 ` 
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
 / / :   p a r a m   a u t o   u v t i l e _ r e f e r e n c e _ s a m p l e r 
 u n i f o r m   s a m p l e r 2 D   u v t i l e _ r e f e r e n c e _ s a m p l e r ; 
 / / :   p a r a m   a u t o   u v t i l e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ i n v e r s e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ i n v e r s e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ l o d _ b i a s 
 u n i f o r m   f l o a t   u v t i l e _ l o d _ b i a s ; 
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
     v e c 2   d f d x ; 
     v e c 2   d f d y ; 
     f l o a t   l o d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 f l o a t   g e t L o d F r o m R e f e r e n c e S a m p l e r ( v e c 2   t e x _ c o o r d ) 
 { 
 	 v e c 2   t e x c o o r d r e f   =   t e x _ c o o r d   *   ( u v t i l e _ s i z e   *   ( 1 . 0 / 1 0 2 4 . 0 ) ) ; 
 	 r e t u r n   m a x ( 0 . 0 , t e x t u r e Q u e r y L o d ( u v t i l e _ r e f e r e n c e _ s a m p l e r , t e x c o o r d r e f ) . y ) ; 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
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
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   [ D O C - O N ] 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   ( m u s t   b e   c a l l e d   f r o m   f r a g m e n t   s h a d e r ) 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   d F d x ( t e x _ c o o r d ) ; 
     r e s . d f d y   =   d F d y ( t e x _ c o o r d ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   g e t L o d F r o m R e f e r e n c e S a m p l e r ( t e x _ c o o r d ) ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 # e n d i f 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   B a s e   l e v e l   s a m p l i n g   v e r s i o n   ( c a n   b e   u s e d   i f   o u t s i d e   f r a g m e n t   s h a d e r ) 
 S p a r s e C o o r d   g e t S p a r s e C o o r d L o d 0 ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   v e c 2 ( 0 . 0 ) ; 
     r e s . d f d y   =   v e c 2 ( 0 . 0 ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   0 . 0 ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 / / -   R e t u r n s   L o D   B E F O R E   L o D   b i a s   a p p l i e d 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     f l o a t   l o d f i x   =   c o o r d . l o d ; 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   l o d f i x ) ; 
     } 
     r e t u r n   l o d f i x - u v t i l e _ l o d _ b i a s ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y - u v t i l e _ l o d _ b i a s ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 / / -   C o m p u t e   t h e   d e r i v a t i v e s   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 v o i d   t e x t u r e S p a r s e Q u e r y G r a d ( o u t   v e c 2   d f d x ,   o u t   v e c 2   d f d y ,   S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         f l o a t   l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   c o o r d . l o d ) ; 
         i f   ( c o o r d . l o d ! = l o d f i x )   { 
             / /   F i x   d f d x   d f d y ,   t a k e   a c c o u n t   o f f s e t ,   n o   m o r e   a n i s o t r o p y 
             v e c 2   d d f i x   =   e x p 2 ( l o d f i x - u v t i l e _ l o d _ b i a s )   *   u v t i l e _ i n v e r s e _ s i z e ; 
             d f d x   =   v e c 2 ( d d f i x . x , 0 . 0 ) ; 
             d f d y   =   v e c 2 ( 0 . 0 , d d f i x . y ) ; 
             r e t u r n ; 
         } 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     d f d x   =   c o o r d . d f d x ; 
     d f d y   =   c o o r d . d f d y ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     r e t u r n   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   d f d x ,   d f d y ) ; 
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
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         v e c 2   d f d x , d f d y ;   \ 
         t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ;   \ 
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
 i n   v e c 4   v a r _ c o l o r ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 7 ; 
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
 	 i n p u t s . c o l o r [ 0 ]   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 0 ]   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ]   =   v a r _ t e x _ c o o r d 1 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 2 ]   =   v a r _ t e x _ c o o r d 2 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 3 ]   =   v a r _ t e x _ c o o r d 3 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 4 ]   =   v a r _ t e x _ c o o r d 4 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 5 ]   =   v a r _ t e x _ c o o r d 5 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 6 ]   =   v a r _ t e x _ c o o r d 6 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 7 ]   =   v a r _ t e x _ c o o r d 7 ; 
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
 # l i n e   1 8   0 
 # l i n e   0   4 
 / / -   l i b - v i s i b i l i t y . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 
 # l i n e   4   4 
 
 / / -   C u r r e n t   U V   t i l e   i n d e x 
 / / :   p a r a m   a u t o   v i s i b i l i t y _ u v t i l e _ i n d e x 
 u n i f o r m   u i n t   u v t i l e _ i n d e x ; 
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
 	 f l o a t   l o d   =   g e t L o d F r o m R e f e r e n c e S a m p l e r ( t e x c o o r d ) ; 
 
 	 i f   ( u v t i l e _ i n d e x = = 0 u ) 
 	 { 
 	 	 r e s   =   u v e c 4 ( 0 u ) ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 / /   S e e   s v t / s v t v i s i b i l i t y r e n d e r . h 
 
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
 # l i n e   1 9   0 
 
 / /   A l p h a   t e s t   /   b l e n d 
 u n i f o r m   b o o l   a l g _ a l p h a _ t e s t   =   f a l s e ; 
 
 o u t   u v e c 4   o c o l o r 0 ; 
 
 v o i d   m a i n ( v o i d ) 
 { 
 	 v e c 2   t e x _ c o o r d   =   v a r _ t e x _ c o o r d 0 ; 
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
   B l a s t _ v a l i d _ f r a g m e n t _ s o u r c e _ s h a d o w   
  Ȩ # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # d e f i n e   S H A D E R _ F R A G M E N T 
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
 # l i n e   9   0 
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
 / / -   ` g e t S p a r s e C o o r d L o d 0 ` 
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
 / / :   p a r a m   a u t o   u v t i l e _ r e f e r e n c e _ s a m p l e r 
 u n i f o r m   s a m p l e r 2 D   u v t i l e _ r e f e r e n c e _ s a m p l e r ; 
 / / :   p a r a m   a u t o   u v t i l e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ i n v e r s e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ i n v e r s e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ l o d _ b i a s 
 u n i f o r m   f l o a t   u v t i l e _ l o d _ b i a s ; 
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
     v e c 2   d f d x ; 
     v e c 2   d f d y ; 
     f l o a t   l o d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 f l o a t   g e t L o d F r o m R e f e r e n c e S a m p l e r ( v e c 2   t e x _ c o o r d ) 
 { 
 	 v e c 2   t e x c o o r d r e f   =   t e x _ c o o r d   *   ( u v t i l e _ s i z e   *   ( 1 . 0 / 1 0 2 4 . 0 ) ) ; 
 	 r e t u r n   m a x ( 0 . 0 , t e x t u r e Q u e r y L o d ( u v t i l e _ r e f e r e n c e _ s a m p l e r , t e x c o o r d r e f ) . y ) ; 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
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
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   [ D O C - O N ] 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   ( m u s t   b e   c a l l e d   f r o m   f r a g m e n t   s h a d e r ) 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   d F d x ( t e x _ c o o r d ) ; 
     r e s . d f d y   =   d F d y ( t e x _ c o o r d ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   g e t L o d F r o m R e f e r e n c e S a m p l e r ( t e x _ c o o r d ) ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 # e n d i f 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   B a s e   l e v e l   s a m p l i n g   v e r s i o n   ( c a n   b e   u s e d   i f   o u t s i d e   f r a g m e n t   s h a d e r ) 
 S p a r s e C o o r d   g e t S p a r s e C o o r d L o d 0 ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   v e c 2 ( 0 . 0 ) ; 
     r e s . d f d y   =   v e c 2 ( 0 . 0 ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   0 . 0 ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 / / -   R e t u r n s   L o D   B E F O R E   L o D   b i a s   a p p l i e d 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     f l o a t   l o d f i x   =   c o o r d . l o d ; 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   l o d f i x ) ; 
     } 
     r e t u r n   l o d f i x - u v t i l e _ l o d _ b i a s ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y - u v t i l e _ l o d _ b i a s ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 / / -   C o m p u t e   t h e   d e r i v a t i v e s   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 v o i d   t e x t u r e S p a r s e Q u e r y G r a d ( o u t   v e c 2   d f d x ,   o u t   v e c 2   d f d y ,   S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         f l o a t   l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   c o o r d . l o d ) ; 
         i f   ( c o o r d . l o d ! = l o d f i x )   { 
             / /   F i x   d f d x   d f d y ,   t a k e   a c c o u n t   o f f s e t ,   n o   m o r e   a n i s o t r o p y 
             v e c 2   d d f i x   =   e x p 2 ( l o d f i x - u v t i l e _ l o d _ b i a s )   *   u v t i l e _ i n v e r s e _ s i z e ; 
             d f d x   =   v e c 2 ( d d f i x . x , 0 . 0 ) ; 
             d f d y   =   v e c 2 ( 0 . 0 , d d f i x . y ) ; 
             r e t u r n ; 
         } 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     d f d x   =   c o o r d . d f d x ; 
     d f d y   =   c o o r d . d f d y ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     r e t u r n   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   d f d x ,   d f d y ) ; 
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
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         v e c 2   d f d x , d f d y ;   \ 
         t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ;   \ 
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
 i n   v e c 4   v a r _ c o l o r ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 7 ; 
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
 	 i n p u t s . c o l o r [ 0 ]   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 0 ]   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ]   =   v a r _ t e x _ c o o r d 1 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 2 ]   =   v a r _ t e x _ c o o r d 2 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 3 ]   =   v a r _ t e x _ c o o r d 3 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 4 ]   =   v a r _ t e x _ c o o r d 4 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 5 ]   =   v a r _ t e x _ c o o r d 5 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 6 ]   =   v a r _ t e x _ c o o r d 6 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 7 ]   =   v a r _ t e x _ c o o r d 7 ; 
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
 # l i n e   1 8   0 
 # l i n e   0   4 
 / / -   A l l e g o r i t h m i c   M e t a l / R o u g h   A n i s o t r o p y   P B R   s h a d e r 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r i e s . 
 # l i n e   0   5 
 / / -   l i b - s s s . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t S S S C o e f f i c i e n t s ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   6 
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
 # l i n e   0   7 
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
 # l i n e   2 5   6 
 # l i n e   2 6   6 
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
     f l o a t   l e v e l   =   m a x ( 0 . 0 ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d )   +   u v t i l e _ l o d _ b i a s ) ; 
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
 # l i n e   8   5 
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
 # l i n e   5   4 
 # l i n e   0   8 
 / / -   l i b - a l p h a . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` a l p h a K i l l ` 
 / / - 
 
 # l i n e   8   8 
 # l i n e   0   9 
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
 # l i n e   1 2   9 
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
 # l i n e   9   8 
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
 # l i n e   6   4 
 # l i n e   0   1 0 
 / / -   l i b - p b r - a n i s o . g l s l 
 / / -   = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l _ d i s t r i b ` 
 / / -   ` G 1 ` 
 / / -   ` v i s i b i l i t y ` 
 / / -   ` c o o k _ t o r r a n c e _ c o n t r i b ` 
 / / -   ` i m p o r t a n c e S a m p l e G G X ` 
 / / -   ` p r o b a b i l i t y G G X ` 
 / / -   ` p b r C o m p u t e S p e c u l a r A n i s o t r o p i c ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   1 1 
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
 # l i n e   4 8   1 1 
 # l i n e   0   1 3 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 3 
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
 # l i n e   4 9   1 1 
 # l i n e   5 0   1 1 
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
     v e c 2   d f d   =   m a x ( c o o r d . d f d x , c o o r d . d f d y ) ; 
     d f d   =   m a x ( d f d , h e i g h t _ t e x t u r e . s i z e . z w ) ; 
 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   h e i g h t _ t e x t u r e ,   c o o r d ) ; 
     f l o a t   h _ r     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     0         ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     0         ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ t     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ b     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ r t   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l t   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ r b   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l b   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
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
 # l i n e   5 1   1 1 
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
         v e c 2   X i   =   f i b o n a c c i 2 D ( i ,   n b S a m p l e s ) ; 
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
 # l i n e   1 4   1 0 
 
 
 / / -   B R D F   r e l a t e d   f u n c t i o n s 
 f l o a t   n o r m a l _ d i s t r i b ( 
     v e c 3   l o c a l H , 
     v e c 2   a l p h a ) 
 { 
     l o c a l H . x y   / =   a l p h a ; 
     f l o a t   t m p   =   d o t ( l o c a l H ,   l o c a l H ) ; 
     r e t u r n   1 . 0   /   ( M _ P I   *   a l p h a . x   *   a l p h a . y   *   t m p   *   t m p ) ; 
 } 
 
 f l o a t   G 1 ( 
     v e c 3   l o c a l W , 
     v e c 2   a l p h a ) 
 { 
     / /   O n e   g e n e r i c   f a c t o r   o f   t h e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   n d w 
     l o c a l W . x y   * =   a l p h a ; 
     r e t u r n   2 . 0   /   ( l o c a l W . z   +   l e n g t h ( l o c a l W ) ) ; 
 } 
 
 f l o a t   v i s i b i l i t y ( 
     v e c 3   l o c a l L , 
     v e c 3   l o c a l V , 
     v e c 2   a l p h a ) 
 { 
     / /   v i s i b i l i t y   i s   a   C o o k - T o r r a n c e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   ( n . l ) * ( n . v ) 
     r e t u r n   G 1 ( l o c a l L ,   a l p h a )   *   G 1 ( l o c a l V ,   a l p h a ) ; 
 } 
 
 v e c 3   c o o k _ t o r r a n c e _ c o n t r i b ( 
     f l o a t   v d h , 
     f l o a t   n d h , 
     v e c 3   l o c a l L , 
     v e c 3   l o c a l E , 
     v e c 3   K s , 
     v e c 2   a l p h a ) 
 { 
     / /   T h i s   i s   t h e   c o n t r i b u t i o n   w h e n   u s i n g   i m p o r t a n c e   s a m p l i n g   w i t h   t h e   G G X   b a s e d 
     / /   s a m p l e   d i s t r i b u t i o n .   T h i s   m e a n s   c t _ c o n t r i b   =   c t _ b r d f   /   g g x _ p r o b a b i l i t y 
     r e t u r n   f r e s n e l ( v d h ,   K s )   *   ( v i s i b i l i t y ( l o c a l L ,   l o c a l E ,   a l p h a )   *   v d h   *   l o c a l L . z   /   n d h ) ; 
 } 
 
 v e c 3   i m p o r t a n c e S a m p l e G G X ( v e c 2   X i ,   v e c 2   a l p h a ) 
 { 
     f l o a t   p h i   =   2 . 0   *   M _ P I   *   X i . x ; 
     v e c 2   s l o p e   =   s q r t ( X i . y   /   ( 1 . 0   -   X i . y ) )   *   a l p h a   *   v e c 2 ( c o s ( p h i ) ,   s i n ( p h i ) ) ; 
     r e t u r n   n o r m a l i z e ( v e c 3 ( s l o p e ,   1 . 0 ) ) ; 
 } 
 
 f l o a t   p r o b a b i l i t y G G X ( v e c 3   l o c a l H ,   f l o a t   v d h ,   v e c 2   a l p h a ) 
 { 
     r e t u r n   n o r m a l _ d i s t r i b ( l o c a l H ,   a l p h a )   *   l o c a l H . z   /   ( 4 . 0   *   v d h ) ; 
 } 
 
 v e c 3   p b r C o m p u t e S p e c u l a r A n i s o t r o p i c ( L o c a l V e c t o r s   v e c t o r s ,   v e c 3   s p e c C o l o r ,   v e c 2   r o u g h n e s s ) 
 { 
     v e c 3   r a d i a n c e   =   v e c 3 ( 0 . 0 ) ; 
     v e c 2   a l p h a   =   r o u g h n e s s   *   r o u g h n e s s ; 
     m a t 3   T B N   =   m a t 3 ( v e c t o r s . t a n g e n t ,   v e c t o r s . b i t a n g e n t ,   v e c t o r s . n o r m a l ) ; 
     v e c 3   l o c a l E   =   v e c t o r s . e y e   *   T B N ; 
 
     f o r ( i n t   i = 0 ;   i < n b S a m p l e s ;   + + i ) 
     { 
         v e c 2   X i   =   f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ( i ,   n b S a m p l e s ) ; 
         v e c 3   l o c a l H   =   i m p o r t a n c e S a m p l e G G X ( X i ,   a l p h a ) ; 
         v e c 3   l o c a l L   =   r e f l e c t ( - l o c a l E ,   l o c a l H ) ; 
 
         i f   ( l o c a l L . z   >   0 . 0 ) 
         { 
             v e c 3   L n   =   T B N   *   l o c a l L ; 
             f l o a t   v d h   =   m a x ( 1 e - 8 ,   d o t ( l o c a l E ,   l o c a l H ) ) ; 
 
             f l o a t   f a d e   =   h o r i z o n F a d i n g ( d o t ( v e c t o r s . v e r t e x N o r m a l ,   L n ) ,   h o r i z o n F a d e ) ; 
             f l o a t   p d f   =   p r o b a b i l i t y G G X ( l o c a l H ,   v d h ,   a l p h a ) ; 
             f l o a t   l o d S   =   m a x ( r o u g h n e s s . x ,   r o u g h n e s s . y )   <   0 . 0 1   ?   0 . 0   :   c o m p u t e L O D ( L n ,   p d f ) ; 
             / /   O f f s e t   l o d S   t o   t r a d e   b i a s   f o r   m o r e   n o i s e 
             l o d S   - =   1 . 0 ; 
             v e c 3   p r e c o n v o l v e d S a m p l e   =   e n v S a m p l e L O D ( L n ,   l o d S ) ; 
 
             r a d i a n c e   + = 
                 f a d e   *   c o o k _ t o r r a n c e _ c o n t r i b ( v d h ,   l o c a l H . z ,   l o c a l L ,   l o c a l E ,   s p e c C o l o r ,   a l p h a )   * 
                 p r e c o n v o l v e d S a m p l e ; 
         } 
     } 
 
     r e t u r n   r a d i a n c e   /   f l o a t ( n b S a m p l e s ) ; 
 } 
 # l i n e   7   4 
 # l i n e   8   4 
 # l i n e   0   1 6 
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
 # l i n e   0   1 7 
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
 # l i n e   1 2 2   1 6 
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
 # l i n e   9   4 
 
 / / -   D e c l a r e   t h e   i r a y   m d l   m a t e r i a l   t o   u s e   w i t h   t h i s   s h a d e r . 
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
 / / :   p a r a m   a u t o   c h a n n e l _ a n i s o t r o p y l e v e l 
 u n i f o r m   S a m p l e r S p a r s e   a n i s o t r o p y l e v e l _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ a n i s o t r o p y a n g l e 
 u n i f o r m   S a m p l e r S p a r s e   a n i s o t r o p y a n g l e _ t e x ; 
 
 / / -   S h a d e r   e n t r y   p o i n t . 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
 
     / /   F e t c h   m a t e r i a l   p a r a m e t e r s ,   a n d   c o n v e r s i o n   t o   t h e   s p e c u l a r / r o u g h n e s s   m o d e l 
     f l o a t   r o u g h n e s s   =   g e t R o u g h n e s s ( r o u g h n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   a n i s o t r o p y L e v e l   =   g e t A n i s o t r o p y L e v e l ( a n i s o t r o p y l e v e l _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 2   r o u g h n e s s A n i s o   =   g e n e r a t e A n i s o t r o p i c R o u g h n e s s ( r o u g h n e s s ,   a n i s o t r o p y L e v e l ) ; 
     f l o a t   a n i s o t r o p y A n g l e   =   g e t A n i s o t r o p y A n g l e ( a n i s o t r o p y a n g l e _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 
     v e c 3   b a s e C o l o r   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 
     / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
     f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 
     v e c 3   n o r m a l   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ; 
     L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ,   n o r m a l ,   a n i s o t r o p y A n g l e ) ; 
 
     / /   F e e d   p a r a m e t e r s   f o r   a   p h y s i c a l l y   b a s e d   B R D F   i n t e g r a t i o n 
     a l p h a O u t p u t ( g e t O p a c i t y ( o p a c i t y _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ) ; 
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
     v e c 3   s p e c C o l o r   =   g e n e r a t e S p e c u l a r C o l o r ( b a s e C o l o r ,   m e t a l l i c ) ; 
     s p e c u l a r S h a d i n g O u t p u t ( s p e c O c c l u s i o n   *   p b r C o m p u t e S p e c u l a r A n i s o t r o p i c ( v e c t o r s ,   s p e c C o l o r ,   r o u g h n e s s A n i s o ) ) ; 
 } 
 # l i n e   1 9   0 
 # l i n e   2 0   0 
 
 / /   o v e r r i d e   b l e n d   s t a t e 
 / / :   s t a t e   b l e n d   n o n e 
 
 o u t   v e c 4   o c o l o r 0 ; 
 
 v o i d   m a i n ( v o i d ) 
 { 
 	 V 2 F   i n p u t s ; 
 	 f i l l V 2 F ( i n p u t s ) ; 
 
 	 / /   C a l l   u s e r   d e f i n e d   s h a d i n g   m e t h o d 
 	 s h a d e ( i n p u t s ) ; 
 
 	 o c o l o r 0   =   v e c 4 ( 
 	 	 c o m p u t e W S B a s e N o r m a l ( i n p u t s . t e x _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) , 
 	 	 1 . 0   /   g l _ F r a g C o o r d . w ) ;   / /   g l _ F r a g C o o r d . w   = =   1 . 0 / w 
 } 
   4 l a s t _ v a l i d _ f r a g m e n t _ s o u r c e   
  �X # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # d e f i n e   S H A D E R _ F R A G M E N T 
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
 # l i n e   9   0 
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
 / / -   ` g e t S p a r s e C o o r d L o d 0 ` 
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
 / / :   p a r a m   a u t o   u v t i l e _ r e f e r e n c e _ s a m p l e r 
 u n i f o r m   s a m p l e r 2 D   u v t i l e _ r e f e r e n c e _ s a m p l e r ; 
 / / :   p a r a m   a u t o   u v t i l e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ i n v e r s e _ s i z e 
 u n i f o r m   v e c 2   u v t i l e _ i n v e r s e _ s i z e ; 
 / / :   p a r a m   a u t o   u v t i l e _ l o d _ b i a s 
 u n i f o r m   f l o a t   u v t i l e _ l o d _ b i a s ; 
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
     v e c 2   d f d x ; 
     v e c 2   d f d y ; 
     f l o a t   l o d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 f l o a t   g e t L o d F r o m R e f e r e n c e S a m p l e r ( v e c 2   t e x _ c o o r d ) 
 { 
 	 v e c 2   t e x c o o r d r e f   =   t e x _ c o o r d   *   ( u v t i l e _ s i z e   *   ( 1 . 0 / 1 0 2 4 . 0 ) ) ; 
 	 r e t u r n   m a x ( 0 . 0 , t e x t u r e Q u e r y L o d ( u v t i l e _ r e f e r e n c e _ s a m p l e r , t e x c o o r d r e f ) . y ) ; 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
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
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   [ D O C - O N ] 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   ( m u s t   b e   c a l l e d   f r o m   f r a g m e n t   s h a d e r ) 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   d F d x ( t e x _ c o o r d ) ; 
     r e s . d f d y   =   d F d y ( t e x _ c o o r d ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   g e t L o d F r o m R e f e r e n c e S a m p l e r ( t e x _ c o o r d ) ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 # e n d i f 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / -   B a s e   l e v e l   s a m p l i n g   v e r s i o n   ( c a n   b e   u s e d   i f   o u t s i d e   f r a g m e n t   s h a d e r ) 
 S p a r s e C o o r d   g e t S p a r s e C o o r d L o d 0 ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
     r e s . d f d x   =   v e c 2 ( 0 . 0 ) ; 
     r e s . d f d y   =   v e c 2 ( 0 . 0 ) ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
     r e s . l o d   =   0 . 0 ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 # i f   d e f i n e d ( S H A D E R _ F R A G M E N T ) 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 / / -   R e t u r n s   L o D   B E F O R E   L o D   b i a s   a p p l i e d 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     f l o a t   l o d f i x   =   c o o r d . l o d ; 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   l o d f i x ) ; 
     } 
     r e t u r n   l o d f i x - u v t i l e _ l o d _ b i a s ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y - u v t i l e _ l o d _ b i a s ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 } 
 # e n d i f   / /   S H A D E R _ F R A G M E N T 
 
 / / -   C o m p u t e   t h e   d e r i v a t i v e s   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 v o i d   t e x t u r e S p a r s e Q u e r y G r a d ( o u t   v e c 2   d f d x ,   o u t   v e c 2   d f d y ,   S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         f l o a t   l o d f i x   =   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   c o o r d . l o d ) ; 
         i f   ( c o o r d . l o d ! = l o d f i x )   { 
             / /   F i x   d f d x   d f d y ,   t a k e   a c c o u n t   o f f s e t ,   n o   m o r e   a n i s o t r o p y 
             v e c 2   d d f i x   =   e x p 2 ( l o d f i x - u v t i l e _ l o d _ b i a s )   *   u v t i l e _ i n v e r s e _ s i z e ; 
             d f d x   =   v e c 2 ( d d f i x . x , 0 . 0 ) ; 
             d f d y   =   v e c 2 ( 0 . 0 , d d f i x . y ) ; 
             r e t u r n ; 
         } 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     d f d x   =   c o o r d . d f d x ; 
     d f d y   =   c o o r d . d f d y ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     r e t u r n   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   d f d x ,   d f d y ) ; 
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
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         v e c 2   d f d x , d f d y ;   \ 
         t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e G r a d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   d f d x ,   d f d y ) ;   \ 
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
 i n   v e c 4   v a r _ c o l o r ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 0 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 1 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 2 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 3 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 4 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 5 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 6 ; 
 i n   v e c 2   v a r _ t e x _ c o o r d 7 ; 
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
 	 i n p u t s . c o l o r [ 0 ]   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 0 ]   =   v a r _ t e x _ c o o r d 0 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ]   =   v a r _ t e x _ c o o r d 1 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 2 ]   =   v a r _ t e x _ c o o r d 2 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 3 ]   =   v a r _ t e x _ c o o r d 3 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 4 ]   =   v a r _ t e x _ c o o r d 4 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 5 ]   =   v a r _ t e x _ c o o r d 5 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 6 ]   =   v a r _ t e x _ c o o r d 6 ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d [ 7 ]   =   v a r _ t e x _ c o o r d 7 ; 
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
 # l i n e   1 3   0 
 # l i n e   1 4   0 
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
 # l i n e   1 5   0 
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
 / / -   A l l e g o r i t h m i c   M e t a l / R o u g h   A n i s o t r o p y   P B R   s h a d e r 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
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
     f l o a t   l e v e l   =   m a x ( 0 . 0 ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d )   +   u v t i l e _ l o d _ b i a s ) ; 
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
 / / -   l i b - p b r - a n i s o . g l s l 
 / / -   = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l _ d i s t r i b ` 
 / / -   ` G 1 ` 
 / / -   ` v i s i b i l i t y ` 
 / / -   ` c o o k _ t o r r a n c e _ c o n t r i b ` 
 / / -   ` i m p o r t a n c e S a m p l e G G X ` 
 / / -   ` p r o b a b i l i t y G G X ` 
 / / -   ` p b r C o m p u t e S p e c u l a r A n i s o t r o p i c ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   1 3 
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
 # l i n e   0   1 4 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   9   1 4 
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
 # l i n e   4 8   1 3 
 # l i n e   0   1 5 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 5 
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
 # l i n e   4 9   1 3 
 # l i n e   5 0   1 3 
 # l i n e   0   1 6 
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
 # l i n e   0   1 7 
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
 # l i n e   1 7   1 7 
 # l i n e   1 8   1 7 
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
     v e c 2   d f d   =   m a x ( c o o r d . d f d x , c o o r d . d f d y ) ; 
     d f d   =   m a x ( d f d , h e i g h t _ t e x t u r e . s i z e . z w ) ; 
 
     v e c 2   d f d x , d f d y ; 
     t e x t u r e S p a r s e Q u e r y G r a d ( d f d x ,   d f d y ,   h e i g h t _ t e x t u r e ,   c o o r d ) ; 
     f l o a t   h _ r     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     0         ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     0         ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ t     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ b     =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ r t   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l t   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ r b   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
     f l o a t   h _ l b   =   t e x t u r e G r a d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,   - d f d . y ) ,   d f d x ,   d f d y ) . r ; 
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
 # l i n e   1 1   1 6 
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
 # l i n e   5 1   1 3 
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
         v e c 2   X i   =   f i b o n a c c i 2 D ( i ,   n b S a m p l e s ) ; 
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
 # l i n e   1 4   1 2 
 
 
 / / -   B R D F   r e l a t e d   f u n c t i o n s 
 f l o a t   n o r m a l _ d i s t r i b ( 
     v e c 3   l o c a l H , 
     v e c 2   a l p h a ) 
 { 
     l o c a l H . x y   / =   a l p h a ; 
     f l o a t   t m p   =   d o t ( l o c a l H ,   l o c a l H ) ; 
     r e t u r n   1 . 0   /   ( M _ P I   *   a l p h a . x   *   a l p h a . y   *   t m p   *   t m p ) ; 
 } 
 
 f l o a t   G 1 ( 
     v e c 3   l o c a l W , 
     v e c 2   a l p h a ) 
 { 
     / /   O n e   g e n e r i c   f a c t o r   o f   t h e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   n d w 
     l o c a l W . x y   * =   a l p h a ; 
     r e t u r n   2 . 0   /   ( l o c a l W . z   +   l e n g t h ( l o c a l W ) ) ; 
 } 
 
 f l o a t   v i s i b i l i t y ( 
     v e c 3   l o c a l L , 
     v e c 3   l o c a l V , 
     v e c 2   a l p h a ) 
 { 
     / /   v i s i b i l i t y   i s   a   C o o k - T o r r a n c e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   ( n . l ) * ( n . v ) 
     r e t u r n   G 1 ( l o c a l L ,   a l p h a )   *   G 1 ( l o c a l V ,   a l p h a ) ; 
 } 
 
 v e c 3   c o o k _ t o r r a n c e _ c o n t r i b ( 
     f l o a t   v d h , 
     f l o a t   n d h , 
     v e c 3   l o c a l L , 
     v e c 3   l o c a l E , 
     v e c 3   K s , 
     v e c 2   a l p h a ) 
 { 
     / /   T h i s   i s   t h e   c o n t r i b u t i o n   w h e n   u s i n g   i m p o r t a n c e   s a m p l i n g   w i t h   t h e   G G X   b a s e d 
     / /   s a m p l e   d i s t r i b u t i o n .   T h i s   m e a n s   c t _ c o n t r i b   =   c t _ b r d f   /   g g x _ p r o b a b i l i t y 
     r e t u r n   f r e s n e l ( v d h ,   K s )   *   ( v i s i b i l i t y ( l o c a l L ,   l o c a l E ,   a l p h a )   *   v d h   *   l o c a l L . z   /   n d h ) ; 
 } 
 
 v e c 3   i m p o r t a n c e S a m p l e G G X ( v e c 2   X i ,   v e c 2   a l p h a ) 
 { 
     f l o a t   p h i   =   2 . 0   *   M _ P I   *   X i . x ; 
     v e c 2   s l o p e   =   s q r t ( X i . y   /   ( 1 . 0   -   X i . y ) )   *   a l p h a   *   v e c 2 ( c o s ( p h i ) ,   s i n ( p h i ) ) ; 
     r e t u r n   n o r m a l i z e ( v e c 3 ( s l o p e ,   1 . 0 ) ) ; 
 } 
 
 f l o a t   p r o b a b i l i t y G G X ( v e c 3   l o c a l H ,   f l o a t   v d h ,   v e c 2   a l p h a ) 
 { 
     r e t u r n   n o r m a l _ d i s t r i b ( l o c a l H ,   a l p h a )   *   l o c a l H . z   /   ( 4 . 0   *   v d h ) ; 
 } 
 
 v e c 3   p b r C o m p u t e S p e c u l a r A n i s o t r o p i c ( L o c a l V e c t o r s   v e c t o r s ,   v e c 3   s p e c C o l o r ,   v e c 2   r o u g h n e s s ) 
 { 
     v e c 3   r a d i a n c e   =   v e c 3 ( 0 . 0 ) ; 
     v e c 2   a l p h a   =   r o u g h n e s s   *   r o u g h n e s s ; 
     m a t 3   T B N   =   m a t 3 ( v e c t o r s . t a n g e n t ,   v e c t o r s . b i t a n g e n t ,   v e c t o r s . n o r m a l ) ; 
     v e c 3   l o c a l E   =   v e c t o r s . e y e   *   T B N ; 
 
     f o r ( i n t   i = 0 ;   i < n b S a m p l e s ;   + + i ) 
     { 
         v e c 2   X i   =   f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ( i ,   n b S a m p l e s ) ; 
         v e c 3   l o c a l H   =   i m p o r t a n c e S a m p l e G G X ( X i ,   a l p h a ) ; 
         v e c 3   l o c a l L   =   r e f l e c t ( - l o c a l E ,   l o c a l H ) ; 
 
         i f   ( l o c a l L . z   >   0 . 0 ) 
         { 
             v e c 3   L n   =   T B N   *   l o c a l L ; 
             f l o a t   v d h   =   m a x ( 1 e - 8 ,   d o t ( l o c a l E ,   l o c a l H ) ) ; 
 
             f l o a t   f a d e   =   h o r i z o n F a d i n g ( d o t ( v e c t o r s . v e r t e x N o r m a l ,   L n ) ,   h o r i z o n F a d e ) ; 
             f l o a t   p d f   =   p r o b a b i l i t y G G X ( l o c a l H ,   v d h ,   a l p h a ) ; 
             f l o a t   l o d S   =   m a x ( r o u g h n e s s . x ,   r o u g h n e s s . y )   <   0 . 0 1   ?   0 . 0   :   c o m p u t e L O D ( L n ,   p d f ) ; 
             / /   O f f s e t   l o d S   t o   t r a d e   b i a s   f o r   m o r e   n o i s e 
             l o d S   - =   1 . 0 ; 
             v e c 3   p r e c o n v o l v e d S a m p l e   =   e n v S a m p l e L O D ( L n ,   l o d S ) ; 
 
             r a d i a n c e   + = 
                 f a d e   *   c o o k _ t o r r a n c e _ c o n t r i b ( v d h ,   l o c a l H . z ,   l o c a l L ,   l o c a l E ,   s p e c C o l o r ,   a l p h a )   * 
                 p r e c o n v o l v e d S a m p l e ; 
         } 
     } 
 
     r e t u r n   r a d i a n c e   /   f l o a t ( n b S a m p l e s ) ; 
 } 
 # l i n e   7   6 
 # l i n e   8   6 
 # l i n e   9   6 
 
 / / -   D e c l a r e   t h e   i r a y   m d l   m a t e r i a l   t o   u s e   w i t h   t h i s   s h a d e r . 
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
 / / :   p a r a m   a u t o   c h a n n e l _ a n i s o t r o p y l e v e l 
 u n i f o r m   S a m p l e r S p a r s e   a n i s o t r o p y l e v e l _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ a n i s o t r o p y a n g l e 
 u n i f o r m   S a m p l e r S p a r s e   a n i s o t r o p y a n g l e _ t e x ; 
 
 / / -   S h a d e r   e n t r y   p o i n t . 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
 
     / /   F e t c h   m a t e r i a l   p a r a m e t e r s ,   a n d   c o n v e r s i o n   t o   t h e   s p e c u l a r / r o u g h n e s s   m o d e l 
     f l o a t   r o u g h n e s s   =   g e t R o u g h n e s s ( r o u g h n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   a n i s o t r o p y L e v e l   =   g e t A n i s o t r o p y L e v e l ( a n i s o t r o p y l e v e l _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 2   r o u g h n e s s A n i s o   =   g e n e r a t e A n i s o t r o p i c R o u g h n e s s ( r o u g h n e s s ,   a n i s o t r o p y L e v e l ) ; 
     f l o a t   a n i s o t r o p y A n g l e   =   g e t A n i s o t r o p y A n g l e ( a n i s o t r o p y a n g l e _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 
     v e c 3   b a s e C o l o r   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
 
     / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
     f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 
     v e c 3   n o r m a l   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ; 
     L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ,   n o r m a l ,   a n i s o t r o p y A n g l e ) ; 
 
     / /   F e e d   p a r a m e t e r s   f o r   a   p h y s i c a l l y   b a s e d   B R D F   i n t e g r a t i o n 
     a l p h a O u t p u t ( g e t O p a c i t y ( o p a c i t y _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ) ; 
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
     v e c 3   s p e c C o l o r   =   g e n e r a t e S p e c u l a r C o l o r ( b a s e C o l o r ,   m e t a l l i c ) ; 
     s p e c u l a r S h a d i n g O u t p u t ( s p e c O c c l u s i o n   *   p b r C o m p u t e S p e c u l a r A n i s o t r o p i c ( v e c t o r s ,   s p e c C o l o r ,   r o u g h n e s s A n i s o ) ) ; 
 } 
 # l i n e   3 1   0 
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
	:&}&&�ǿ��X^��3?>f��t�K�(�19��ࣰ��MD	�U���c��~�)��^�F,?��g=��ݗ��W����E_<���,αN�s�'��f��u�N�=6���ϰ�&=�=��'"�o���0��qA�	lܨ�?<���    IDATx��{�lYU'�[{�Gf~�{�{oUQ��' �m�X��*�<Zq��-{G��z��;��шg�#&&t4ѱAZZm����V�G˴� "�HA����<��揵����w�yխ���nf�<g�}N���o=7PQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ�(}�'PQQ��������+�!  � �#��m���"�`08FL!"0#F Ĉ�`��z���s��O�%`�@tͿ����m�1�܊��� � ����C��������t���sK8�@�r��1E8H���A`f� G pN������a�'�0E03Bd0��O P���1FF��|50�y�<��a������)�'XQQ�qE {���s��f�5|!0�|	8<5����!�{��@ AA`xb8b8������1��(�Y 3��L��� *?��ȧE�"B�(� rC/Ĉ#F�'@���c�K���~+O�����Ɵ��u！***>����⣌���ap�'#(��e�=3�L�'F��"s8B qDr�'D ��}GB�V�6g\�̌)0���##Ĉ�N�$?J�B��2�D��1E'D���Q�O��0?(�)H����� ���wb�"����7��������+�O����
���� |��+�}&8�y�1�3�~"���y��3!{�?�d�G8���X� �@2-t�j����8}�b�G��B�ĺ!"0"�Q�^C�)(b�����"�w@���/;�!:�<���@���~����ŷ���������G�#��xԠ
����#^�W<������,�g�ù�4]B-� p c�����'N�}�B��V|"����/Hb %V�[��m��cDL�)	�a��!�y�;�����O�� &B�"M���å��'@���a Α�8<I"�#x���a�ƻ��<�ݲ�w��O��o~d?Ɋ�G� ������~�S����3���i��p�18�cDL.} $=>8�v�#��I���\�C,�}�$ 'N���0���b�k�Pz�q�L�\��!��`c���1�� ���[ P��!ރ�AI�8����=�������4��@�O '�  �����N�?������#��VT<�P@E�-�?�@�����pg�aυxo��Y1��i؍�0D�@�`��;�9�N,rN�^qqӫ����q~y�)�(�8?�[=�ED��M�^�H�%b&����? ٭%�o�R�?�'��#0j�g� Ș�Le_D��DJ�@u�x �m��4����=�󮥣���t�Ooq�o6��7������o>Rߍ���U TT�؃?��MO"��b����B�b؀ÀG N`��U��>�9�R<��sɂ�.{}���}�M�y?�� �� ɹbQS�^L��1[�؃f�����(�(�Sa�� 1���%�Ś��d%g�;�p.��x�I��Ⱦ]C�[�k��%4��4�&�״t������?��Fo��������� �� ������#�{�}a�2M�ŵ?<<qsHVzHY�� ,�'+_�y%r2Y� � ٝ���Zڌr�C�q\��z����7 %�q��!����('���zJ`I�\a,}/C���s�*@<�I@�K�@eM�񎀦�-a� �-���hy�;zW��Zt�殉���������Q�x��������4=c��S�c��� �$�����9v���� 2�Bn�j7DNE$�i��ie�>G޷�Q��+0���R�3B@��k/  "���`���3��a�W!��"��5� a�%�D�ϟ�@���&p��@��}z�}����LQ��ª'�/){t"��o𞮥���/��]��s**nTP��|�w�H�x�4�/��H���@1e�ǘ	�9����?�S'>I���2�c����?�A�nG:6=ڸ:4�>B靀d�k`�x�Ʉ4�@]��ߌS�����gK�w�A-�|N��P��ȳp�]�,��Щ�@I���%+ޓ��y��SP	���x:�=��tX�pp$��!�������_�����;TQ�HG �=|�+wo,N��'�71O/�����('��qǐ,Z�Ɖ$�C3�ԓ������'����(�~����������t��i7%�[���ȉ�)? D6�S������+ Do��)��"	3-H�_�  ����E0P�)�Q�]=�!Wtm�б���Xj=��˞�7�tO �ЍeC�Gߺ_�����W��o=�p�o�TPq[��w��	�2��8N_�1~����ڐ'%�I�����O�@��M�^��ڽ��OY�6��/e~N����99�y�sr^��m��*��Z���(�#c�(]s3 $�1���!{N籹�<�WC�ŀ�QJ��y�5�1����.%�з����#4^��FE"t�d�E'�N�	������[ҿo<������.�n��i_]�*n?TPq��^��W����!�/�8=�9�$C_b�9�����x?X��J��.	}� =��یX�=�_�g ���Y�?���"8��N�%�.?�6�R=rv$U����x�y�j���lx ː�(wy�P��>�"R��#!����4"��y &��T���ܣ��$��+��d�����| ˞�� �:�KNBd�,Z�����v������_"���x��
���?�������z��a�t�cX ���X��ۗ�����"b��O�vS�oC ��;���@����|�%�ɟ.�cK�䘘����9���G �~0�z\�7{	����ř�����Kh@��Ra!�42��?Wd�����x!���)�O]���!���Q�{�k�1������h�F��OD�VD#�7�8�q8�뱻��m&`3��;\}�a��O{�������<�����ݬ��DE �h�����0��7��כ��a�\B�J��N"{C��J'�[Z�3�}Nڶ�/{
���6��:'ݡ�
tlf�*  ��{J��\�o\��B �
����9u�s�+�r-Q�&p��TX�&l���Ѐ	%�rDy��Q�#��������$��~:�s�ib�A�H9�����۔D�㴩!���(9mC��簿�p~�a�;'ky�w?���皟8w����i��Ƈ󽭨�D@ �(<���+���a��0N߽6߹��Q�b@�cg��'�I�}�mwM&��G9֔�Y��zJ���/�e ��'7b j��G r�����|���/?��<#�ܒ%�(b�7��ێ+ l��F��˩�����Q`r4���{n��#��W�n�: �(�v�S1�C�B�=���&�y�v �p��� \��8�밷t�I����K.}����槺���C�~��Z�_ߊ�O(TP�����=�=��/��W��7�;�~GI�C��f��i�c<�]`�Q�Oul������t,���U?��� ?f! �v�[�������������AOz��)�N�+33�.�%��6��q�� Jށ!|7�Ž��A�M(^-�D�>e����w@�[=ދ7C�#�#�xK���-a��ޡo�>����̒+p��p~W�v���ң?l7����]\X��k�����v~���\Q�* *>��O���է����n;�i�6���pr)k��닥��A ӏ����ʟ�������`F��} 6����
��U^�]�a���k��&�#�=G���9�L��	��n�$�7����/�o���A��X��^h�~vn҄? R
i��m�� -9���.��<��]#b`� ��ˮ�$DB �#c=2G8���]���� ,��^�����ӝ_����_�W�~�}�����x�
��OH�菾�N���1<�t��k��À&p�
)k?�$8��s�J��h!�X��9�ܬ'[�fi^��p��SP2����xe�ҡϲYY�O3������d�儺�Sۜ�)0Ƙ����}��^n��>���}\N��tٟ���㔰幒�̉���ߟu	t��U0��c��:"
�8] �;�~ �� �����bF�1y�THE�êV�C������'�W;��<w�Ņ�{�u�L{w�<�W7�O��÷��WT|�P@�'^���!��z3]�l7�b�
ٳ�.����X�6�/[�\��䶓�n���@������?R�J��",�F�Ēl������G9�m^�_�]���?H�Ќ���`�fL%nkq��@���,��`�?��?s������$ȕ�|:V��(ȧ}d�-]�}��0�&JO `ѹY9�� �3sD��'��H�8��q�C�['ၖ�y�"�׌��ғa�.�7��{Z���4w�����pt��������~�~�+*>��������M�z���	��c�4��ļ�W>��|�-_J��y�WW��t���-����Pw?����_�,X#���4$`�/.���Og�]����s�n/F����]�����B@D�
��0���%  �2?����= �,ti�|�C*4n�cW$q�; {��nď^�
 -W��=鱩@Z1�m>{!�z$@�&�81�%�`��<V���Q*)LKo���ib����]�'>�ť����v��rt~�4o
~������wN��'����
���7����O��12?0Nx������B��>��Ih�]��/"@k���d��;��1'���.�`����J��<wH" �QEHL}��B7�v�ˉ�yn�P�f�� r"���l�v �П�-��_M�ӝD�E~T+�jaP9Vŀw%#��x��˵J�^ǚ'��B)�!�&1�2��t�IB�q�<n8�a�2o!p�㰻p�th�|�	8�D�n�z��9�{>e��OX��_��40��p��7��6��x�
���^��ˏw��b|~�iS�s1�����n^^W�L e�K<{�p�F>yL �; M�f��N`s�
6����%|6_ P����谝���x��3o���u�yW[��<�2{}1 &ܐ��0�3�uOJ� ��e�������Ɨ�u%���G��U>y2"ĝ/!��"�T5�V�R���B�N��7cZD)�CDr��J*��8�xiE�8x'�ab�2��[��I;8������9�]���h�/�z]����* *>�����[���bF|a���L!�S�{YӾ���"J<�i	����.�|�
dO C��h� �}��(_΋�HG�H1�����B	���]�=���#hO�hƶe|ٺU� $O�d,��/���-e׻��,p��?s�;Jb@-pl	 K�l�Bz3{���G1*f��i$�O���_�}�x*碴P΁�+@9t�z]U0�� >��xªw��zp$�p�f)�������ǅ}����΂���1�p���v3bb`�B��?}�;v@� p|z��?a�?������!TT|Q@���/_�w߽|Q�C����Äb����%�B���xI���]���"=* �u����&���u����vx�=k���`�Fs^��_�����GA`��� Ҭ����X���?�a[yc��r9%d�'����Vy^� ��v���~�����z���X��v���q�	�s�9�w�#�!%D&�@�ky} �	��X�ń�VW��O����z�$@f�R,;�K�<s�������.=B�l"���u�����⧝C��H7;!L�������7=�AWc���H�
���:^���m6���gC�_S�_j�'� +�q�2�[K�c*�c��׌|��}������"���߼Nv�(����2������O� �?��L�%� 2��kS��4=��_�9s�S�0l^�^��_S	�e��a�Mp�<YP�ܟ��\��XH�%m���ލ�N��ϼ�.��B@c��6@�<�Rk��N��$'A?M� ́�z�����[B߹ZX��:bL� �]:\:�������оZ��W޳�p�q{Xݵ�PE5�dB�D�8z��Do>FE�GU T|������|�{�s�1��!�]%~D ����<�ć���i����7w�Kd���l|�^���_n% ��	f�֪��}@v�g���-jU)猘  ���b �,�B�)��o1Gq�[/���j}�<��O�|����H���r�����?y#�-ޗ��̧�jh����'.�y_g��sJ��i�$!/�4L�uQd+����K_����S`,:�6y"4�������-����c.�����Z4w���A��C#��5�;w�.@�YF���O�����G�[**>
��⣂�����-1з3��M!�8F�(���[�@@��W�U!�[��(d�L	�yn	N�Yl%��\�J����l��������-���L\�gf �����VXĭ��l[�|�޷���8g�f"@����.�|&_C���W������h� ƒ�0�����%! 1}-�X�����c4!�X>C����%aw�pnW�	���'�N�="N6�ib#0Ʋ'\:���w=���c{�n8��!����+4�Cs���o���@Ԝ��~����<�7kX�⣁* *>�x�;/y�� ����c���k��ܳ�f���-�~���Z��+ u�s
9L + �G��W���ؘ�F\a@ʤ�8�Z�J��R�q�[w7p����=���� (K��@��)���)����|&hN`>���of��Ɗ׷\J. g��J��!�y ����eN��A�&Ԃ�q���N�ޕ���RH��R��S���I��N�+��2iS?��%\��X��$�$�4��3)�z$��&�9�qW�;?i��c�@�h��x2�O����;���4��w»7m�}�OW�������#�* *>����70��Lw��5��o#~k�[�����W �ֿ1�cs�Y&h�����H�i��8w�+.i+ Ҙi|-���NQ�O��v��W(i��*J�"&J��`��/;_GV��1_��\J'���s-�c6�� H]�����}�-�Ȑ��,�����qf^z?���^W���|PJ^��]C�����5n�Y�B@���&����t�x౓z�n"�����o�D�8X��v��%?un��H���1��)pЃ�A<:�#��м����]������7|L� ��;���徝M�}����Y�
9iV?��,��nN��� ���_������ȭu�$�	(���Tp8%0)� �0cj?%�]���u�����N��:sSPJK9�t�Kyz/��Lx��gH"�
�}r7��Y��AN4�Y׼��Ҝ�����y[� ��_q�g� ���I &"HY�i��w�����$T�P� ���!�X��c��'��s���+�;�y4X-|.)$V=�k���o�<�8�0��^�ޮ�c?e��'�ï� ���! �4q��k\�6��Æ�����?Y?���9���5IDm�y    IDAT���* *�Nx�+�����^6n��az<%�d�'��	��諕m����uL�H���Ȏ�D5Q0=Fɢ�c�>��ËG��
HKߔP�uN�P[`{�N{���~N�A��d���K]�$"R�`ޛsC����^+���0�~�6�0�)�/�W9 0-�C�̕|-�gA�B!����=㴲_��,B��j�@�Hß6���S^���X��˘}��6���I���SI����: {�vE 쭜��a��k�u`\�p�f��&b�}C��1.<a�;w��,4 ��*E B��ꄣ??�������~�x��3��moCEŇ�* *>,���?�#�qË���A��������Y��z!]m�cE��Q< l_�T�ރ��ǆ�і�ycŧ��ܲ���˔�:t�:���_�=y%�<g,vc��J�:�OJ��R�\���b��5�U�,y*:P\���.�����9�`���M�$�bC-y���r_��S���#`�{[�ℨ$N��Ǿhn �5�Ͽ���E~�;��������6�I�������X�p�忷�΀{;R
�hv�\9�K��9�Gƍ������ ���������]��&A �$MD�xc�Ϳ8E����>0a3��|����B^�5�|�UTT|���	T<���/�ʻ���c��a�>#�Hl��i��Y� ӫ�!�.����7����TX�@��g�a�7!�K�9L��dQR����*�c�a�s��F���������~ 9�m��N�s~���hF|[���R���lgl��Y7<��I~��u_Y���`v������'Jz�K��u��Y�?�A�����O�ޯȒ�?f��I�P�3��6a�9P*��pǁǲ�ֿB��aN7��ӈa��m�Ia���pK�n�c�����qx�A�ӈ�x��� �l������a���ѝ[�;hq|<bs3<�m�3�o�x��^����W����U T|Hx�˾n��10}m��d	U�צ�)�3�eR�^��f���y^9.+�Kǿ�h`���%���f�o���3r��%w~�F6��m`^��ig�Nڅ����q���\=e^�8�>����Z���mq�s�,tu��r����^Wƶe�Չ,��vR� %�	:�����Ф��mz�B�Mi��y�`]C@WJt$Vy���Je����.�)��6����hq����)Zv]�'�#�ʣ���/.��
���qzp|m�?:E�1h���S ���,����>��%����j��w-���Ͽ���WPQ�* *���]������O~�����1��Y�M��!\�ln�1�i�c��sހ��M���}f�'K�ML_U�9Sh�RX���[ENJJ��-���=Y�d⟟K_Yo��=ʩ�����	F������Ϭ�g���ky,�
>�I����U��\�i:3��_]���d�O�rf=�|K�{���֗��bЄG�k��BAHΪ��D�b"$�ҵ�%�p�.�5�[��!�2�	����qA�K�;PC@'���vo���,qp�G��Q@�1��	nق:#��5����5��%.vh��x�ǎ���ϻ�����x�/��ͺ�p�ߊ* *�F\�|�{����ɻBD��|�o'�d[��9P�� یuh�a�R�^�  �p@I�C:y�m�G�����B����q"�y�W&~#J�{��<�Y�$�Z}��X�\^(�0�X^��ΏfB@��y��r�U??�g�k�P�oY��쾬d���b�o� �|.,xv�������:V��,PJ��;1WF1-�<����œ���w���Z2�����a�$� J�A��؜D���/��r�}�Zaq���\�:�h�;A]��iO&P�����#�������x<"L|�j�>��}����/z������**>� ���x�˿�m�y�#`�e`Zh��Z��z ڒW���,g������oz��1���ܷD��A��s>JzfN3�a�=���%3�Y�y�F@�1�Lf0�m��m)���#@	|6����;�-~*Ϸ��K�ȷ1��)�;#m�8�~v��)ʹW2w=�«���˟��h�'�&�ҿR� �I�!���K�� pY\H�������Pρ
��������w���RV
�� �Ƶ�����/=\� �H5 �sp��~��p���F����z�0F�'#n��q=�[5ؽk��s���?��q�©�����o}��[�V�U T�/yɳ>�ǝ���>�-���U�=����dW���L1��k�Z���O[ �V�y�v����,�c�@�/������n��Nyk�#y3�
�Z!�e_ 3³�φ�g��mKz�|��
=��ϼQ�+4��2V�χ9�C1hs��#	�$�|�HyΑ$�%�L\�k���%_@�%�d�S����<���z¢�6���_��>y�r�C 6�,<�Rî��(�w8'����a���;�Lp`s�����7&��LXĈv%� �f#w� �`��-& ��U�EL'q�8������w/�:n�G��!������������|���oOţU T��7�Oi\����� h����=��@��z�lE����-.�B�*��6�6�)b �FOހ�$�2�Oi�<������@4��H��*Ԃ�.d�^k;�KƳ��¶g��\��P���VrU�4�,���;km�J"������w��t&}s�md��sw��^hƾ'H~}{���!'���d� * ��G��o �X�i�������;��%KN"�Y,�)2փ�&�?�na�9,:��$��mp��ѷ��%	�{�f`�����#-�wR�B�"x�IC ��,�H#��{p.�������O��	�r��{z�v�oL���������W�|�V_��G/� �ȸ|��v?��
G��yrwS�V�U�����g8S�g����IH �s`ۢ���Q<�Сb �?+Om-�B��,HJ����)�+�δBN�3.����l��B��>�s��Z��E�r-s��'�}}�&<�5�b?����� ��f��b��<��2�\!�H�^�&�u� �o��Hń�L��1�#L1	P�Ҵ�pd�ѷ��6X��������-Kd��(�&�F`w!"b#�X�D�����K�.��]�)�'��̀��۠'t+�6�{@  ��vP����n���%:�8��u��(��'�)⎻;��sG7���E/����>���MWj^@�* *._~��?D_�@%F��͒��+��Oj���,����6���N�[��n,��=�����J/��A�'[�Y���F�"!�����[�O��:�ѬƧ+��9d�g#�%�5Z�'�f���ށ��4';��3! spަ�$a�ހr���n�(m����P�_�Ň�����A����-1�s�<~�@�M���#���j�K� �L����ܗ�}��	�Y;�k�P*Ɖq�)����ĉ��Э<�;��Z�?l��RV9���&LW7h]��P�QJ[��G`�n����E����h�p����#�_� ��X���qX2��}�܋�����쿼RCU T /|�3�E<�������@��>�Z���s�~v����9C�y���h���[�$�%6%B8#�s=��9�-0'2���������"K�XHB �ԗ���<�e����F��1�-�grd���	�����+�e��k��s7O��!��m^����-� �~�ӟz%�k�'�V7e��v�+y徐��-!�g�I{��q1Y�}K�3�;B߸��`��;�-e2��VOQj*4���q��.��p�9��9�ҡ��ؿ���B���QB�c`�#ޜ@��G���x#7'D`���D�1�o�8�D��b�j�9��YGܸ6��ʄnA�p�A�9:�g#�'��/��Ͽ��w��Q�* �xы�}�S�z�wP�?B���z�hH�d���sl��6�]��q�d��Z��?�%L`���I �4Hې4��=7VS��Vx!# R:#�6�ź�n~=�z�Juv>�Ϝ��U�̈_��-���̚������y��b-�8}�s4�W��y�TEv�ٱ ���w�4�Q�|N��TR�Ċ�R$����_���6Z�'?@,}���|b������BJ�tl��k�$ip�d�e�X:t�̛::���^h���a�B�Ղ��
��p<���)���PZ��!�x��@Cp����~�~1������nD8Ⱥ!2N7�df|�K��B�������յ��УU <J��?�g���_M�wE*�@��[�~�V�������n+�~�I|��3Dg�٬X�Y��Rb���p�Gs�`7���fw>�-�� ��/�V�*���\�C�k�s����h��l�_�y�?����b`{߼)�Z��2�-}]�Y����+������ ��?��G= ��'��)��N����xt�z�x+b���&�j	�̧o	S����R��C�R&�&�/D���cw��e=�&�*��'9�02�I�˥�H�s@�@m�f�����ZB�as`�4�=�Z,z�u������	|��xt
�n���
;�;ģG7'� \?
�~���=��KS���;��������x}��G� x�/���o&���a����/(�B��䧝���?���Y�sJ(��Z�鹖��T�~�4�����������}�P�iv�W��_{��|�L�<����އ������2s�IfR�9�b�9�#+L��O~�/��-��?~k?`~�}mf��A�C*�9�������AC����d�{�b��bW3I�SQB^ԧi$qй"��z����cђ�Z��"��%���� y'���#����K/���Єrhѡ����K��� _�w@a z�%�d��peB<
8��	�)��=ڝ%��pxG����:�R���w=���?���������]y?*U��Q�o}ї>���?	��O`���ž�|������/c�=@j 4��4���j>�iң�	ɤF"iD}=Ϭk	��;�����J}��W�>'�q�.hɘ� ��,�٭ݚgzf����h�:�����۶�?���921�mn����� �V��g���V<���%�>�.O�x	�]/��А�d�-/B��B�$ �Z;ªs��ϲ��N�%M*�Z�[t��8��ƁR����8:�7}��4j��ڛ	i
D}��|��a����< � b \����4�uD8��1^��r��t@w�8�c��~3`��*�7O׎V�C� �/:�g��k�u�z�/�|	+n[T�(·��˿�y�i<�&��F=��sH�� ��@�@�m}}�ɷ-|��P���c�@��:��ef�|�=�"X2�_��"��Q/@>�ޕׅ�ivUg��u'���C��������̭�9!n��o�	������g[����U	sk_?�"`�^�#�sK�_�m�$A�%$}ZOyA��k��r��] p�!'ٯo��wB����d�h\����#�� ��@Ρ��) �n�EP�.�~�D��c؟cr@ׁ���{h� ����@�-��d�"b���GW6�}�X\Xb��c��`XG��0˜i1����O������7_yǇ��x��
�G	^��{��?s�� @��-kֺ����9�5K�K޴e�gbN�0�!��y��@�O�0���2lY��J��@ٓ�$�N��k��g@���W�1��z�U(�Y�`��t�#��J"^"}3�������X�z������E,X�Z���Q!�\B7��7A��zKBj��$���@)�
��!��S�_�H	_I*�ԗ��$�CHK�X�CH�k 'kƲ�N�KI�K�@"v��Nr����ƈ�I�p3��D�+�0 ?�T�(-��X:�s�5n٥�H��Z 0l��#N����ծ���%�;�`E8:�Xo"���)A0��������w�ү_{'*n{T�(�K��K�����J`GH�
ȏ9�ύvuS��d=c-gW?kǾ�����AP(P�wK̄C�G�9�0���(�%���ycٖ��s�7�����g[������ů�P޳c�d�4sU+����g���2��ul��,����H}빾��נbu��7]������������Ѐ閤	��[�D���;�����x�d�^u��fE��
>0�z�=��!b
�PH�)5�w�qi�����²'�7�Yx,zY�q�1rZUЁ����G���B��H���������Cr�;�逮K�QM���w=x8�:� ����8��n0M��qX�<����7��X�#N���xw�(�c3�Ӿ�9�����W�
�5� ����=��{O����g�=����b����X�:`�9K��(H��O�׀P�Tǝ�	�w�d���=%I6V����w�,�u��3
�)�L#oU�Լ7+�3f����ѷ���ɲ��t�B��Е�(y�c��boq�-"��V8YK;oK���ZVgŃ7�g�c�ŅVK0R�.��ޕ���q�9��Y 4����V�����s�"����Xo�a��#`�y��d�b=rNl�w�<�u��N��%�$���������n�-��@e�k�A�C���!����@M���
]����$��Q 8>
x�=k�{��U�;>��x<�te̓��w�O���_��_yx��_w�O�T;޶��6���_p��ܼ��~�u�H-�0/�CJ��,���":�\24���`��^���!甡�Iu��,:2yp��.���㼿^#Ⱥ������y��2��-�m�_[���~e�<�{W��91j?�[���[=�	ۜ/�H�E��W�ۜ������h�Fae��>O$�m����ע^�R6��-��� 扉���"6J.�'m��A�
��ɷM���.�Ab�I�g�HH�q�3p:0��4����b@�1��څ�b�q�B��[)5�xZ/�ƕL����6��)_`N���|��a�����@���-@��9e��I�w:D\����>J5�ΎG�	�c%�8�m�'���_�U�o}ï_ݠ�C �!^���:ߠ�~đkr(�& ����%a�K��$���l<l��s�1�()�g!��<Ux$a�bv]v�4[[���R��[{��y+�)~�z'��%n�z�v��%OW�f��1���)�>;9J����|��60�mI�	��4g+:f��
3'��S��O���J��������h�$�-Z��WF��	�9�#P�8�D8環���u��BR�"�:B��Ρ_9�.�ػ�bo�c���B�3l8�'#���d�sZ8 �,�a��@0���ѧ� �5hV=v�t�����G7�_�Ǵ �'�w"h6��TJ��~޻^��k�������^�� ���|��{���]�~%�E��sN�sQ����9nַ�����_;���p��镹��uni_=��9��(�\����T<�#0K�C�j+����Y�z���B`vM������9{�^���c(�����6Βm�|�7����C*l�-� ��a�Qb�M��H�q8{/g禜�>���}��9(��r��l�r�_��A	���7hKg@���q|"c�JS!i),�Wi�߮!�+��whv<��%��C�����v=V�i�]Kp���ڈ6Lh���?��4 /
�_����#6W6h��r�ݲ��|�#6׃46J�-�q�F��4�3�/.6��X�,�c�S�6��6��s����鷮TO�m�* n#\����G�
?�����f���hq�S����7<
��$�L��QM�^���>3�2灙k�*=���s�\->[��B�z�d�g��OO��Z'���Is��7�0�?{8,��l�۪��:%����N�#s״��=3�̕��q�U]>sY�W{5P r"`9o9��0��r=�Z*z~��:5ڤ�FI�
�k[�6�
�<��[�    IDAT ���O��d����ʣk�BiA��q����o������q�4�k���cg���;l�ؓX�gH�ރ�-����Z�y,�E�������&�����r��2���	�Dyœ�f�������$��@�cy� =p2��x��	8YG�8�����! ˎp2Dl�j����_�/	1\��{�������kN�m�* n��랱G���937�R�<�1�>��Gu+�2]!ju��M���uo������y_*c��ʹ�k���?�8[��������g��e4�0��yi���:����[@n�߶7 [�D[��^�R������xVp(�9���Pqi�ҌI>]�~W���o� dw:��%V����ؽ^͍�܋�\�x�z�<zo�"/�F��Xt��w��d�O�EtR˿h)ێ4�rh!D�A��#c��'�n����,��q��/�=h����X^l�����Y3�F�#p��	4@�1�I�� N�DN�:���'���G��ؿԠ�7CZ�X�_���+7#�uB� ��>-m�n��5Դ�w#����w��W~����7�⑆* n��EO{j��r�����k9ZO��u�cF�J��	P	P~^��.>����	����b9֭JT:_}j��c�DY��!(���X���r������I+�G�Ț,Z�	='xJ֡%�Y!�Y��V� #��x݆��f�.��z"`��v!_����|��j7�U/�w�~�t��dO_�B=.]�󒽍��zŒ�I�E������ H�(-�Snd�	%?@�B�j�%�-+�u�"��x�,^��v��}���!0h�u |�A�$ ���y�A�@�������e����^�2��,����� �4�G�7��#6�F���dA!�7�=�b����TJ�E�n�d#��ZO�Y�ꈧk� ������a��������zm�G �p���_� �������$έ�m-}!Qm�c~�1��g�t�+V��[�2e��&�?;O�- Εz2n�� ەS�g�����%�J�-ؓ����z�)`L�����ߒ����r�!g��sَ̉Q�~%���������k�[�˘���Ċ  ��<-d�6e��D(ּK�
+Z��I��sD��"v)��-��d�k�?&��Y�DX��)��Ab�Ǯu�Y8x/9xmZ (j�DJO](F N�@���o�$�Ｙ9�d���v{����pN�K^�.Jm�oR|��cD<�� �1�1��0�oL���<����4X�7X�:��1�Q暾��Q� O6��A��}F�8�5����)�S�{��[��[���XT��K_���z��̱����g�~�`�@�����`5�u.��r7RR@�6�����)���<�u6���mfe+���L�P\�@zT��$��U�Xχ�y߭��T��dƜ��: ���gI>Y�z���F3�Vⷙ�y��������(ȟ)TD��c�i_%hB���Ǡ�2���K�f2O�|a���=�s��i��/�E�z�3�D\��ж���&�1Q���=Qn�M�l�ηkT0���40���qĵ�v�<��Ԑ r��-5���ܢ���@+����I]jh�cD�iL!�z��yq|m���}����~���V���8H/ ��z=0���wWL$�F���=�O�3��z�������{4�k�z�������𤸸�7��|�8���D�� �q�b��s�eo���{͛�>@>o#����4�-��-b���~9!�xF��C�/��؈*q��3*�r��D�9	�Z�$��䪙�-a�<�3�01{ڲ�M��̕��R*G�4�ۓKH�0�qɼ����1�W��jI]�T  ��k�c4��'��0A�"<K�_3O�B�Є?]Fx���W�7�K(� -��	m#���q��qυ6W��K�BIB�m�Jc�;�L+��x�G�/�%��~ץ7��@Lp�~�R&a��!�5�U�(2|�����z#�|7nL����ƈ�}�_8�t�s��:�t��S����q������4RZ���8�/��a����߬9�LT����O�:n��k,vP����`㯖�r'�����Jצ?s��.�#q�v�l�'�N��B<#�m1��b�3�mΕy<1Y����QEk���/�l��m�?�X�.��d��q�g0����}V[�Bᬕ�H�n=�x����@�z.�u)�5=X]�2'���&+���|�r/�Q1V,�ʅƗ�	�]��87��dի�ݦ���ѥ���e�@G��%�#$D흈�)"��Yr$����k���G��=Y{+���C�����$AP� Y���OGƍ�6G+�E�[d��H
� L��ϛ��h���ǥ����+7GX��R����M����N���ѡ[9<��0֛�1 �� K)�0����a�H�	'v]�>�#���ϼ��ku�#U <��������']v��:�$8[��e���ҽl�F��:�[�I�Ҙ��3��0d�m��%	c뱘[o9T`��
����y���XK�۽�gϹ�j�����$ S�d���w��(�������f~�+2��P�:�L��"(Vf���ckn�&�Szc&v�yt o�~6�.���\�Z�9a0���(��c��ފQ�xL�pT���8��|*t"SJn$�A�瓍�)��8�k����4;�G��F<'k��1E��� ��O�#ƛ��v�����K�O��%`I>��n�ؒ������~�G�t���	�g!R�뵛W�O��:�����NK�F�f�^��lF��X.� e�)���C��+�q��P�B �0|�g>�~�'����W8wR�ֽXY���x�kۑ/�ĳ �>�g��I̴�UJ���B3�kI�mS��������l��E��ż���"-}��6�n��\������]�f�3d�|�8���]�2dQa^�ω�5nE���*�ץx-��RΌ]>�$�{���QO ���t=�� !�u�o}��=-�� ߅��I=">	���6���K7A'a�1pj
�J$x��;+��.�k��/-|;/ɇZ���!�~=`#�p�IRAf��wN&�� ���!��Ʉ��'���n�n��1n$$��f�zq��	7�Lh<a��łd�!�lx-�����^Go �}����{���ޛ�ܲ\�aߪ��=�ù��sI����i2%q���	�c$`�H�Lf�$"����8�� 6�y	�Ĉ��b+�o,[�PØ���1#�$����{��ZyXkU����4�;���޻����o�����)���Q9 _G�O�{�(%�E�${�&3��׻O;Tp�CJxU���_���K; ,���tix��_�S��\-ǿ���<7I���{�� j��~�	;d��9~/	�6P&�!�:h�5n�,	�FR�<_8��;��{�T���{e`h��r���u���s����5��u� ��^@��(�뺚�B�dPM�c.��F�d�O�~����#����*����p5�����	b��y�U/)�S\D�HC�j�Y<z��3:��""�$�b�! ��qs��}�$D����A\T�%�Ϥy���p֤�F��кG�y�f��/�:&V=�>��*a�gu�$�Vb�8&��gyL��>�Y��8S�g3ӻ��~��Ϳ{"�^ʉ �:)��� ��L��s����j�_+��7PR4�@o����d����$=�qI�Et~�l������q+�R��^H��o���,�6o�1��+��[�
�6�{���'��R*Phr�O��T�/��@@>8OUݽ�^��y����@���FXCm��zS��b��@l�C��/c&խ�J0��@=T��z1�z�_�1 1H]e �n�I�E�A���$��}@�� ��>\�!��>`���ح�Ξ���\�yǌq���i��q�8^'�͌a�
bh"����S��I���8&��;�n'�~���o ��q�c�0"n�cn�(��O��#c耮�;�a�Y���M���AbLh<����?�����^x���>ͧ�z+'���菾�C��#��T�+{n�M�3�9���{���!��9;�D�RҎp����hk�_��R�Ѐ�շӎ��ߵw?>�ӷk�Z��d ��-�	�͐������}�ݳޞ@(s��7Qs���\�ЌGB�p���-ܰ�ֵU�P7*g�T!0|ƿ64��/�F��݂I{T\8��/�|P�6n@��6/A|��P��F !�KJT�3Kj_�`-3p�	x�3����:c��@�8�!A\�>�df� ��7���g:<�����'�$�}�M��Q��2�'bʈ� ��ij2�A��x2���t��&īI"�$��C���;b��S���8S�7{y��^i���I��u�Q��h��y��(3����ß����Op*��r" ^��'>��� �4��x�¬ٹ �qހ��
~����X����]����_6��1*!P	��'�����5ܸ�.��:��p��(-~����.7�ŕ-`/��;�L�//.7���pu^R�P��٢���gy�(��c��(cr�,�����ʗĂ/&z��e^r }8o ������ �U}@E@A��*��"a�ɀ�������Y~Kr=���o��f�Q<,0���MD?�@�.:�B}��o��.l��9��,1�(Fu�@a�3p5!ltqW�N��	��H�	|d䑁��c���g��%��ͳ���q�M	Ј �܎�J�1n4o���)IR!f��ح%l�f*~.�?�=��ۿ�t�	9��K9 ����w�_�/�b�V�E<T�������-@��1��atT��A��� /�0 )�z�ɱy'�wV��^��F�P���sn%X�k�~z!A�s{��]���;��.;+���R��	0�I���Ќ󞱽�7� ��^� ���Y�h�Kpt)��D�l���<��6����'�J.�N���X���}�H;���a�aVw�tz�n-���:��2b����&���"$8�->C�@��E���V���6"d	'<�a13Bb� ��@NBx��!����c>dL�����/��oFp������LX=�q�L_'�b�g��@rJp��uR\�! �	f!���"̉1'�p
!�ү<�E��붜��q��yǏs�c�u��U_~�@����e�E|��I�=C�u��7�
h�n0;Z��ڣq�&�XX�{b���g7j'
`ߖ�ke�-����^��\�[�_RW�}��o����}ĀI��ɲA9D��}g4V�K��@ލ��m�*�f��_���=�E�@�{`�xe[��6*�y���0Ч��l̯߸�����D;R�YE�7��@\�����B�,�V���9��H*^����S�hd �D$���
�g:��"�@� p��@C��+K��N3rO��<��+1�[��=�����X��_��kI�C	)̌�gۀ�:�J`t�3�~��8L�I~��*���d� �P�,i��^1������;�W��:N�uYN�������/x��7R�"�*�^~���������0�w��v���X�RHVK6�5P6k'�p#*�f�g�+���p����Gܖr%q�,Ar���2`	pF� �p�@�2AS%; e]��kn�ԯ���-#ҊE~p��9��{c}C�׍G�ߑ7n�. ��Fl��mA�,�"����<�vW�I�>߆���A����F���eK���%���-yP�C� �y��fHh�"P��^8�H'@�� ψ�1��5�^�cF�]@�	���� ���������-�@Y�b�!l���\b�ۦL}PH�{�N�"|��F �H ����G����g\�Έ|5�O�XGāp�l��m��1#gyvr�\Y�"L�o)�A�f�L��,�J�z1Ɯ3VS����<��~���p*��r" ^g�g�����?���o�gƨ�F+Vw�v<����K#>��ƕY��w�6�vL��/WdTގ�*�_$rޒ����ϹAiӖB�M���M�Ѐ�r�б��S��k㢩����T&���\�gc�}�c�3��
�Z�����^T �����8jw/}?dF���.�^UCyvH��lA�'B͜�m�P���C��T9!Z�6���E�8�U�m?�,�˷:y�ՄD`�5 ��� FN�n#�o��6�vQ\����-�,Ayg; "Ҡ؁��>?j̏u1�@]d� nf��0���$HO�b��?0^|����	]b�:���C$� ��.�����ynY�u�-bJ,�i����*Pf\̉�����?�����/��X�T^�r" ^g�ۿ�]���5��l���17��"�6�=):���T)B!��^�X�Ҹz���Cq��[���ۘ�66��F��� �Z��37�}���U��tV���Fي8 (H:	B�I�~,�#@��5����şO�[�E�0��`���3S��Z�����s���U4�|	���E�s�1��,*�@ �����Q������|*Qa>�K	��d�B ���}裀W�f H�l�;����GH�X��t�Ǚq�g�,�:���� P}~��A�G{��B��`��l�Z�u�6ҮV=�: c��j�-����'`�3R�̇S��|a�|;��~ l�:\�"��$�X%q�i��L�14��43RR	�,�z 0�"%�0�|��O>��q*��r" ^G����w����W���!�hߥ���+X�	w��Z�ZAIT ���H�]Pru��E!6J���^k��W��,�T�]���w��e�+�������fXT���O�l���d<���׀��@��h׳^WA��T"��cib�1��1���k�1{�o4�"n����:w]���%jU���뺖�P)@*���0ۀ�U���]�fG m�������Iy��	�5�b��փ�ga�� o�2����p}�1D" ~�J���1��d}q�սO��9	�0'�H�2�N������〉b b�:�1}����su����ŧ	O�����6�b�w��M���BF��)��Fd�tČ�I�0b��g��C����_���S��뢜��Q��w������ݯ9*�� 1�I��ke'@�B�~/;U�P$p\[���Y�ϵ�����=�5y6����JZ�J.
��h����a�������{}]��0�CD4�K�Iٗ��]X��S���@+�o���#�cj�~��.ڔ��(�`��jk`��P5�kt����#5pO*�Eи N������2���&��F�3�A/1�ѩ� �}�e'%��P����8ei,��r��AC���	td̷	���Q1��h�,���p�J�@�!ꟴGC�pޣ;�ȇ�%m��	5�Y�'O��0I���#1`���$�)i�զF�0f=g`�Ɓ�?A�ͳ�%2ޜS|���䓿�Sy]��:)����������� ������5f�j����@M�lk�^�qOڞ��)�;nܰǓ�#�a�=�%�o�J8�̄����R��q��P�)�ܪ���Z�$>r5=m�@�Z��h"�����[�\���B]`�w�_�����6��vf���6��` D*�OPJ1ڃ0�'?*1P��8	�nd�ڞ��c��DH""��7O�j?B$�l}'�(�/��͚�]G��Q��M��68���^�,��~db�}F�Yb��԰p�!j��(~�9UJ�S���⃈�� �f�ţ@c�p��
�c�~/:{�\�D@��d Ǚq}���iB��ދ���cN��'Tu��L�l�H��F��(��Q�������s    IDAT}�O>��8�׼��׸���"|����D�uS��yi�i�b��;\ W�ը}��Z��B�Ħ&n��m��W�n�ѥ�����F�e
_��~T�G2�UB�k�8�
�\�]S�ý�����G�{rզ��Ѯ)�O;G��J����u��.���B�1�E�Bh�]So i4C#��z�J{��t�-؎��˚�����zԵ6cPf����.X���, d�⺨7+���=[<<�p��g]'��f��`���Cb�}�>��bO��{�I|�gF�0&�AE�� E M2�.�t�����A��znfQ ��*&?����"�X���'���/Af� 30e�8/^g���?h��uTbJhKd���U`�)���\���$Lr0Nr?W=E����z�+����(�-'�5.�����mD��@�l�a�|R��|���p�� ���O�8�3�l�X��d��-˒ӗ/�����K����e�ݤ��v.V���>��N�s��W��9����ï���Re���خw�J�F|,��_֧������c�	�����v>_d(�`�k�IT�����p��^H���غ�8 ֿ4GA�l9�����I��g]$'�YTf�63�p�H�qy�a��-+�D8��^�
W�J�D��. g��M���3:&�8#tA��ٍ4U)p�i�D�X�J7��	�h���X&��]��E���[ǣ��em̸����µ�W�Y� �މJJȅ�)�,��I]E#�1N�$�#�������~�ɋ8�׬��װ|���������U0��
�\$ ����8t��+Q@��I�[��u�\c��`�߽�8����w��0;�}�Xr����/��(M��]"�=��/�7�}g�w$"KBiٵ�����t�Z���s'�0U"�K6���h�L_r��t���c�G��o����뤹�y�\$�U�'v����7T* �� ����CK=H���
�?%��.b�8L�� ������=߃3a��n#���fMt��^�V��׏g���JX��p��B���6+�݋� 3���ӄ|H�9��$�TD6ہ4�-��a�83��cP���2p{d쏹dsdp�G��	H\i~���I��tA	��g��!<b��G>���/������Sy�ʉ x�����'?G��� C@�#����:��*��!	��a��E�j�wdr�h��S���ʕ�����ق7�[��聆�����`�D�K5�|�u���R�_,?�8Z��v=���7�1��z�β�Y���_NM���vȁopLm��+�b�F�P�#�4*���W�	�3��h�@���%�ѷ��$��������D��1��e����L��<�����<�8���F�]D�vXA<6+�ߧT��8if��t1����%XP��{�M�K 6|���q���o3�_�0=��ӌ�\�JF���؝G�3�F�~�E<��AVþ��4�� � %ք�G�vf�}����.�	o�!&%df1�X��3q��/���S��ר��ר��?�� � <�.t¹h�<�^�{!�v`o i@A��y��w�:����n��-9C7�&��VҤr���o���%����KIM��ԡ�O ��g{�_O��9H���ݾ����c�<���E�pm��v�eԳ��M͎�6P�ͷD�|gv�hǓs�S�Ċ��C�-YC�� �ڗ��>O��g	~�.(1P��0���� E�*A�)0�*e"����e0�rlX�3��A�a%DȜ���?N3c�
�U@Xtϯ1p������Q�g�#��WW�D�p~1Y��	@b�"z =ԕO�&���T W	�"b�X�Ό|`�3A1�6�Zh
!J� c���:J< ��/�P�QY~��h����)��ŸP�t�s��I3v��^,\��6]�o���?�SyMʉ x��>�����-@�byT@��|K5����OW@��-��iD��)@�P8#97��٨���N�q�VA�a)_[� ?���C�e"_?_>����H�"��V�ݮc���6w�S!(�[�� ׏�eKl��W�6�{���?���/�r�E��Et��=���65[R!�j�D�[��I
H��P9z�S�E2�I��@	�ө�@lL�(ы���P�a�� 8C8fis�%b��Ƈ=���� �"�� �&�{��a@8��*��P`�����=��pL�id\>���"6gQ<n�.�O�No>E�3x�@b �y��#!_'��뫄�}��m_L8~a~��0e��@�����u��*`MB�gl��	I�!e���a�����ܓ�ou	let����xO]P"�<�6���C��������O}1�T^�r" ^���o��ρ�GD����> ۫���f똲J4�g@�Ƽ
�Ժp�QS	�wx�h�$b1B��]�nf��c���MV��J5Z�ߍuq}�����*mR���T���k&g������~��ݐJ�a������v;�%��c�^x��|w��j�[[�Q�H�����H���E����J�B+0��h�i}?�@%��HHB����J΅��������.:<s��搱�Et�aE�V���_��ܑ$��Jx��>h�U@��}С�E��b�R�!F�e�B}ͭ� 䧳x�  �Ri>27�Hm�$���&��6�x���3bO�@�\#
��8?���<g!��*�a ��%5'��5;�����a�o��yMh���2	JL�yfd��{JW����Ͼ𙫓=��XN��\���羗2�0=מ��-��Q�{j�s~�}w҃fSnT��Wګ��,�U�]� ~�ݯ��K�"%hfX�p� �o�|������ 
�+8U���|_�6v���u����X]�� ��{���P��\��9/:n��1�=n�
4c������7	��ʵ�r��C��S�p�Z�J�9	��ziSP%D�N���9j�m�Y?M�Fn�̓Nۖ>V��� �ǜ�߸��!��	XwX_���D� 1#<3b$�/�XoE�	tH"9�g�=�c�g��`I�s�$~Aʌq̸��x�$���~2��F!��5���i�)!���%.C�J40$��qn�&&�DK�m�U�R���J]H�8�a`N�!�w������?���j�D ����?��o��� P�]�D���l�h9P�]�X��Uq�"Z��h� � Wb�gܴq���ٷ��6�O���5~�T��$)�=�B��w�\^O(����g��4��c���~U��7�O��7�r�5Y�l�O�\� G,��=����\'A0@����
�l�ڇJ�� A!:" ���T�~���e�k%2(�jw@A�Ӥ8���6D�v�w7��h�,�{��a@}m�<�]hZA�d��Wt6 ��G�y��Y�����CD�0�B ���G?g�J8�h}�	�q8f\]g\_%�>���af���C�'�f�9�8������$}���r�Ik,�I��*e`�	�$�	�B��e`��������z�SyUʉ x���>����&Ɵa��m��_���1Pl�d�&n���@� B˹V���_ԫ8��Q�s����oV���
�;�� �R���N��zmax�v����,\}9����_s��
����-�)s[�� O��c\����NS�!Ԡ1�v�CpR����_/�H�?#z,4}yF�$wc
1��c��X��\_f+ ��}�nFXu5p���[=�zw��Pb�<���2�$Q&�ۈ�&"��`��N��� ���}/�M` ]�p�ʩ��n�:P�KU8eI&`�FG�a�0'3�1c%��~k{I�������%��?~���i�t��1c J�bf�G�ꃸ=���83�r��G�jۣRN1P��%�� �=�ɤ���'MV�LLo�i����������xƩ���D �J�C�xӷ��1��2�q��᧹����d�V�����j8ʾc�>n6閣���g���Ϟ@�sٯ΀&߸���;_*'_u�N�ݤDT���N�R\=�ܵ�� ]ǹX�\�z�]£���^�_4��N�R�_���x�p�vcml�?o�(M%�B@q��й
� 7ֈfn�5�n!F@]Ss�:'"��^%Ac���Њj V)��u%@����$�gQ���l��=���|�����Jq (Cb���~�w��E�-�I\���{��c rlfЃ5h�ȷ	i����l�Q���g3�����uƓ��q�!���6c�� �x�)1�I��G�<� �-p���*��B�j�E!�=�S�MJjp���߼	�?�ʯ=y�Sy�ˉ xʿ��o}�(������/��*t#�ch@�6�����m�M�
9P�`/����z�ZM{"��(� #��%(����4�B��^z>e^u�:O�=����uq�ϲ=���ڧ��|k?������=��ł)ς�����`���l�Z���0�R��&5�=9�]�=-�ڴ�O�5q��*޷���,YP����J�A����}$�5�C"���Z��̀y
�y�$��p�7�,>�	X�b`��@CN=�p�q��v�����ꍿ�D��	��W� �FU-@��^��>"�:��&���1@���F�#�Åx�jV�~1F��gL���1`L�|JU�S��lF~�'e�j���h$$0k]�'�,�>`�!Jfz�����O���+^N��P���7|"d�{s��q�6������s��Hk�rp������ow��{�\���|�.N8Z�Q��=��G$�0�9���e��P��{��"��"��r�o���8�����.���)�z�"�J�\�W����F����)��51�	��%~��yb1w�c��ޚE�ckXD�TU0F(�`�|�U�aq�(Ax����$qC���7U��K�BQQ� �M摁�l"B/�y�5t!3`�Xa{Iz8��#!{ c�����N�4����!���@Я	4f��'!�I޳���^�j�]QRADJ��zϸ>T	��%�C�;Y�9s��X�w��(�[���-/���EL���]��G�q�y��+ZN�+\��������3`\ 
�J{@6x���ro�W7��ؒS^���=���%���q����l�E���� T��!L܈m�~~p�
�Жz���r���m��{����l	j�pkҀ)*�bk`c/cC���@�ؚ�5����x���λ�k��zT��:7L37������V�b8N�G�� {5��Uz1'.F�CGج�>`��0�;*R��,`d��C� 6Ǒq��8Xb�%��T� ���)Iz���I��4�C�� 1��0�R���)�=Ht�:�m�a��ib�G�q��\#�	(�b���'	tsd&.�N���zAY�`#�Na.�B�$U?X2'fi�4e��0u@���T����{�>���N�+'�,����[@���m &�[��@��}`�_6@8Klx �����Տ=M�pA_���g���� ���9��� ��8"`1^;nAwiTW�����o����z��Z/	�*��ߵ��A�O�����g���&��5��oJҡb��X�����R���U	���/ᅹ]�g���I�q���bp��<Du+�C@��Z�������t�ADݛ�r'�q���6�P��I��e=��b|��Y׸���I�	���{�(M�1
!pHb;0H\�rW#k�	��	Hd2���k8���H�� �*"C ��p�ϸ=��X��Y-��]��I%������za.}ug�:�i�ޠ�� ���Em�g�T<s�\0qGŞ#%\��[�������ϟ�^�r" ^���?���H9��`��&y�kX_=PA�.��8f��k�\�J������k� �'�������>�n$�$?��?���گz����U�wRw.{���G[ݼ��+.�1�k��5���v����9_�_*��v�oY����/�p/q��0���c,@j:vt��6Ԁ|}�a3V����˚Y�8��Z�}�,����Q!*Dj�S���b�\*a]����4�O����f���?ס�	��[�
dU�v-Q�.vCOje����z0WW	�(�gpLb�w©䘹	ڳ�\�B�2��r�A##�&��xHN�C�Ŋ�C�BF�L��E��0�%�Z�]{�L
 ��f՟�7{x{�Z� R %�_a$�z`K�#�@,DA�u&�ױz1 *�	@Πq�7MS����7/��OQ��Sy�ʉ x�G>�x^�� �,�; ;�u�[��U~��q~@O���6T��;��?�Z`*"~�v{Y3^�ٚn< �t�v*@{k��&�o��}�����6���	���?TC9;�'��Zr�Q��fP(��D��e�a�'⨙�����w�X�tI��ǵ)�����r�����H0zs�0�F(7V����V��:Wֻf�D�fb��j�H����+�����ۈ�,�s����xp�a�.�$Do7�_DQ�GQ�궶�����̇�tdH�G�M�=���,;l cs�{�,\}��\��kI��4eLO��ғ�fF���6x"`��U����p3����礁w����Vü�ū�0�1��0b�W��9W�_檵Ⱥ	0�@UB}���b�	F�;��w����?�em)����
��+<�' �Q��xDn�T0�6w�[��sݤM`�;9B���};�o}��}9c��~���8�YZ�p�M�"���(�/Q*�zq�?�5S.�
^m���!|).���� �@�6ap���{�v}4����'&�7�^��q�t�}�g��]�̐���7;�>#��֓����~:���_�Vbh49�����;��: �X�.������ ����& }��#��#��#�����EduO[盀�L�K0��$��43��� �e�K�ѓHt����"X�t$�1����q�J�yqFL�|;#L	�1*L��:dÆ���u$��lPN�G��Zr$ȃ�!D�4K�1�D ��^��j�W�*���T�V�@f�_�$7!)c7ݳ�x�>�<������D ���}���zD޴�]�����?��mؕ�/�.l���u�&��K�
T���y��J�?�>"��e1���	ԡ�5����s�i�$�g1P�1 �ا�g�ܚ� ��n�g����D�I���+��:��X���JD*Tш��7�2q>P� ���3�_�oHp��5�B���lY�l�F\�?�~`w�Q�9������Q��.�Q��%��e���c�3����d��n#�{�c}q�� �u��."e����&`�"�� ���ZEBB%�˳�� ��I����)�G�	H͌y���4�c�43�����I����1���1�D�(R��:�l+a��G��u0��p�=�e����M% ρ���PU(M8����\�SL�	T��`��#��m�?������8��������[?���f���@_`�)��xw��˲Y��7��o�U�`x�
+�^�U�fW����[I���(up��/��R��h���4=�+Pvr���^]��u�ɍ-�ce<@i�^Ge���˼�~[�%!B���������O/�w��똚»N�p�U�n*�@��a�o�����H
��܂?�.�o+m��&�G�u���-*"C��_'����]�j�Y�j���cư
8��J��]$�6bu�#^t�]v8��Я$���U�n#���̠>�q�X�"�t�� f���n    IDAT����' ������Q���M���	�&�f	��ZN3�z���Ɍ��3�:��Y�,&�WQ�D����{���
�~�k��U2�p�)�4�T!�ji�۽�� &5�g�K�o�Z�6��9�`� ��� BN����u�K���'��������|����)���w
�9CPI *�Ձ_e�o=o�O%\�/�	nE�,(�.�Q���!��Ae���7���p��q٦`������C� 8U�2S���^�����mͥ��HU�np�>�gY�:ӆ����nr����q��Z?�r����[;+`L��o)��q�P�<['��6\���jpg n�c}T7�HE-P�>T������^&vqq%��#���]�ج�����q{d]�����S$�"fV����A���uD����������vB���R�u@��5p{Ag�y/�����Xo�Ev��;d�_g�(mn%z��m����$��(>����'W	��:0�! 0@78��QBǎ��6+If4�0�5��X��P}};�����B���]ţ$i�D>3`58�f�@��U�5G3^��� @k��m���[���|��=�L�D �L�>��ś?Ϡ? �����.� e��ԡa��d?j��p���� ����mUf�;ű���3b�v�1�Q-p5��H��P�lL���$�8� �m�z`A�i#���c����}�M���־� �y����T9kG�m5Ǭ���G���@\TZ�?	�c"b.{�����wJ ��@��?�<����H̞a#
W�u����MBa�
؞E��#�=�z�f1�#��6�:�����h�#^����'�>`8��w���Y���2} ��EЭ�|��{1H�`3
 �w���t̠@��if�\�Sf��("�I��N�$�yz�����U3x��<1��Ә1����*',� S��� @����ßԻ�Ȭ o�f!rv���`��i�	�(UbDT�v�q�M�}����?=�
xʉ x��>t�'r�Č��A��>eSex��f�s��;������0�f�j�����>7�>M�@�P	r���7_e1��&�u�0�[�Y9nRKx ����X܏�����0���*�ۇ��O_¥�v�a9f��E���J@̮���ߝ#/05B��Ԑ�
��0�wUX��jP�	����F�B��@kJ�N"Q��?��6""�8�p��9�S��*���e.��=3���_? L�:�v�F�]�wbc��#���'P���nt���YH� f�fF�gI"8Y}�#�?N�%��ޙ8�0W7��no2�!#� 'a����CO��^�o4��0�?�0	�^��	�ʮS�
�/���t� �Iʲ�0[� }^:
9�-G������&N�k.'�e(�'���)�?Ή�V^Յ�q�
�U
�Lx����(,6�r]��9V(mp��Z��w�n�_9���-��߷Q�uj�xp�%�W��v�� ����r׋�k��m��z�XX˶�Ǘ}�zv��9���{�:K���N�7i�.�rϖ����C��0���͓J}9QB��k�M��$�q��AW�$�1���	���Դ�UE�$Lj@���ć�J�bC@�0+��A����m"�>�BXG�@��D ~���/Y���	�w��g�Ij��AC@X�:�'�Q?� ��H���C����,AbpO�����q��;\��j՟��?2��7{��&ۀ,9��2ȹJh�ޛ�_v�
�����3������r��6�#i��[� @�iacR��P$
B� "��������'?���q*_S9 _c���|pë㏥�?�!{�'��4 �`0P�]���=�o�K@���j]�f�\r���6������������;����[�`�`Z�E1���$��b6b�.�*e� r#M`4�iu�#P��,C�Ң����m7�!/Ǵ�ch�e9V|�QA��]?��s��F�گb������;
�c�o��CѴ�Y&:5�s��n#�;��@��fΌ�} �#��.�����1�^��H��,�A��e�`& �H�I�j���4 z�Q'U`�z�`��0*%jV�� ʌ<J8��}�A 	�O��\\���wp?�B\�3n�	�1K&����c�t��M4�= �\	)��w��Yr�,)��r���ȳ�b�qZZi���H�� �l����BH0�H����)�~��I�5��5�?�|˜����רw����%����g%��@/�Efo XuxԊq_��]]�">�Z�V؝���r�����X�-�^�֌�:�6m�!��W�@��|� [+�W�����Vߡ���l����>�.������i
[�
��]�R�$(T���+��B������}��BP0��\��&8��s`P�h�t
���ܘ+ػ,�:���D�fV,p!^ �6b03a��Xq�jz�V� ��%�O`��D`�`1�;T�.
�54pGB�%e� �H��1	�� ���
!v�� *��Q� v��$��8�DT 6�����Q$c��5�1s5�0�b�a����_���O�0遷M�����g{��D�F!���6GI� b��3�)������q*_u9 _c�ໞ��)�M,j+H�3�o,��/Xհ͎x�K�\�(ԧJ Z_����[�3d��f�8�[n_p�V�)��m
5�Ǻ k���������}\8�+.*����|��;c�嘭4\~C�$�L�n~~��3n;wp w�U��6j_�mP��A�t���i�v6��}ׅ���>F�wu��>�*Q�t�|ʣ�g9�C��q�F H�]/�A����Dޜ��یۛ��W׹���D������Bޡ�-���T�0%����MI8}0p3� ��� @���s% ����Ibl�j!�c�q�b���=��\c�4"_����(R���U/��$�P�*&�K�d_��7XOfI�l���e��mD�I��T����B���P���ι���~�S�{��8�������|�'��M�����23���p�s�~�+��Ӷr��60q/�k���*`W�������}���w��7���/��l�P��{.�5m�����3�n��T����}_Ԏ��I%��f��߽�KB��oS�͑T�����_*����.Q�{�)�-��^�TT��AU"ѨB%L�P��-n���u�ġWP��WQM]�D鋡F�I�}��v;oZG��Nu������{ufy'�r�3�IZ��D ���Y2��;Y���MfHR�P�3���C�����3�pd��,�Y2��BAv� �4�@St�������J�4��{�B�a�� j�����?_�?D} Z�ߵg�O� Q	�E,F��Hz���w���O}��)N�*'�k(z�ÿJ�>���b9W��J`�@�,J��r���.��������,���#r�n�@�|���ke�6�{��.p+P�_עq�gj�1*�N� �#��u~�����וט���<�]CASAԵAw����2���h���s^�ii߁��|?vMQ#T�}�N6o��4��������bt]�'���Ǯ���
&Q(*��U/1�c���(��d�U�7�,g)3ֽ���X��]O���w7B���<e���T��!ӝ\ϒ�/C��* ���j<�!�Ȳ	�b0	AfQ��h��5�?��BO��A��LI�$��30���*ka�},��~d�Sc�T����! �@���"�Z�R�$�?@5߅�B(r�(�\��߮���]� &HC���;|�sO�N�*'�,���w�+�g��	P�Ϩ~�PU���.�@�d�fku�\���G[/�䀞�_h�� Ȍb�$�:�/��[�_��UY(������H�Z�u�E����"����
��4�m���{;�%w����
��5`T�����+�P���]=���B�����S<Q��_�
RQ�,�[V���k��R�n{5s`����
v�$�B��j�9�
d=T�AX��nд�]�,�/�盀Up��3&��F��#�Q�ӭ�:���:"�I��$C�Cp77�[AR���Of��%��aP��](�,?�ñ
��Q�I�u�nM L��9��J2����Ms}0�JRK��b;0��>��}����y�o���{�0�KSC�Z�0�� B�����ez,N��]�@��`8!o}�����?�N�+.'�(�����E����5p � X9x�[��ؽQ���3�ʧ��q�E�ϵ7���Ȧ���/֦��1;n���%�ˋn'�s���e�����1BM}��<Ǭ@�c��,Ĳ�ٚ˺,�����2�s��H�'�Ӣ�p�]���.([m�n��_��յ����!^{m��Ox=~��@@cڔ���_~>��C�,q���B��T�������AoWg�튰�����.v��$@o� �ׇ�G��vJ���8!G��ASF<J ��&u�2t����P@�!��)��!K��$V���H�D�J<�'P��U�5��I'm{��K@$*����X*�z����AC/���9�1V������%�P��Y�zo#� 8B��O�h���I� P@P���'�챸^$��ɠ���"�k ��9���~�߽��?�C9�;�D |叼��2��o��kة4j}�˹p`G�@�s����\�����R���w},��V�^S�s��b����<��eu.���H��M�;��.a�>-����յ�O#"�@LMn�T% ���R5)����Pۦ�{��{��[��c���(+ �~��� �#�ŅȲ>B���,cs UkQP	�E|j���J�Y����8��Z dՉ���F��
ح"�(Y vx���J�c�ox؃��E���\=A�E�d��^L���W�h�-�蟀�@I��9 y�HOg�������	�&�1�~w�"���BPt*��N��Xm#v����QM%2������$�!��4;+~'��7Ɏ��\��ufL\�r�	�ў�;��=T)��Z�ǁk~��>�n�vK BfP���?���g���+,'�+,����xc�ip~�l�m�X����C/'��vC� e`\U ��G�>s��L�)�K�m�q�.�^Wt�I���9�Fs���hKp��`	ۍb	ƾ�J8�Q�d?� �0��^8b��E5�y�W��*AW�߉�Q������Y�sAZ#Լ�&6g/�/��^ܯ�ƥ{b��s}4��=�$�T�
��d�U��5i�����; ��� 
��uەp�(�X���n1�g��ŸO%��^ �Y����ǎ0���"a�"l���,ć=f�ةm���*
�I>���$k��|�I2��ȇ�<˼��3c������<1xt�)p�J��_�>#lz�=i�CV�8�>"�D���c���ώ�ɒ��~�?�½;�=Q!���߂���̬�����UP�@�~f*�� P��;�b����_���?��T��ҽ��z+=�>�9��������,Y� P�o�l�^t��m��E���^�/�I�
�nEb��*�q�>B�\#sh�o�SHx�1�I� ����g�7�l������zMu�����(��跹��p腓Y�n���P�H����Vn�Κ}�kT��6���qbAD�#DxA@!!��Tó��h1��V�DR�M`1l�D���H~\(Q�$0"�省~�gh�!��C�f���q��"�>ӡĥ�_E�W	 !0ǌi�7" �z���Y<�*�;���o&P����	��4��>D�̝{�F"!3���ۄ����f�G�9�D��f����xư�^El����5��,��r�!�F��.�x���6��__�g��@�?�;���i��7@BC�8m��t9����d��i���*�ȚI� !�A�td1Pj4�yXE!�^��ls�� � ��e���+(?�o�?͜?h:�%'_ �qgⵢZ���U�l��� �˒�K� z�VP�n��K����S����Ⲣ	�T<���$�r�"���u�˞�X2���|�+iq��XUk���fLelz?��d6m&��_�u,&�7.��c�3�3b*������x�#�`GT�)>ԫ�]98�QT fxg�u G<P����1s��n��~��2�1�a_�ؠ"n˔kk��	�^����9�:��	7{ƃ�u�z����	��~À�����������:����/�V���'"|�KJ_0d�z_w>:E�U�x���&P��HG.F���`�;��}V������:��&��6a�gLW	qb� �����1N���Je� >ɸb}�+.�O�gW�t�f�7�%�Ʊ��D:C�&�"��,��/{����Q�=OT��6jI���!���b�01Wu΀�������$���I�����>j�NBWԅp}L$��� r ^�+wT�r�;�5�b@:�E�PsN���A#6�:q/�r�)��8����K��[���_�+R;�Z��L�AN�L����j��C����	�m�u���op5��*z������a�H#�wc�c\��� q��.��NJx�},FWV$�n�J���8�����⧀�AE�N��Eq���^ FYg"�<�>�p�����ox6�v����Y�����gF���oZ�����7�4G���1=��"1Ξ�FF<�}��ℸVq^1�K,I��0@���&�`!�� �I��cT���G�`�Y��0����>a���� \�q�	8?W��: #K�3�c���u��bynYR(���U&����I��	�̘g	�4'���J����Օs ��Q��A}���!l�a�0j4�N� t���p�3����qI�j���T��X�G��"N��*'	��Y>�����G,UТ���M��͋�M��rӀ����B8�ݎ�@����sC�44��UuF��U��^��+O���~!��rϤzj2�j�o�f�o鿮o�a#��ЭLٵ�	�^�ၯr���:�:0s�+��~ேI�����֨`\�됭ĝ���N���� �pE��K�^�g�DclHU
P����CР=T������G��! D�ӛ���a�I���.�[�o$��ѣ�'�#�]�p�a��X�i�! �v���CP�=B�	��9%��:�H�����;��6�g��g ό4��"�鍀�q4"�J����(I|GIu��83n��0K� K���c�d����F �`B6�G�X���)@坕GM��V�2/n�*6K\%��U�#0�93� �J ��*�H�ȩz�����=����}�G��?���/�|����9�{�yX��z����?��s��ȃ��� ���pu׳���7��{��zƉ�y'�/H.�)z���^+��;�u��<�ז���E� ���k����{�BT����=s%�����t�o�spc@%M�^���(zvj������U�a�,\�L�O�(א������u�`��T���Q�
1���T0��j PQWe���{�_۞�<�U5�Z�r.}q�c�c�[m�ۖc�C"^� ��@X+X�@$��`���@B<F���R$��4� �6���}��{�˜U��q��Ow򜳧t�^k�9�j֬�w��VU�O��
���o�0�*&���k���XW�r#a~�tS��w�P�ڛ=pS��BA{SA7th������b hw�M`�G����E��/,{QZ
��c�cxcl��<0��hF�mHަ笨O��Y��V���$��x�н�����̣9�AM<�#`�8
�� �i��]�:A+��X�a�EeΈ6mJ�90�a}Rj�@F�v�\��{�    IDAT�u�Y��<�摃c�x����������{� ���?�7�{��o81GA�s��R=9��2���q�ß��iξ W�\���̢��wgn	��5=1W����6�Q�2SM !g��e�+� x
Y�3K��9D�y�t�}���9���������6���S�	���1�ٗA� CA ���]@�XO*�C�gQ�O��1����ЊH�V�7��Zy_r�~����z�|Ni��v/v}��A@��~[gT"lZ���@�Pw�ݮ��,zwU�wh���@{-Գ2���PQo
�A���(�*���̕��A�@��}�!P���MA!`{��~3aXߜ��2N��P����Ἁ� ���=^O�!)�����,V��:�f�j��S��qU�g���I�-K��`!���� 33��̉�r
��`�k��4~9��2 ñ�8�&���j*�~�����_��wx9��� ���O|�ȃ&�A��Rb��0�1ə���?�g����?�_�&���!���:?e7c"��'�y�hv'�|V	'���w���1���^���L��λ?��a�Ř��_�e+�x�9��%x����9�g���Lpzƒ�S8��}y­P�U�����y8!BR��B�/�R�4��h�y�"��ߵ��V��?�	�{	.r�b�P��Y+p(��|�m����NB�� 1���b0VƲ'����2�R@�~�]6Ϫ:,�����+P+�PA�q���AC_�~�ul�t��+T	�]�c�
��0k�x�_V���7��o���/]���%�£,�� ��Q��0�`��LR7���#��g�x kpJ��P5YJ�������eOX��Đ��0�Dv ��k!�AI s�-	(�\��<��9� �^�B��������x ��?���|�<�!�zM����9Nܷ�󿙁m_�k{�0pͦ�K:�I�ggx�߯UH���r�IR�h�����~7g���n�G��3����n0n�vN������10��O���3+�����!� ����RgUP pp=� !�����Q�`�^[i^�v:iJ�!���+�o%��f�n��Ͱ1�B�<$Dp&OY,��r�5XZ�~Gx��7o+>�����í��k#��;з6p#�WhW@�U| N�I�X��k�I�,a}����y@��Jj�}S�x��2�!*h��E&���zb�Ml�ǎ�&�}�m�I��5�����9J��"i�E�!N~��qZG0|�I5	��~W��R���Õ�u��9]���=�<�/��kɮ(��e'Yر�<��π�R�� ��H>^�\U�"Q}���������x9��� ���s?����������P��m���L�%��u���.��y�ڭ,������r�g<|0�I���%�lҤ���v�ۄy��6mi���)Z0�c���?����<i��w�ɘ@�t����}%_lMP����Ҽ��{�IS`�#k&��ջ��Ĺ�_��'���R���pmF�!��<���&�T����f���)�ՁSR���!�%@@�I��Hm���H ������_5�J��+p��+���j�uH��A=��Hi������R�]T����ַ�$�݂�	X��� `O�ۆ��Y���O��,�{�"�_��n_'RI>T�C�e�[�G�ta/�m8X�<��x�M�'9�,l$Y�l������Rw�	1X����Hlv�E��:ևh�X؟ӶQ40j����������7���o�=^ �w8���x��4ƿ7�~�l_q�,h`��C ��jL8�O �ǜ�X�0��}|O�~�]���1������ ���WNډI�y�>���k�kf7����m͒���SO��!bf���${=��r�1�Ǻ�iQvb��G9$G�km�����z�����P�@Qtǘ{h��zn�<\E�fm��~Kdz�Y�R��~	���=���W�\���M񪼭�V��Z:��5]E�~%��< 4xy߅���܅��&����_T�aP`�^�0�G@��/��])�Њv��r�1�>"{���]#���ly��]�D�ŐҥM#�C�BC7}�Z�d2��᰹��iE΅LK�	�j��f3E�Lj��
��� �D;��~|�����/�G��< ��h���N�c��nGH������^,�fJn̛`*�s���i��w�h&��'�2�����$1�����P�q2<�A�̈́rl���i�_�g�i��q~{�2��m/S�?=�t>�c�4ߞ�Z�j~�u¹�I{@�)D�����j�c(HQ�րY�@�� _��[V]8 B7j�5�G�I�C�r�P�B��'�C$ڇ������7�[	�[nHx��:5�)"چ��m��E�_Uj�"�l,!�䷍����m��7R��rc˒#z���!��K� �7�2��w��~�}G�V�s�����Iݝ0X
_}�D�!�E��c�JT@k�=�ߧ����!��D�e�7�4ز�d�4�����h���o�4j�;�%p^�� ��Bm���n�gl��0���/��&�mM�w/@�c� �7^��/�os��_��/�F�� �	/~#t�@%��IҺ#��ۑ�e����?1T�?g��&��I�}�1heƬ�����خ�j `%���u/��rar�:��Lʟ)���ǀB��8 t�{4��Ό��MQ*j��\u��USf�E�u	ff���9ρ��ɹ�'���/W4@��l�֦0�{dXKv{D�?@�EM��k���/)��I���P����NJ)����`�8��❿�����/Ru��A�M�������P �}�r[�@K������C�}��C��=}�=i�s��<���t:h!pgn*��w�l�|��/Q����}bt����F��`�����¦��[z�P�s���u�0 ͙?�+����9��:� ��S���4Ws_�]��������5lo�Nw�������_��/�?r�h �����9�럴*Z�����{0�P�ɗ�Xf�3�N~a8�\�	e�-i�_K�����z���G\�>ą'"�,:s҉�G#1�[�W`e�.[cy�E F�3s�>`�@��3D�q3D~�g�'�Ooa��w��l�ȁd��a����1�;3&'A��1���g�;�S-y�u�v���'��8qZ�]op��˷�����頵�'h��� �r��l}Wu�$�U�����1�� �p������c�vWQ�ό�2��"�6e�̠7{��,��Ek�:�� |8�ß�����U����E��;ˀ�5��=����*}�+𨥂7:���D���q��ÓH��0��ƨ�L��I���y��1SB%¥�[�M���V�[X�;c7��֥S+�S�1Hd�	[���ɺ�N�C��t��Z0{�W�N%_�>ĉq�����X<��њ�()�8]b?
�g���]�y�'\�xq��� ��1��� �"�� ��L��6i��^��f*�������@�� �5���"%��D�3>(��g" �+��?b��O��-���el9��2��HN�Dظ�.I����A��`�ss���36�Ė�)�@i����=w��-�z��5!���32qsEv�6 *t��`�~��ìb��_� �5Z�E�qX�2� �Ι;V�W�L�PE{��ٻ\�[�	@T��$�?(��\�vѴ�?��<0(��3a}�hߵ����-���
w�d`{?��g� �ԁ�&�f@�6����"N|�ym��+�m

�ͳLr3N`/�IA���B��]�=�QKG)�8�c�h�]�4������_#���uq�ԁ�3z'�Z"�V\n88�����<\ʶwgp�Z�i�Љ1��2"���6��Vc!0�ft�6������k�vj� �U�K��D\XL!�0�6��2�i �^�g� �6G!�KC�+{=����ԍ�´����YWb�1��7B� �?�xޘ�ω��Ǚ��,M�y6.���`���t�0��)�q�%�`8(`�� ��������:S�+L�2�>c|�d�]0g�d2v��7�(5���G���1�47���֕��Q�����М�|����*���m�gp Y��5�!��4�	�5��'�އ$��:�5A` �����m��:|��c��p�]�yc��/��pyS`����t�E�ya�pg1!<�x_��
p��"���X��8�����ͫ���Z�݅"_��T�3Mw1��&5�����
�;>{�hU
[j�`��P���� �r��MB�`�5�j�4�J����p�3u�����P��L��n��� �!�Y	-5͟�P_��q�̞���m���>狀DK0�4�9�`Ɛ�I�11P� �%^�gǋ�G���o��?ǌ���I2���I˙ɲ��L�IL?3q(�����&����k�.F�6`>��Ot%��Qh�N�y��l혧zR%S�����N��ET�,��±����t�U����]2��)?�1x.J��G��m����?K��V�ȥ6ӵv/cv�����6£ޜ��׾�_��R����w� }�J��^�'Pt9��<�m��oEB�
	��5I��ꦢ��W+DU\#��pw(���psS�k���E�U
��B����m�� `�\��j�@���i��A���i��CL?��1�5��h��Ç��2�y`���:3�y���<0�E��� �y`�}����4�]�<�.�1ʌ<��	4��AZ�`��k���IM/�+{�O�����yۙ.)a�&%�}��fJ�ﵽi���K ��J���W�͏��A���?��������rLǋ�#�`�U��a9d����6�Kp�d���I[��$������R.�3�$�RB�r��'	41)��� �7�+O��I�F �G�}�Q����t5U朗)�}��q�9��CTF0�������ȝp /�`�iL �m���`�Խֶ�S� ��Q0= ���ʿ��J�lWc��o<pT̠@�ɤ$0 �*ck��je��Þ���~��7앹�W��~GR�2p���xԤ>��<p��=�>t�FhaB��ǎ�w;�`�ƚ���0��T�J%q�x��@����^R�-�p:T"M��8����ؽ��*���:nE�&o�����Q^�x��n�R��*t��(�.���E��w�i<_���*�0����u�P͡�t���_X�hI�`��8��uB���=c �b{'��DȚ�@�۾t�����ꂻ�|��pֈ
�m�u��1�_���嘎������,1���^�$�XG�H*-=�#�q%�sڤ��f�,lIL�s���g�|B��0��x��+�~&��yrfis	�!�g�.��`�ݟ=���>���~0f�mQ��z� �BI�$�4fNm�y"���U{vs(ԇ�~
�0���uƝb��C��U;��v\r��XJ$��Z d����� v�$Ȓ yzߚ����B"��Y��Hm�$�����M��A��/��R$��p���W�~��*a+$��(rt O�e`_����V���;,�*h!�3K��:�[a�m�����W���?�o�����#c[��:����J�}�D8_$�η�����8�|x���݆�i��J�lv�÷6�'X�Q^4��y�V t�2�MRVAϽo@�h�( ����DkZ�WS�l���4[S�}���v�h�]c�K�O�˺'fMB���@1�Zȁm���}��̿$4� c����������7�r�� �����;le���5�AƄC2�i��v�i ;��﹢`��{�8��(�in�cc�j}���)9ґ0N�2R���g5w&��N|��^ߋ 
�{K|�^���zsH��6��Ϙ���`��y�=��.i�� ��@���6ܒ@ XXJ]�W볶u�,/A��in�:�	���ZJJ�������;�1@�c�F Dj�-��[���f�1�I�HC�U���	 X"���W�7�k����?�P�ps(ؽ�X��ÛZ�	e ���;1��"^��IL~#�𴊸��� c<tЉ��\۴D�ӃT�;>��
>�Y��8ꍡ���������GƇ��u��?�ǎ�CU����%��ߺ$���P�0��S�9R�G��"�=�P=N��?�)Q��Y����D��K��|I��Ud��t&G�?3]�	1���	��*L�M�t�E`�ٺ�}C��(w?�G>�?����/��t<��?B�?	f�}�Gk�g�� ��ٿ�����:Y]F[$2#��-��
&h�q�����-.33Rдm��L�Ӟ-=+#���K|<q�y|�D���3�o�L������12s�v��1\k2P�FjXo	(\�Gr�P�p�HR�|��ę+f��ɔ``��u�> ��}��g��f S�_ϧ��	�L�X�����h�@�K�s� �n��_�H��U�R�a�������?����݆�� >�}Ai��f?�8��6�c*��T���F�i�F���=�%�oe�i�����t�����*��PO+�t��wYC�>_��ـ����%�o���w����<(֢��Z�g�2�z���*����g?NB!�U$ꢎ�F���ٚwF���T�O@�*K-��b����
I�]��v��9�Wf�_:K� 3KΈ*4�r�IX��o��<6�V5,�ƫ�y0�m�wBk�F����# �^ / `:J)���nb�ϒ;N�Y�2�1#) l��ϙ}py���� JH:�{�^0� e)[�i�3��`jY��1L%�|�01�t�
b�g�����%��|\�sRb����|P�-=C�n��䬘 �V���/���_!��P/���(��W�Kcr�K�k���_��Z/��(������vo1�UG?�H�R ai�2��&�c,ʈ�R���h����Q��
�	�dBڭd����T�vx�d�F+��Q6�Nt[��J
�CYr 87�E�p/���,�����r#����!��� .�w畱k������X5���*,���p<�סs!���8:�r���x؆/ �{-M�x�ɡ�3�?�I����/��cf����f ,��ܼcI�Lw�D�@!v��f%N[�� h��K���������!��A�`�kbƐ��2fi|t���{��g� �x1��K?���0����/ 95�yc �v3�V��o��3k�|;gNz�Y[v��8�>�g������k��2�|��cj;�����p����+�
�U��~��3�w
Ǹ|QH�1�\�Ǝ�`��"aS��ڻv�3;����$���� o7g�vR%y��x�#�{^�pG:7� /�;��D���V҄�%}圙Z��T��5�S8�%<o)b�_7�7����*v�$ǩ��TZo�zS%�a�|����@�o������e ���#�]��t�X�uH�?�{���2�y����3Xx:vt.��v����OVս8���G�T�>}p8�N���nR����$����C�d��͵��R	��d���r0g
��>��lH�r7�x�Rq�W�����Zeo��7Gc��֎���\�`����W������	��n,_�����_�x� �1���_��gYT�lU 1�QC=��������N.	�[�/c�a\�Ej:�G��<$4�y�_1��M�0,��P	�3���xs�ڸ����y߮#�Ydlר4�����tmFD�pH�~��Y���� !��d�u~��nS�Ǖ5�;i�L�h����}J`!d���P� _��1�SX�$ dK|Q��%��	��[�_p�/X�h �����gQ�����V�%�[��}�W_\ f4"��~�����v��R�p���l�{�i    IDAT$�)����/�i�X���l�*��g��
���GI�[n+�~�*�A�]B=�c(c�.ó�m��p��I4���}:,M�vנ�pOtF%[gpg|�ER��
n���WP\7ɦG$�C��r�\�|<u�x�������I q�C�E�*�6V�+����|S^�I��̹�~7'V[KyP��c�(�=x
�k�r�&��%X�$�(E�;�yµ �Qk��M]������ ���m��43��-ߨ�e�SJXYP���I��fc�p��!}O)32�z�n�%�>i��к垷c�$�̘����`ʤ�/�� �����)3�,�O%6��S��N���[�k�!�k�����y�@0oρ
�j�K���}�6 5~a�%vϻ��X!���B�] �����\��i��@���O��du Է���c�1se���*�5��� ��:�@���°
�Z�77_X$K�ʒ�������{	W �H�G	�/*�N'�I��о�t3�(c�y��k2#8�i�i�߷"�������T�'�X�V	<�`�޷��-:E���yF�*�#���R�G��y�����tf�R�n�ڂ�Ry��YTu%��n�`��9�N�A#u����T�$�A���>S ϩme�������cT�LNU�P�n�3?N$#6�kא�:����5w|�'_��_��K�� �ϗ��a�/ �TJ�7S0������f�>v:��  �5�(���/�����dJB�q#\�ؙl>2��>�ٹ(2�]���Epj�����8fB�*�����&��h?=n�0��3���|�Ř����7w������7Y9��[ 	O��P��6�4����L9�o���z���� ������� H� ��/�x��BX��1��~)�l�we��UC�"��ǁrb�*s@h�
&�.�pW������V  h ���,j��M����!s!�
p� �����>eV�u�;�w����C��'	��p��@��s?��Ό]��"恵Cߩ���Z�C��R�gl�4�kb�y8�{�?��ǳ5V��c}X�E��1|��hr���L@��i@�<�ٰ0%8��|P'B&`�B�Rb3�P�R��xj�z�H��Zл��}���0�U5��jZ�u�`];����/|����?^   ����k�H��e�0�
Xe-(%��o�ٯ�|�Pw�o��_qa_ЙI�9�]��n2��x��g"����!w*�6��KWP´�M@$wg*͉oS�:g�\��Ί�݄s��5�
���d�1�9�0B��A0�<Vg�i,E��r�gֲ��LZ�,a�w����ϧ��Ә�s$�	bf�Z(U��p+b��-�^
a�H��
q/����Gw8T00�i�T��J�^fQ�3IF?�����bi~�L�)� �����I(`g�'�rc3
p�Z��� ���2Pτ�p��C�V�CM�8��
�V�`}R�V檐U
 R'�V�S��&��0� W��"pU��G��HhRuO̟��k2[]�g``���H��Ǵzy�g�6Vɻ ��	��PT� $WL��V&��5 ·�,�o i"�K1 �*w
�2GG��@���J�� �   (�)t,���p-G,u���<��H�Y_i  �7�"���P��b�%�m(x���0f�.AsjןH~~\���xY����(IbD:�2n��=�1����xh�ߧ=���l��I0&W٠Rۉ���; H^�S��73�cGv!! ���C�!����:����%�L/�  �+k6p�=����571(�bɫUF�4¾�����B()�BF{�@o�S�$<��E<��u.޶3�J#��X�!��}��8w� +@��� �E�/����^_��&�_��4�jٰC��
�.�i������WF+��&�ޒ|�"=0\��!�jv�?cE~�U��~!5�H	�Z�M��)������(�m`�t<�!A�[/�<�g0m& �Q�	��y���B��O�=8���~�Q4�H~����q��2��>d�4�*I"&� �2�E���+�ď  ?�_��,^�֓I6�v�����$نr4��¦=��6�6Of�}�)1%J��>򑿺�h�����������J乧��#e+3�T�U�ig~��L3�.��F�y��	�`v��f����܏?�}.i<��P0����ys�c�l{���}��h!e�ϝ��U�}ޟ��T�K(�1X�>�?���[�ZZ)S�����uCMD�����]A��^o��o��q�!���!�m�h��
��{<H_G�s0�/*��ΐ4��@+������⿩���Sm��o������@���*haY����"�
��uƻ'�a	ߊ�I�Bfu�e-�I����;�"�����H��s.�h貊V�!Ll�a���K�[�N�3�u�>�����,ը	\�y�ǘ7k�5;�>������������3�o�\�5lכC�'�*M���8[�o�'������ďO ������0�/�j4����9Toθm�){s�A��ՙ��mq0B����3fESS�`����d���#�Ӵ��1NPV�R���g�����\�A����hW�3K��:_?�GHj����2��bsSh~������w���*$){K�W@s��\ҷ�%n�(�����.�d@����b��F)�19-���K-�j��G�Ŝ�`�"B�q�.���@h��o��:���I��T!{�%M��^���Y&��b�`0�l n*��Q���y�:詃^�xqP�� U��c{�Q�Z��_�R������IFDָ��:�]65.a��A^�X�`��c� ���؁�%lp��_����,��#w���}:� �K�S����f4β�	#7�=��3�>���*�
�/c�yL������C|��B���8�,���~�s�7~��o�>^L �?k�A�4U�yN�H�D�lC�����	��af�̸�0�v@Bdr�,]}�ƙ�N�&CO��u���ZC#`^�vo�^�o/����}�f�>M�K�R�wJś�sޖ''�g>�Ǿ�9#�Sx]z�,���Y-??c8 �w�L�uomO�$��!��W�25����=5p%e,q���k,��<�[�>,ZP�5�U���Փtc��8$U���7�nE��"�W�c^���7�	�pd��@R����!f�'���X���6��}�a�֊:�K����,Q��6/Ky�z��v[0�qwMx���*&��K�^�Y��ך�p�j�fa�ݿ�>�(#���"�yE��I�U58��8r�M��ಲk8�1e�ˌ�!���7 �!Ý�9��c8�?�Q���~���}��{�jI�Et�˨��f��邋g���N+�F?��'||��_��/}��̮u(�Y�h�zn$������;��t��%3�t5��7�MA���Jgdg��k�?c,���(3#s����s�ke�3�k�83\�tm0;a�z�~+��G:/pi�����MNsW��J�~hj#����Ϥ2y�~��$}.�Xz�~���lP�%pQ��X���2�B>Nyw���� azP	��� m���mp{�_q�k�<��{jnvE�d$� } w��s����,$Z�]��
I��8���
q�T����!�}+賈9�� ���/�|&R}QSV���&k� �!��Qټ�eLC����me/�d�P
�ճ�@�� ]�Y��E�ߋ�\D̤�>4,y�G;�`�-��@��2}����,�9�!I�Yt'8-4gC/c��Mb�PS��C�u����h=���<�]z�1�ؤdp)������k����O���5 �˟����`dj6�-9ʄ]�'F1��o���6>|��#��$I�7��ީ�|�J�´r{y/Z�v>;�Y�x0��l<o��K����A�Kª4��s ���iLB�sN ���c��hof����ܦ��}Qp�B1 H�)@B ��:c���\� ��9#�!���]{QK���@����o5�4���R�}W�t!^���?�h�n��>00�]�~_���2cS�)�	l7�LA$�t�&�����WS��l�;u��bIx:��5�v0.O�I6J!�����p_�B?��}�}`Ɠ�h:���m�h��ݎp��U%��Zp^�P�X���O�䀠[��ķ�^����јd��4��ҎQ	���gS��1$��љ1,焙��S�83�2z�0 ���	(����Qd]S��5�d�lQOd��#�|tFc��u_# E��@VH�%PBM{���&�^�?��'z|� �:�K�HWe�C����B���mc���@��"<�*w��gҴ�1�U2 �HQHT��̰P"gd%nT�G:�o�O�}�Ϣ��(�����S���i������f��/�~7�qm�4{���h�oҔL�]�͛�pRu0mS�J��*Tu�25��sԁ��9�׉��~7�)Gb���SJ���������P� �SM�,��&��a)����#T�i��Rß� 	<�����}��$�{.����@�,h��^Q+KCO+pZ*���,ډ/�!�@���4P�x�}��	X���?#����{�7�����p:4Hƽ�o�K����zSq~�p�h��E��I҅����u���8�O'	Կ��yU�6�I�Ӯ���0(�����m��"��x�ا$6���6�V�!S�-�)  �k��8:jrh�uO��j̶{@��i��D=r��a�� $	t�>��@��C5'6$:ŢlO��?��""�L��l�1�	L?�O |�&�_��/��L��u�n#� |�N�O W�}�?8�V���=��fg&�xe���a�Ƥ��w����zZ�s������]w5��A��7I���ܘ1�,L*����X�7s����al�k��(�3;Lf�I�%<�C�c��mI��9�*�|ي>�1�2�}�V��������/�6J02�$եwj�޴�R#�_�lrg>�Z�/Z��$9��7;��o�pw(
���~!Mc���XK�B8�G�`�d<��wh�o��
;H�V���Tt��9��f�^@���
�hc�� W�8�����c���p:��}e\6�ݣ$�9>u)�{����*���g���y�|a�] SVH'6I�����m��}r�9͹���Q�����z'�z�ɥb�+ ��ҽ���B�8��p���\�����f��`c5�S6xO�~���ɳ�U�:M���I�&��`t��Ԁ�0��h������g|��'�X{����{�vY�Q����Z�9���@0g���^�����L��\����&i\.�C��}u�����/M�(3��q��q��ڏ�c�S�]% rg�JJy>���Ҙ��郸����3�/H��^��@>;I�곦IϾ������`��SG��� E~~�z�Wa`�����V�/�������vWP[r�TbK-�d�#`'� j#�N�䲐��]��@Y�P$������@�PEp����B��;�2�:ꡠ��>ۀ�A;BۉT|>3���#�0��Bx<�:�� �n�����殠��^WIL98mC���*��Ƹ�C} �4U�7�`�P��#�^"�	�t'�m��茽�mF�q��~�)�$���OD�GP(��wO���i�!3O�&�s�l���*B��=�q�g������\�N��p�Cd��+߲(��$I�=����	�, (_��=�ʸ�3�8%�A�����h���`�����8ιML����n�v$&��ʘ#G�\�G�c�vm���9��y������z��KH���53�bR��$��_u\R�v�6���?xV^s�ߔ�!�/��L
&

�}��&_f���/"��~f�Z��:�������n��up�kc���ص\QP��wR�G��"��e�� J#�������!o|�/��ʍ���iH�?J�$�1Jm�5�����p���� N��w�Цf���X��~	8�~_���?�ޏ�]+�p�X;�������[ՀT�ցW��|�  g,�0���,�t��{B�*~@!I��2�Xw-Z�/��w���͆To��3�v�á9�Z�@�X�UAPt!�4]�pb��A	N C���?�<���B�4�]�y5B�p��;��}VӉ�m_�
�Ȥ=���aV�/2�-W�*>Q �I� ~����W��o�>~`�F���<Z�̛G����s���<C�z�1" ��:S�{-}�fv>;��L�)���{��5o���'���@[g��4�6���s*g������鉒<b�v���ޒ��7&�<�]
��\���^#`�La�3�׮1���EϾ�$�mU�}��7ZĀ{�C��*E;���/��x�S!5-$ځ���E+P����V�Ac�k#�V���X�V�
�C�jl��ٮ�����ύ@ov� Ѝz��� �J.�F�ۣ��M��tT���/8��?[W���x��qX
N����I%��Yj�.�۰u1ؼ}8�?\.�����#���[!��<J@�ΗT���w�H�48�:YQ�u�D@&m3���03E��M��A�t�$�3WYH�6l�� ���y�����`3�:<���
��Q�̟��]�R��1՚R�(�s�)�De�ڗ�����K������e��'+���#Ng�n��n���YP�^�ޘHg�7�c���yB�����9�]�2��1F�ۭ��
C��WX&3�i��cä\'$Wc���22�rĤbw^��0�COT6Oɷ(��1)��<L��3�,Xd `��[��1��=S0To�ä�:X��1�h>z>���ͦ�/�Z�@�_:c�c�Z��N��n�_ ��w�/�N^�W�X�t80�Q��{���`�W��Q�+�bw���UL��Q���U���D��D�[���kt`�sG9T����`��:l����P/��u�_5���m�����ۊǇ�KgD�
:{7cP%<����x߻8ۭ��E���ց���Y����ƥ3<��H���:Z��~��0;��D���K_�}��5"4SFר+`��$+�%��>��׭Z�`3<�3�Xr�� �$
AO��%k2pg�(4i[!	Hhb=b���桵X��#B�)@00x�-e�|�%�?9�/�2�x��?K��uͤJ]"����L��7!"����F��5D[>�_$t��2ӵ�[�Q�^S#��Ҧ��q���`�������b�&�mNڃt���Ovi41[�JeO��+{{6D�����ɽ����1�4_�T�	q�L0M�Mp��q��\QF�t�)���ǒ�4Ep"��5��jw/sD�i ̛�U��îx��q �/�/�Y�J����Mp�Z���]�|�U���OZ�U���ڋą�AK틘n�"�l!Q���	�^
��D�_G���Б�,�s��\D��Z�RPº2NO�R����.��"i~�6�/�ξ���x-B���E���ҷm��q��,�>��RpZ�f��&쁫�O�1�j�>e����C33����{s���i��o{�	Ƭ{<1�k!�����?��_������%Ф�t��Y3]L���a�ft�i�n�	���#Z���@.��7������Wp5�p����{�;��ڙ��fl���=���N�z�� ��r�[(��Z����G�J�`��̉0HÃ&��;!Bb�I�P�i/9��,m���7�m{Mց�E_�x0��뾌Q[�I��h���Q�F�Y!0=o{���kA`6p��ҵ��L��W��B��|�8(�k�;h��m0n�H�[,ʀp��(��di3�����qh2 *R����� i0ڭ�YtSP���Խo`M�KU>*�T𫯪� `.�E6H�    IDAT2p(��%�e�u�
~K��,��r�om8���2��;� ����N��4�@���G���]��{��\�H�m!�RW�]�pm��"+ji�uc/�@P�����_5i�vs�����|��A��Y���f{Y���rT3&�p�{nY�W̟�7����৘��w�F���/��- ���� h�u5��he�ز �5bchB�"�
؞��4��f�ń������� �3|B�' j�^3�UV�oH{0K&R3p��|] �`6.]���%}A��l𼐧Q�Ę�6p�@��ԉ��H�>�x�����.�����؞��&�%�>)���(��[C�,'
��ҟ�o 3hs�6�%������v���A#6�Njְx�_e�6�9� �
���g%a�$�۶w��W@E��9���(r��� ��i( 	��n����$�o� 	��n
hW�:K�^ |a��oxc�	pۀj�hrByՄ]�U`i�Ru!��ߡj�?�.�� �n�E�ˡb�d����݈�;{�b!IK|Y���xuS�S�tZ����
� Q���HB�LPX7�B+{��y��,ܤЇ�0�i��<f*4�P��vg8߮��C�H��^�h��
_%]אy��h^��h���b�������e!�-#�v�;{��Ÿ&8� M���+ `����_RM*���*y`C˪�U��� ���X�x3:�&�,��l_   �!�
L��U��303r��A�8�7�9�g�*��m��yr�Jdc g������s���6J�`��<]SYhY��%�f!P٫�Ac"��s��#g2��B� ����f�������k��Wl�J��k@�y�R��,�*A�[Ĺ���˟l0�<��[��Q��愥i���*o��uС�nh)���J����*	��$UH��].$*�B��c�� � ��gc���7����`ZA��]�8 �'�c�ә��!�o���8p���x��[��p[�i:Lf��Op?O}�@�����J� ����~
P@��� 2O~"Ʌ��x���2��"�+��O{�#�Ol���G��;��x�Q"�ff������X�g ����2ʈ*��q�AU�ZA����p�Ԟ߅�螺��aP�����'v|r ���/3�fƦ�0�܄+�d5��mťJ������@�$Lռ�-5�3�+mA޽�1���f�c
�<XvG�����냦?WL:3�<.#������9Y�c~<#�����dć$��|��B1���FN���o<&&��HS�r򤏱h(��%��.��1���H>	D�0���e^��H�~EA&7H^s�2*�g��LqEM��]��'���Es���֎�C*p{[A;U�A���Y7���"̻1p�*g���?J�>�U>�m28f)L���	��ɸU`[ U`W��	�VF�����}�g�^<n��Þp<�{�:�pΠ��l����A8�D�!q�m($��E�KR�R�eU�;}G��mZx�ǰ�[�}Q+a�����֑��Լ��3W�d�3��ٓK"���#�>�6aι�o�;'=@|w!�ms��^E$U�1�-E�o ��%5��HE�t.
Pؒ#�~T��� ��	 ��O���  ����5V&T��!*Q 챦��6���Ȼsx�d�d�3�J��Y��3��P���",��1%�"�%/�ԸOA*���k e �����D�(�g'�&��S�?'Q��8(zl>�^;
n��䓍Ӥ�@V��3u��� o/�%#��Me��iW�K�3B���$	*�|�<Vs �5������H6?8�5�Ϯg0J���{��Uy�MB� �f�������)"�3�F�@�+����Ga�j�%F߸�"�TϾv���]�=��a�a��	U��,�5�v��]N�+ؾ�b��6|�������7����Cw����ET����o��MT�V�O�,������*&���}���'7e�淲nC+��S��g�E� ���.������G�����+��5i�!�̀� L&	����5U�稚JXۻV�K�"�X a6����>�
@�`l���$��po$VO[���<�˄71��O�/�	� `��U�w��t��u����{��!rc�YE<�֙�cЏ`�R���ujǥrgd�Z�#O��t
���&�!=M ۬�����8"G�zk;1���-�^j$���0���Rb�)�&Q �d�#��&&:{��$
f�:iD>G>_W��yI�%��l�%$/��G�����U���~�n�ə��{�Z�ˈV
ɦ&Iv�Y�+E� �]�y_��ڿ��i���|����@(�&R> N}�X
0V��(ΫH��&|q�E��uMP���	�X�
��A7r=5c���D �
�����7O���tf<�$o��ixq�O�:�
\t�8��Eɪl�@0�ѐޡa��%�U����<�)V��[�?,������(`������vx0	����ޟ���[�����@3C��q��H����$zk�1�L�0:B�1Zk��4_�5x����R��@�&HR�)@�/�v���4>�� �������9���0bnҾ-Rc鷤	p���I5�g���Uз���$��Xop&���������M�R#�M�9�>x&A�vwV�ڃ���#�����u�s��J����Ʊ�L�#ݲ�1�������\���\:�k��tذԦYK`���	���c�ڑ;�1B�ɓ���OO6ݵRXE�Yn��^Ӫ �E���E��5ql;�j��iF9�U[�����/��	�Iћ�	[񌳄��q�@�wt�P{����!���Z����/���e�J��S�H�6�L?��e. ����y���h螦�U��pӀ̷�M�d��{襁F��'h�H=m` K�2fv���0:�d]�ܯM�z��S:ź!28	e�|0@A��)L_9�7��]@ ��1����C��C��8�����>�6C؁|,��}�����џ�$����>f����?��~�����w��� �4x��
��F�ۦ
��W����0{�%� ��@����~�n4�m��k/��r(�Ǐ{�:�Pb�M]�݉�\g!�v�1����#^x~0gSYRB�FL�w	�������6�:�$�y�w���Z��k�I��� � �4���6�`00�T�1��t�� �{��,�nsN�s;�=��3���b%}Ix���g��k�Hs�mC<��@�nv�@ʮ�T��HMo[��Q�S��" �w�h	>�*���qU~g�U�x��Ԑ�@�<m����g	~�����QVFc� ��O���aOXW�����沅G��{�]��jc�ycA�ʮ�����4���H8]�HJ�(l��I�|}�&���sˡ�l��9\KpE� �e.|6���4 c�c����Ja�dz�Ɖ��NDb�MY����%l3��i\�nBP#;GyU������O���  ���4faH��	�!�+�~�U<\o���VL7���Wջ�a�:2�̵�͛mu���͑���a�9�$���'���}�n!"^�ڶ�)�ztl��φ��p���7Zlf�l����������+��@"�d�aR��Y+͌��!�c'9!�g�L3M���I� �����h�}K�[�|~�5�h�R�ߘ1j)hE=H@���
��ص"ee5��Xem�ET>���*p��z��ū{�h 	�[ :T	�[|�b�l���_��㊚pa�C�e_!>�V��໊�iC=lOeG@�����h��q`W	��8�/�ݤ��w��
��h��m �f�:���gt��5��n���u��`����[}���S|=T�e�f�m_!qԣ"�F�m}�`�7��ɀC"�>pݰJ�c ��}U�6K���Bi�4�2'=�y_���s>����������t҃��W�H�֜L�K�� �'�	�~�K����
�(g�r�[�m����Eª唳�b���p9�� ۪�Lu�h#�E�I*D��M�5�P�l��En׮�>�w�dm�H� �f �#�F�u��}(��c�/n����,d���"�=w�K��^Rq�8S5C�ak�f�-�?k����{�J�xΩ*`%�Ĝ���kE��\�K#�Z<�-�?{���Uއ������{��.��	�BH`!���0vVpvZ��om'θ��N'�Loq�4��N�ig�6c\c쁌/�5u���\.�p�#	aa�}�w�y�w�����s���y�>�����k���Z��{�Rԧ�$�ߢ/�)�:��GUr��*	yh�!{`pW$��@ࢎ��*Y�F��v��@�:`l�GGС��5�6M���0&�&�3�'�*8���鰡mU} QӾ衁�kFiQ�j�����������F�.�ק�8XI.�qk�D}��d<S��h��B֣pU��}�I����c����{��mO�Y�"�"�i��)	�^�1ǌ�M[��LV é�E
�u�m9�)�t����MSe�ř{"���L�2�SA"T�9톙�0;�������%��`zN����[o���'?{�(��� ���`��}W��ok9��l[ O�c����y!x� �'W�'A����4992�6O�];�0��{���n|E���g�a�I�e�Y�"�S��G�R?3��&�C��#�	��~
��;C��d��DI_���j��!a��q%Զ>���ت�G� -$�S"elT�4��xS�{���L��t�`�'R�k���	���I&�Ȋ�lX�z�|H݂d&���|Q��s-8����
|8��MD�MôϨ�<2�D���;�UCG������%0V&��-�~ôf�x��	{;��X����3�$�')��\8{�� �����`��"U�4�JI�4����$�5���Ľ,d���H��@�j��#m���̓�њ�o�|-</��iOݙZ ��̖��`���<�v+��6H�Ra���7k7]� �柶��$�jq�3{8p�|�����K���9[N��׻�<�xO ����*����t�pg�u _�B�f���v� �S�xaj���f6h ����;���X'_��ܖa��|#�=m���EG�̮��q��td)9>F�} ��$�s�?���ׇ%F �;K�dv�n��2��ڜ�3���I�͜`v�����MϜ+�����S�.�gL<4�� ]G�B�����į$�Q��^�6�@��%(  h��"���ѥx|����'	˃��U�?6�������n �� ��<�N�ĒJ�au8�����	�N��`	� ������[7.�D��uR��`�xt���C�B���i�Fx�����Y=���M��1�Vi�7�H���4��?��3��1Z�ξ,�]|�+��n���cq��� ۴F���hOT�����!����iس��FN�\�o�p� �)��+�uP�w�N���)���iO��i ��XMLLy3(�!E	��K�d~�����vl���5�^2;�I�Ή1%�����Sb�D:�܅�H7 1�-�����Pf���5��t���F�mA#j,R��Ѭ�-pT�aʍ�����.W�05vS�\G�I`�jf�9}����mN{2G���f�d�G*E�ɧ�'�����q	S�H�]��PȘ~�����)�0h<�W�+@��TIT�U(&r�-/�l��-�D��Z�苯$�k��5'N�)�W�^h��k� ��1��o�U���8��~�� 7�w2�Í��A���	p�pB)��(��{�yX���#�6}�jd��Z�������@��]0��%sS��&������DFi�������:>G'lM%k��0U��!��a��k2X�a�Ð�ߣ�(������ǜF�����D'�y��,T�g<W����6�~��ir��j�B
fny���� � ����x�  �h(T�Ŷ�:(��h%�tB���i���H[}�Z�$5��r��H7C.�j��PC�Ԫ�L�m�"6@R
(؁g�ڵ� f�Ye���� 1�ؕg�fl�&9�ߞ���+��fgOQv����{&��A�L���{�`�=�w���9���R$5�J�����@ ��ۘs��� $�<��\�5����._�~��,���Ծ�ҧ>���WRo~����E$���M �F��F���f�hԉ
D�jB[1h:ݡ]l���[�@/4� �U粑qi���##Ν)8\i�L �5co	,z)�35I�����H���Z<�O-��GF�=�l���(Z0�/@7V^��_��{� ��*~��G�pfj�wd��T i�2'��N��l����1]��	�R1�����;K�K ��,c�A�O-�#57ge��M�o뒨�i��=r�̤ '���'+����4,4j�g��~j4��	��D�+����	�5�ŧ�m���ϲ?S���g��e�K C�&���vӪ����Lm������'�na���S�`�yKP��
��ن��O:~�oꙪ��L�D�r�ժ+
���ǳv!;�ɘӮ%�"8I��sV��$�dK��Boe��kd,�.Q
y�Z��;U��7��f�T��@@R��I��kL�c�̶_�P4v�h��'g�������©e��?����8��/"�/�%���@���$�\��\�f��[^[Jrir�uړ�5V�p�P:�ta�t(v�617��*�iVk!ėv�4\:l8\���Ҫ�ы�I����74�D?�4,:A�$�<�1�����3HU����L"3Jџ�t�Y�M�cQ�*咀PR�t �`z�Ҷ��Ʀ)��U5�%}�"@ �����yL��f�:=K�Ms����^0���t`fv �p�J��>�q:��)�ٺ6�t��� �5�1�<.������o���w��`��p2���`�����*�Y,�l�oNָQ�&7U�ȱA�	������4��96N���9�<e `6 &Ԣ�w*��/@�f�ڵ��@��Ql��r%X�9C�DV��>��G;0<c��7)�yJc(I���:�S�{Kz�c�Ƨ�s��xzf % ���s�
����4o:[����`��]���'m3'�3&B`�q��u2H��k�wR��T�ߓ����v1�Tm [?�9������t�[4~����ן��$C߆����jB3ߎ�0�%=q��q͸Ԛ�E���MJ�4��c�M2��Q��j-��Q�R�IV�͔�0V���vj��k��t
:���9���A��7�,�[|�K����+�K�0��j��BP�u�cM�3�g�V1G��l{����IA3ihR�G&�U��a�'�hid�K�]ǜ3�c�׫fD�%~Wh�4eJ�#0s�6
?'�����C� �N��  ��|�[��Ʀ�jNlY�LB㴑�2�ٱ���>%^�U���u��|Z{B��c���%@b���	o?�~s ��3������L�|�խ��M f��C$��,��l�bק�HS O~D�e$Ӂ�P�C�5�ش�,DK'ќ��;�����}��r��lN9�r���;pi�B;@$L�s �﵆4j��ݓ_c�=�P��j&N�2�J"�w$�&wQb�zCC���_A��g1���'����k�wa`}8y2#�4a�^\�}(�$�vW���2��`l��P4k�0��&"_V�õ ��{_V3�5BS���b}Y���zlܪ�MnG�����č�����z��,�/�p0��N�P���%�,N8�u�81��E��� d6椮� Ky�"�Pj�sa�>�=�ic`J��q�s�F5�Ƞ���k��2���+<��L�������֞f��	 �5�y����]�/�U+�"_����    IDAT1��@�z�]��`����>i�I%Ò����*��E�ii��C�������g&��@Si-&����#���Pb���]�6!��3b�0 �R�"}(P� @�>J|�Bms;#�͏P#��$*��v�q��%�C瀰�b����%�`�|ʸ��W
����E_0t�v{�	0��+����oE0�J��?�+i ���,�r�O� ������X�	��LMM,�	r~d�ki�!R?zy��^��c�u.��|�(�ۈpf�`��ȗq1�p�P
�U1]��D�_�h��!9�-o �+�l�n7�:6��-��];)��z4c�3��ĸ�;G����'U�S \�G�&�z�U�x΁|�;f�<�g��f�8��ΨD���5f�E���1�~2�(�f9Xſٍ��A@N����̋�t��� T�[�q�I$��y��j]W�/�M��Z��I�}a7�m�mL[؎��F�({{S�me�WU�E�m��a�܄�`H��mܾ����~o	)"�@��X�S�*�Mcp��̅V��I'�9�Et����3g�6�&�uR	��AS5��X}�Ъ<�z4霔)Gػ�i�͞0l�-tɹ��	%�Jv���,��D�1���/ E�٢����EM �P�"��#��`��΋�Q���ր�*b������Щ	�+�No����8rQ���ghd�N�!��������^W�����NR���,Yu^�&�� ��h^�{������֬�ki�Ά��ۃ��K[ϙW)�\�<k�������K���a5����A
L�O�D�a��h��y֮�l�hSfcA�c���Ȉ�FC���XH���Q� O�����'�ӽ�}���(N��R�i�|`���0��v�}K���˙�R o�	?N< ��A�+��g�5;������"���GT��8�ʎ��W�Q��̸2Ω=I;7;�K�("��V`dPbj��p�n9H��t.�B��̰=�5�pbƌ��1m߭�I؈6���y6��w��g�14 ÍE���?5��@� �m���j!׌X.w�_�H�| �屆5�"k����M�o�}]K]v�ՎD���D6CO�OБ�蛍ߜ�g,F"���8�!�w�� R�)u�j/-|�E#�Rՙ�	,��R ��Y6<`XlVx�H��QD�Ն%#��_)�Y��G�`�e]O8X�uפرni3x�%�� Fy��']����wh�I�/U`��}�z�hj��o.S��L�=�F�����׵)��r��R�c�_���s�f>m0sDDޛ�L_Y��P"e�I% �g��"
'�B��c��N�� �R�q$VR{F��|X.�r3gy��' ����_]�g�?C��ʁx�8[�Mc��f6,D��`��7���\+ E�٤Ejtpf��Dd�pe����ϓ~3c���2'Bf�$X5��Ӄ�D/�	v{e>����(ލ3e�8�\�e_45�����PU3<M��d}t��1��}%kd0�qU?�g�����F����B��o��l��JX��1t�U��Hu���>�����vk_0m|���6Mr�����V�:��&�l�o��=0�"�ua���6�I��I��i����p� �|z~��*}�(�l�7��������n��X��õIﶖ�m8I�S�7����b��O@kҰ��؋�M1@�t)O�������ם�pJX�V��������g�T��v����ƶ�@�����\bt�na����\65t<�M��m���W�
xC��<�O[33J�g���y�s.�����N�q�@�pe���\=�
��{Me�M��dV�:Sl~�.D�n�G0Yf�Z�)�uɩ�����S�� �nH�ck���7���1m۩m��`q���=.ml0J��t�T�4# ��X�7u���s�xD��T�c��ajp ���sҘAMAq�4g|gc`�;�) �I��0��ɪBV~

��upP�k����8-ܯS���:�}	���� ����uYS��x
؋&<�*� �#yi�2X������� 11�*�m U�t��
 �&j���3~����x��ǐ�K��e����~Mb7>8òu��|�gk	�����Q�g���h	f;c�&��=d���$,&�Y�L
��5�N`�&���:�9�#D(ch�d�2%��'���?f`0�WΐwΪI�t&�yt��Y���)��,�ey�+�f�7��$��	p]Y^���S���� a��!M��M $U�fd-�U�~U�����o3#��� OJ�*	3F���	���� �L*�>��mo�㘾�f�.ʇ�=`�����P��g�g�D���ު�1K�u*�JQ�@Ժ5�ʄ�vj���LA�=��͢��}�R���ݒFb˶g� BU�֎ي�Y�vf��-���
g��Q�� O��i|%��7��\���� � Sу*�.)Wԉ����I�.^A���X5q����&���9`�R�5k���?J�����bׯUR�6�3E�]�=W��o����`�-�n �%����p� /	l�lR��y�N�b�-�ŪD�z?���mΤ�����0�F�n{���@�lm=�g�l��ڼh����=o�$}n�_Ȭ�>	�0�M�]?���B� ��Eaؔ��&C�n�LX�b����[�8��Lv ��6���4Ɏ�	Y��B0N��~8�f	" �/�ь.�S���P�K�.��S�Әv%x��L��?��v4S�Q0}J���M���wg��: g	,��06����Ԑ�i��BBz�1�ح6_�H�IS��Z��a��\�ԍc	:�������0a�J׮�Xj�9f�z��P=�9�i�'k�Zv�\S�N��i�zfa��=M"��ʼ�^�e�^��A��N��I��� ��ԿG��}{P��L^��wdI�sq��!c_�@���:1�|�6201x������a�j���,�$�`�P
��ņZ�k��G�~�Z�V4��(fӘq�	�Z+`l�RWG�j߼�E���[S�	�~Թ�>8Vn6k��&4"E�^��g�̒�Y�R��=IB7s��=�6�:��@A��ҫ��g<��KS���`ȳ9�q#~�i�������j#��B2�s�fG����3C��c�!{��vA�m?�h����m >�|�t @Sk7�^l�e6	����O a�	�
��c�xF0=L�,r�ǡ_t��7Nx#W�5��`�7���	��XT����Y%2`ޖ8�y�Kl�`��AQ�l7�Q��s����*m˄� ��l��)�	]6����<�~2�B��=﫨�-}�8�)S�\5ߩtm/3k�w�%�:	��K]x�p���C����E'�y���B���5�}DS�����Zx��`vU�Yը�EA�4	�[��*{���~�������"�g u�L�Z�v���okG¬���(�3]'ڞ�Æ�E�'Ȝ��)�p �*� ���̘6���y��M27M��_�r���|�XǟbZ���������ok�5SE�<#�LeP8�s��I�E��0�m�%0���˚�i]f&{��1��#��.�&k�L)H���k�_L(��Y�ed˅B#�������;�G���?fˑ�M����y����y^P�{�*�-_�ׄA��' ��O]��ؔ[X�@�ٙE>\:�:6H��f�ߘt��ѭ���h�70G^o���]*OLUI�$�<��K�&Y���)��n@��\��h<�	�nӰ�is�a�3!B��K�\�U����)�O{�ʘu��J�u��ff�1bS���ZƔ++� B���W;�:yɘd�}G��j�xs\��Hh�BZ�ż.z��l���-+v��OM��3MM���5T���e�"�М���< ¨'H�ơ0B�n�:YO����I�H�]=�]�4�B�O�Oq�42�J��,��p%@���93S���2����'�c���L27��߯1�`�����g!���&3��c2!0&$�t[�� �@%��Ϛ���Y��@��qs;����,}����3Ra@��dH�:ӟ1o>�'$���1%�2/�f�<�A��R�?�i$�ПٴN;r�߼-њ2�r�=�y�,��чqB� V�v{�u���C���[v�9��E����rv(� ������-%���4oʑ(� g�7�L�B�H�D3�G�8���#��8��]Q\�A{���ɓQ3U(��ߜ�M�gO�j!yf�E��Q�(Sp+ix!�����2I�)C��iTB!�p�	�j�g0վ�U�^3�s�����TGB�Q�����:���)hF��?�HB�������?��[���:�^��ik�p��s���'��`@��F�6��M�w=��~F���
 y�cc�j
�"Ɏ[��P?5�� "�>��X�&���Ⱥ�6�9k9���+ <�8����}�N��I��Wn/#{3	�oϟ��9�� �������i��4l�k�U�G�ߟ?_����(5�r����|)Z#(_ϒ�����`�f�O怯:,�'�8� �M������fU`���Y%,���&c����Yl�	�5۠�䦋��!�#���61��:���ٱ�'�ʮ	��A0;=S�a��43�H�}��6�Ig��U����:řƤ��v�*�tʓ,�N�L�$�NQ�Tt�{
!���XSa�F�w��k�����4/��B'�����ȋ'��2�!���f�&�ow���ϗt��D����@%�"��\@5(S^Rqҳ�0'��$����?l�4�)䚱��NX�P�X쫥��e��߷P�IA�8J��z�8܈n�f��#���txM�/.ɫ$'9��9�z��q�2���N�����A����<϶��a�pZ�tf���� �6o���|r��gb~F_���5�7��2_##��fGR�s���F*,''����#3�<��ȷ0T@�}�~KTH���@7Z��9�[�*��y6J�����t�8�ǉ  Z���p�`� �j��,�`��J8�cuK"�4 ���ַl^[`QV�p0Q���|�#�F|s bma�
Ćg�Y���T%� äzN� ����� �m�#���q�ǋ���lK*\���DU(l�����
'���*�ׂ�F(�82�^$�RT�&q
4���\��m�ǲ�Y���"��2�F�PB��#�{���5��fd�-N�������8��]A� t;�n�J��G ��L���T$p��}���3ɽ�4J���_�-dԗl�^�ad5觩�M2����Q��jcZ��'yX����`��׼,�o�t��hj1�p�MS��qj��E�� 1,¼��W٬�������6P��^�%�#1����i (L3��a�o�k!��L�w�����"�U�4u�ݏ�X�4cTE�Iы�~�q� �����H%�^A� W�!�i���6�;33�EN�46F��v ���+Z����?9ǉ e�OzsԤ���n�g.5*q1�?)12;��7"�?-�YH_��d��	#�u�Wi8�A*3�LE������W��YWufl�QZH�F`\B	����w����cp!)��֞HYr�T��&�Ƈ��5Q����vl��r~oQ4��FLa��P'!��i_5��Ez�Z�Yz�f�����H�c ��I�A�:��坊�H�Ǿ��t�X8ʩe��a��N���z�����DKϚ��c�<�- �I�۔��꿑H���h�Hc#�^��v��B5)��Y��w��ơ��	�"+�D�?�3- 	{6j����	��{�Q�s�i���to��>N��Q�	�,��)��xL�eVM�1��),�����Sϓ�O��{�
x�F-���KF�@
���/D�0�A�ד�b�L~�۪K��vX�
��
VAp0N���ӷc��z.W��8bo9�����V�����9��F�c.�������Ř�BTJe�N��i��b�q�#N4 `��,%�  ���̥Z6�$��k8-�� �@�< �Ŭcc��2��R@c�gqɠķ�2���X���b�a�"��&��ZR�� e�t��T���D�����pgajs�C"U�NP��7N�nsoL��,�O��mL��U9�w P�$���	Ԉ�H��O
��MR�N���4���
�Ԕ��怢�|8�
y�8�o˵��.;U���� )�;�-�c k��� {5���k�|�*�sW@�6�I%{��wt�_�H쿉�#��R³�Pi���m%f��Ht�8�5U�c���#<�~3�����I����,k�0E�GY{��]���	��5�LK�˶D�0P���yl]�L��7	#�@!���Dj��4�3L��+�7�~:� �D�� ��L4��ė� "m{FM�3�I�5��1�9H���c�]�ڰ��_�oJ�-"��6b����ׄR4I��ԗ>��{dJ�]�4g�y_z�Ov'�8�  H�Y����~#R�#����f64K����g41&%�����y)aC���3&k+�T����;�7��d��<&_���~�,D�(�R�;R���oW��f	l�*��t@�އ��Q�~i �P�/��'\�m����,s"�
j0���8��J�y`6��oum�P�\�O��:�Y�Z�}r�HW#�p�n8�W�4��=����B��$��^L8]D������A-@�3�*&��F�v��&fx�H�{Ș<,o Z�e �%Y ΐԹO
��e�D��45�z�LD(�3�IJ��X�������$f�i�z�;S�;�H�_A������2�17����.��t�1p��7��+��zu��?�1<��D�R�}l1Ҭ���ǈq
����B�hvӜ����Ը��уc2z� O��8�tϿ�3�~O���5��ƛ��۫pŕ��z}�/�����Gލ/|�.'2�Zh��̱�����z
���:q�I Ԙ�dn�LY�b*	���g0��_Wo'fl�$���g|3$�D(��+a2��휀��&��.X�� �	�:��� WrBD�dj��t.aeB@E--D����xm�oPr������'�9����[��Q���/ʯ��n���m�T�r8�!��IU@�f�k���0$��T��9"���H*㯚�ww��?�ک+a�iXEb�'u���E��*����$�{�dw����G���� Z�HԔ{.+����b�)j&�Yv>1@L�!��5���֠z��ſ��}��� He�`Z��k�ύ��f�����$�B>�;�Uu��k�Lv�\�&Й?y���*=ִif�-m_;�5�<�y/�m/�A���W����`��ø�����z|�87R`��Y�V_KN�9��Bd~��A���֏�1{�}�wd����F'�@���~����ߖ�9ϣ]��/�?��?��o����x>��� ��Wo�g��0r$����gsai��vE�Ś&��Ո�r⎓  �|���f(3��I��h1��mo'́�S���a�_����Tqf1M,TjOX#�x�q����Y������1�")��ֲ�)[!�F�� h�ݘ��솙�;�(Ax�z�4�lB�SA���#�|�SD����X�c�+)3!� �J���#lF�6�4��F_�ЙF�`1µJj^�~H��l~��-��Z�:�3�Ej�qb�Gy�_��,�zazub	�[�,��$�l&�E&Q������s������
>�@��ذ� F�*�g?B� L�I�_�^ !��I��õ0�͆��+���aT�?H�4&]�`&�b��jB��4�y���˒*�$	�����K����A�1��w�߱.b���a���]L�Nc}����x�_��Ͻ��X,O�[���f�/~�ج`Ţ��w	8a|؈��� ��93�N�3E<��LL&�gL�����D�f9O@�1���r0��6�W|�� Ϲ�<��p�K�$�    IDAT��z��������_�2%�$��)O�@"0����' �<��4�^ja�\a�(���ݺxLz�I�F�̋٘�J}������!ш�;��J(�uSIY�=��3B�C�4�<�4�M&G����$�Vm�S�Ai�	9���S�?n5��� ���I� m�I�Fߩ���Y�,l�r�[��ƌ�H8�8�k F��'5m�0��z@����$ɔ8�ɡh4@-b[�j|6����V�D�]J�ᾊoAcƢ,;y��$�l��8��'t{��t{��Gg�V�������H澕~�)2�m84V�A��e��٪�G����{���'�4¥{�8:����ͤ��=���!f�il"��	&��[���A8�F�G������i8�̪���T��&�Ǖ���<��~@`^Q+n�A�z	Nv���q���-|�w�j�q�q�����U7��~D���3��T�����=���x&�}a�~�ҽ�B#Q�>E� �1�u���;(Ѳ4.W�����ՂH�����]����W;�v\{���k?��p�-ߎ������\���"��	3gN]`��N�q� |a�3Pc�f����aI_�
��y��;�M���rV�W3g	\O�u$��6�̌��l�Fh�lj�J5=�u�!�a�PI��w��v��%@�H�&*p�N�&6�~�BŚcc��'��hC�JxU7g�I��e�v7�Йٙ�f�` �a�@H�}%PUM�v�G��D3�n���@���)z!BU�DKoܹp-�������銡/�]ML��0�J�Z�* �HU�ԓ��(�0ĸ���=	�_�¨6,}�@k}1���[�^+��B=�ԡ�i�@�5�4�c�4�w�z���_����#����'��e�Ƅ�[�fƴ�r�̨M���`��㬺i�eƔ�Zf�	4����Ƒ��00��_��z�����Uu8\1VU+?v�=���$A��?�ͷmk�\ �3�r�݌���s,����#���[1sѠhs��9��u��̟º  ��
�>��ǝK;��e��7�/x�m��7����'�M��&�oS�0��v�$' ���&gNL&֣H�$�EZ��`B.�Dl�)�ay���}j���R�zj{�edn�ǷOb��szH<k ���2��o���|[fg7.���1��ۜ�'�b���?\��O���9�ޢ��I>����hjp�z��E�1�����G�-�w�|�b���@Dn�9-k��ч^�	�"ډ���Fg�_P;�"�۩����z�
�B��$elWD�_hl�V�a��#����K򖢒>���Ӌ9��X�=14�]ʤ~nս:��S�읦��o&a���w�ܿ�����������} �@h�YN~�}�a@�l���o�����t.1U��߶6�w}���+^��8���D��?w>{�=X2�N�X���¸���``޴��r�;��<f�z&�2׀�oAodሜ���ÁB�	�Ǹ��̀E� �؇�����x���{�) �>s~��M<����z��o���)���b������<�� l��Tu�~���RY+Wuc��C��\�/�̰���T�9g۝�b�|��8��9����-�����`�Y͘��3(6"��`�tD���dp�,\���4�V���"w�l��LnFٲU��ش@���$�
�j%Tl�p"���F��E�G���ӱ�����g�z���P��|�������ի/CQ	c�+a���z��GC	�Lc���53� K�8��1�N��+�k6��L  +]�i�W�5�A���]�!�?5h���ͯ�_�	o�ƪ�5�;���o�����oLM ���ifЧ0%�I��%�}_A��ȗ�7��Đ���&�ef�9�L�������W��7T����>�w����կ=��SgW�c��[�� ���6��#Ds���	>�xD��c&�̤b%j��3NJ�̎<�4�9q=�:����sW<�?�[x�U�?�[����x�5��YW?��(Z^f4�#�QI�lN�Q����Ń^v���alꅬ��1kQk�c���j>��FT����g(	5�F�7��Y�����r6�t�3kPH�v�`����dcKR0,9P��ލhs�*��ĳZnv�%����@�o��P9
,"@�终N��ù�Rx��)iO5{�&��}l &�7})CO��̌��0t�v�8G�-UQ)�H�A��~��傰3lԣ}9H���i���"� �a�U
*�m�s=h��{a^���Qb���}X�12�[�#�*Z5�A�����\�x|2�n ���$f&�uC�r�m����Uy��}��H��ᚱ�T��h֣8N�c3�� �w`&VZ7��#���������m���e|`�8��%��m�:�̝u�t���"��uϼ��K?���;^���'&�{o��_��~���z�����U�$���H���6c��;�6t76:)Y��ܳ��������ʷ����vfm�����}�����g_�{�����\w��9N�9��_�]�;}����߿4��/F� w߿��T'O������ȋ��a��ˆ0yv�nG6�o��1"e�����IE���b��@ ����%�кء��ؙ������awy��3�RJ�_/q�9�Y���٣l�$Pd ��c�Ԋ�Ö�-�9څ��L�P�?�I�ŝ��QO	'�����}/�ߘ�Ua�}����/�~N�L�)��8�V�԰��ϩe��B�R����$,�
��`�TEw��ۉB7���s�����k#���^�O��MaN=�&I����ľ1B�|�*��{�5 �	�,ɏ�L#0MbXk����	kU��F�\�2�P?��h2�����T`&����#C���m+U+`A���CS�1�LƜ]b���ڴ}��6�>3�}�U�ҧo@?�����b|���x���
�����?�7����_{���c���:]�j
����&#8�<~q�3c乙_p�1s��ó�Ό�A?����dV��N&��^p�g�|�;��#��YW?gΞ{�q�R��[^�s����>�u9o�Eo� ��Ƿ�;{q���-�3��<�-�ʥ��u�ٿ�V�lb�v�& �ɍ�X�6��^��z�<t1�@�Ʀ@�)m6m�-�l.A� � Ca�w�3���1t���f���;ڒR��7��ڑt�qi-4W�\�7MF-Ѱ�����T��r	h��Q�6R�W��8P �t�p�^��vE5
E��K8:������ā��	�B��g�:1� 臂�#t�M���� �t�C[5aҚ���酡�ב��iP�B���m�������c#Ύ4��xԅ�T�g��M��k��A���y�'�~�)��7��h��P釓ޤ�Y�)_���g��7��7��g܈�瞇�瞋��9�F8<�� ���	�}�[�1$���y�}�a�z�43��� \���?�wq�ߏ's���o��^�s����M�4���}�s�?3&� ���=:�0$��ڠ=/�����0$_�4F���Z۷��6`�o !y��/�C�{����%^p�MG:�x�/ƹ+���>{7y��#ϙ(<��[��_{ן���T�O���� ����wC�YmgL���'&�Q��m��
���i"��W���q�Of���A�2B���4Ui4��t�6�� �J2�;~2[!�� ��"a˩����7�ؽ�	�ň3�� 7B`�ݜ�4�#L"���ХҴ��S�E�W�3?�qJsP�j.�JX�E�����_���1$E��`ы?A!I����Yl����#�g+F����BE �,
6�nAi@ݭ�X�j��Q�I�_W4 AB;���7F� �t�U�/�� �~��sJ[�2���$n��9��oy�ף|"�oF)ջ�DȞ������-��%� Ξ�&���v\�̛p���̹k��w���|��i����/}�|�x����_����㡯�{Tr4�_x�o�g�#�a[�L3����]��ί��E��|���w��_�����K�h� S�69x��
&j盿O}�d��sq�x������y���G~��Ϛ5f�����ḱ�B�K& ��>��w�O~w��q��_�)\��'������x���?�K�} |3��_u<�D��7<a�O�������8-�ؾq��֔��ԇ�3�qQ���7b���*�)%�ǭp����v!'Ȭcض��L��c��H�]�s��z�U�H�z�N���v�_� �n6�I�ds
�$t��Qψ��'�1�c�q���k<��$��ɨA�ՠ�v� c�ڧv�H��U�߉�zoQ����U��S�A4
���1�*6#pf�����a/b�{���d�5��զ��N��A@I�[@�|i漬�@h��.[�G�ک#�	���{�#���Fh �����v
�����mrASP�# �Rhiy�&L2�����X�f ��m���b6�b `����O��^���{����8}�ڣ�6��X�^���e��/��/�n ����^|����O�����f[T�}W[g'Xg8<s��Z�2�n;��-_�����I3��<�%��?�%����PJĨ�dm��i�,燚��$}�3JS����L9���F�,qM� �͙��f-�m[�>�R?�e��V������n� :\X��v2�������/���ŏ����^�mG�u��=��/�}���_���O��S�8�&���~�Ω�NY�b�|��g؜s�]u0w�$h�8;�e	&��.�f����ov��Z�7�ÿ[[*rW�&��	��6��̟�l�>CD��D�uETً����`7tET�W���g�+E��j?�F�_15�C�B��(�
}�D@�Z.�ص=�S?5��g~ �ܷ�����l�`wY|܍��ӻ�݊�A4;KI����9]q�@��w�;{��"�<ݲ������+�~� e((=��b��"�{(�����Az�[�D6�*m��kw�dM� J5�x(�����h){��j�n�_��"���� a���ǈdA&�/v�����G��Ο�����q�Y/�I�����������/z%Μ�{�˚7@�:�T�m�0{�-1$	3���5t�s����S�� ~��?���_u����0��i1HI�j' ���������f��0P���9���=���V��X&�G���#�L�'������yt�}��1>w��g\�k�{��=���߈��Ľw�}�2�vV�w����;�����qb�Ko={'7��<���?p&*�.;c�n���J|��߀����y�>��l��%V�P0J�)l�d�������ǆ�}?E����m��,��	�����������`��rOc� +#7���+`K�za�}�R}�qӂ�)�t7�0񡗊z��ò�u�l@�C��ݫ�����a�3�Ԁ����uY�\�JX^֣�@7P	���\~�C�tU
�B� Tc#��PYi����r� �_&1	,��0]���xa@p��,~ORkD�$f n��f�+y��V+Ƹ	�x�羦l3�7�ZBl��߉%ё��M�0��������/��?��˞\�֓=�aϾ�6\uͭ���'�}�s(%�
�����{��Ü���.�����w�����~+^�ڟ�{��/�1�"�1�| (hL�h���0-fp��{>�5�6k9��~̟qRy~��Q�1�#Z�8`���|d����\x��կ|����8s�������7b�s����qxp��6�/�qϟ����m���sb��`cObr&�B�K�-�@��E�moFC��7C�w��vr*�x�6q� �s�T��E���o�̰Lz.O����<�H��-
|�*L����st]x��|.�s	�n,� )lZ�H�C�j�NB��������N,H������ԄAZ5w9��uX��j��  ��T\|ttz�,X3�\�W��e�{;g*N���	�.д���(�"��1�e���ɐ�}/���oxYA���8h�&)ݬ\�B���$�E3�����@2;֎4�/c�0�aޫ5��o5
�7/�������6��k������8��oŭ��;����8{����W����^��n�PY�޻�v��t�:�1�Ą��*3�|8����������{~��?�O�~�!�z�^���� 4i��h��X,yO.�dcv�G������j@y|������}~[ۿ9�?�&�p=$'�a�i�@C�AU���׿�O��8}�^x�-߸C=nx�-���y����[)x����q�-g�dƝbO(uk�	���3�_0#S��L����`!��-N�2[�������iLD,<Nr	D,����H���(}��ƙƜL��H	�֧tO���a�b�L���4LoهFa�NE;*�E��������������f� I�`���P��`�W����کz�P2S�@� �N���eE��W�n���X�"�4����t�� Z�B�h��'������4a�Gj�����Gd�Թ� �8�u�2A2Q�,�k��F�a+���M�y�ڧ���W�?<�7�`���%	�9���)n}����׿���f�u����b�a|���y� 0ͣ ��g0��T���W]s��I���q�7��/�u��?��/�mA��bƿ\����|W�4f�%�3��|:�Ļ���S��71�Y[ml��|�1'�=��F`�Gi��:�v����=�dѬ^��(>�������[�8f����/���O�����c������)}�X �* P�I�Sb�v̤�ѫ�t�z{-����bX���?k�)GY��A�G��l��g� M���T:OcL��q��fD�U�b�YOZ�Uq�U�������;{!�'�������T����g��t��B؜0[�>9K1����v�S�:��\DJ�=�������J_@�@�P��0h��v:�(�;�3��^E�� @aY@hkF9Ձ�^7��T�/�֌2T`�&�?�E�<,��EG�CƴJcI�S
��
l��{'��Fs�o$���7� ��UӊR hb�hUEN�~��d�r�J|�������Ω+o{�[9J�x�so�#�<�/|���d�ѥ�o�qX�Ȝ�R��[����/�W_�����,��/FCd�~�a�s �=S�q0c=��'e�AԲ����2��#�̓�ܳ�0�;c��[��k�9���ax��LP��m����k���ͷ~�6�1\}�ux�O�Ǘ>Ohz���/\��_�s �9����	� �� c 9��۞����oFc�D��d�X��9S>"��sU�\@�z��5�2���B�� J0f���1f�`�d�#  �S��1�����f2�Kۥ��#4E�"o�N#%��NW	��?mô��:���/y����pl��(Z���:�>����	�e�b)/�����ߠ��0~�d�3�������G������V�*@}���Ѣ���q�d.'p��i��g����
��4�o��F��NkFa�0�.JR�4���t�<�=	 ��Yr�i�n��}��p�3�J��<�oc��˿	�������������}�~������|��o��?�.|��O�҅G�X�bw���nkX����g��~?� ��H�+ͤfV������:�����7g��;o�s�s3���/@�W#	��!(S�۸��nk��/��?�!g���G�I�yD����0�m���=r����5���`��F�]+�6����Gp��ex�ͷ���Ν���%G��_�2 B���ig|�w���qo�' ���3�`b\�{�� 1�W����'Qp����
(m�l#�J���|Ӛ�m�DI��{��x��������7�^V&��gy>��
��2h�w�(�E    IDATx܇����f��E�� ��D=˾���~�һ%��� ��aQM��U�`-�g���Hx`�X	�	Ȑx�H�V5w�f�ʄR�~�b}��lD�^%��/0x-���`��ّ�����IAm�z���O(�O���U	�4�S�iQ�S-��I$���4azL\�K%T���h�c������F2���,���1[�z�DIl44t���l� 2�ր3W܈[_�Ӹ�'���q��܃w���������7�w����|�������G߃��������������Sgp��g>��/?W�����{�LI��gl�ӺƜ�(8x�U7��~��=!���߉_������-�cX����M�w{��m���\��1F�cs�q�e;�ь>}��5E[WP�`�օ(I����c�sړ���+�G=(B}͏������O��3����1���\��Sg�~ �/ �%μy}����'�X p�mg~E*�1JM!uz4�!S���""K \%m�����m�\^[ܖ�̜m�Y}�r�"d�	�I�{x~m�wT·j;���v"A�=�)F��i��3�@k���@lb�$���k�y��0�BbhQ���Z ���,{��7-�8�9KCL��iꪘ-��u�S"�W/�	�S(j�\IXJ����kBX����i �R4\ƎI�Qк	`h� ��,h����4Y#� �6�	mb���FI�+ɔ�b���	��|��g�1���\?1\;0j�;g��ӗ� ���q��I��{����/~��ǿz˯��݅�ս3�7��?���;񩏿��
ϻ�E���s��������9�
��)$�ԏ1�|���g��?�w��������}/~��|����Ag>���^RF�$��*P��D8"���`l1y��ߣ��ѣ$�#=+�%x�&ʊgM�lLG�����7g�p��7�Ȭ�N(�|\����!Z���c���}�.�׿�E��(��o�	�q���v�����]�m���ۏ>~�����9N, x���_�T=v���W9��lN|�HUnJ�%횜 ~\������nG�޶׻y�X>{��d�r_ގ1�����6A1U? �e���4�_W���e���9o-�?�9�tjǟT:'P�KtY�`c�N���{	��9�߇^��rS��B��u<E�P\ 
����RK*���z绮�w@u���{�?�|���fa����UM�߆ř� 8�$y� &B;����{�/6))K���h�pp�<���'�H�4�Y�:5�&�[������3p�w�׸���D��<� ~��
~�?�w��?��=8c���G�Ij4H%<��W���.<�k�{!N�y��ﻻ����=��|�m�L H��S�b�`�U�g��������O��<~��~�y�[f���oi6�>���B�)�C���c�	3� Ks!9	��8�2�A4�/b}?G����`�����3��c�� ����X��B���ߋ+���}���	x�o�׿�5|��E-�ue����c�����x�Gy*' ���3����yQF��P���pͨp<��5�"�� ��طU��v3�5��R_�Z��e�b�:3�9i��4�_�¼���D7E�7�`�}b޿�5!h�H2~��r �
��C�X~q\a�7� ��P'e��r~g�ժ��ы��y�<�,3=�v�@�h���E��nu�]iKl��Q�O-�Wտ�I!� �]��{��0}f�}b`��}&n�� �$י�T0V�}��}���Q��7N�q�L��6
S=�T���w��D@�?���y=�V ��\t�w�Wx�?~�Lǽw����Ǜ�����aj��IR,/���r����.�~��X�7x�M߂�����;�#>������BҘ�G�ʑ��B����������7���*��~�Z{�3��??O`��1`���x�b�*HUjH�J����)��j��J��"��:�䏴��Vu75�B@��P�1�0�y�c������p��{������Z��s/��T��-�{��Ú�Z�߯��S�.�s����w|��0�#H��F2E�����-��(3�	���Fh���W��5�Q�_��! RI���.��=U�A����A+�6(+J�I�w0�-�ڱR��cM�^e�������g�׿�b����A��f�3���ǿ�^��s|U?�L�����S�i� \sš�Y(l�^)G����<�@�E)uor�+�sF%��3Y�]�����*j�P��D��U^;o���"�HbT���@�Z;�Cșկ/���߫�͜ c�cT>�h�7*b���9�Օ�����}4�"4�x�j�^�ܞD�h*��(R/  EG7<6Ƣ-�M�h��M}B�M+PT��J�=Zf�����C�:����(>09`�C�
p���<
��u��e��L�G�V�R�j-���� p��ݝ�>��G0��d�X�H){M�oY)ܧ��5P_�K��_����o\��w+�������t�Ӽ��a<����a���h$^�)��;��݃#g���^v��uף1��N<��i�9]?�خJ� pٕ������CG�9��'~��w'�&��o��0���d�R{�f�<6��h@���4	ڜ��/%}�&J�Ckg���t�lR�+׊����k�Y�\��UƂWOʠ���i��ld;�=��g���-����>0����C�u���>��z�a7��E8�N[��w��ᑗ*h��K�,뀀��l���s�:�W�ښ2��a��4��]��D�?��ו&�hO�nLmPf&��3!0�%��$hΑ�[J����* r��f	�S	�!���H+t$����n�ZU�>E��3tcT6&��4a�ڞ1n�Y��sH¬�+B%Y�P{��< ,��]g��<�v�7�T��;�q�b�'�0�l��$fK�K>Ճf�QH�z�"���k�fb���~Ɉ�[F�ھ�]�	��(�D�V	����E�EH�hڐ��zՖ���������6��/=��܉?���{�e��;u���$U�d�0&c'��&��0��LZ�\����;�x�e����c��?����}��c�ޣ�����H�̌cg_�����#.|��q�_�ܟ�_�����v�[��7�ESS2i���O6=s��=!,��L��>+�Ԭ�"g�b�̀خ�Ezve�[sj�=8�X�) �>����N���C��.̵jz�{���=�}��O
_��7��}���>�D�c;3�B�2~��N[��+�l���zg�
&`8��(&+%�X��v�ԌC]�����ъ��_��Ufd�����fG�UB��W���-�V9뱥:FҖXD !�O�~�-�r�+w�Q����Z�a ���8~JX ��/��hfc�>2*�$�$p\;�A�������%u�`ԋC!3�d&� "`c"��s�@@����T�� �AP�dϪ�g���� �lp�y�+/�y ��shi`�y�;�v���+�ߩ �~mT� �C �f"l@QCO�N����5�R��������}�@�#I�`h�E�+��O�������g��'���]w|a@h�"�D,�c4rh*����=* ��/�s� ���Ӹ��wる�q`;�|�1|������ˬjm�}�?�p��~��2o�ڍ����gx��'}����wy=!*�9QNL��*/۵z�5.��!�k��y��v&�$p�C4�k�p��XK�i�N^�Zr2+܍�}�ϮoO��(�a]9Gx��q��7����8�A��u˗^�;M��t����}�ϲ)�e ��|�p�� ��g�n���v��ʜ?`sJ�u��Ye�7�ڧ1�� �9_r�v�>F��2����%��I�)��$����Ę��)�r��(���ٲ6���@�!����_�"!�Mm��ڋa2r	#`:RB�a� ϼ8�1��߫&�{�l��9�����/@$��F#r���a�)𾁁J��n�$0(�!�|��E��#kf`�e-��� '�"��Q�����n'�:�q�e�b'���K9���ztˈ��8F���
�@����a��9���iz�P�?���1�֫~��� 1�]�O�ٿ��?��tT�G�t�0�Q�'Po@R�`JX�!`B2i�������n�v ��?����ׂNY�Y�ۚ��`��������+�U��Y�{nǿ����G�;�s�?�oUef=BIV���D���G�g�:��%�Z�UI�˓�k�����J�9<q@z��<���Y9�J(��5���`L֔��10����/���^�n;���炋.9�GO?���Cw��؍z����M�-p��/�W�a�%�
��ΥI�ϙDm޵Ik �X{���I����Eap�A�I��2��������g,�ʠ�������v����_27DEb"�G�$�dey �JmC2i���E�2<_��Hl��l�R.�c�*T��4�ي]�e7��e�Kh_d`6v�+��G���G�82�-�19l�0�x�7��� Շd�T�S��ZVu	��2X>m��5��1h�П��NPT�Բ������!�,��5�"a�ELL�c�wd�mD��1o߿�����𵽦��D��ƲS�FrbLı�������8|ށk�����>����ZX�]���6񘌝:�)��_�RS��%�Ri�"��u!����l��W_�׾��~)v�*�����o�����g���}�z��'����q�m_�Ni8F506�E��]��rw2�R�Ok��k�
e�]n��c��1��/5���֝_-{U� f���X�^�:X�f�pv��.�/,9��}X�5רf��{�k\}��4��x|�]_|���IWŎ����V��O��g��9��*E��&��|�
@V��5";��y0�K3z`�����TJ�HRZ�W=q�d^�
¢�Y��U>�&�U�$ �M�U��44)�U��L�A�r��WJ���gB���Q5ڕ�-`�Ŕ~����I���>&�F������Fb8<�E�t���f������#��ةJ{g����e�ۈ�cl���xDؘ:l�0�8l��a�݃:Ƹ&�80"T5	�?�H�b��n5��s�Ԫ%8��t@Ϡ��mJ�^W������P;f`w7 B��ڈ~;��X�����3���~1�,'NE�܉p�>A��]��"b{�o���vQ��U#Y�䦱J1��q�����]~�����ƿ�8v�`%#%��1a:�)����H9���\�b�y��(�T�a��`9?����4c��!�0G[3)�T5�?��Ƌ�G�������/��i�41U����ʘ�:ι((u�ևv8m�������
�N��=݄�lT��R�f`�O*gO���j�&| �i{u���<W$'mO���+�$�A1��{Ⱦ��hR2�~J����㋟�t\{Ç�����[?�[ވ>LF8�4��#�D?S��O��������Sr�;��o�oJ�P�	����t��le%BJ�v���v��8�c����9��'�n�J��UMk�@�ɵI��bl�z������=����|�R�B�Q��~���i�i��]o�	F� �H�S�1�����F���\��6��ڡ����#�h��0=��1! ��k򚝥xğ��hY%R��C��'Qp���Lb1����
a���;@!��g���wh��0=֌<�Fpb	&a���_���+�=�j [��X���G��XD8Db,��ޫZ���z	�l4>�d�����w�B��^!|{�4fD&���!J�_���Ȣr����.�u\t��H}��˟�z�.؆^)q����o4�IE0�ݙ ��{���֜1�bA��P��]��Yp�����m\u�r`߾x�_�/?�{���
I�_+n��Y��FUjd���z+��`[{h�1f��})h_*�`LxΒv!Q����Nq��
�T���.��_ɜ�u��3R��TXyD����f�ds)�����ୗ��@��_��߼��o���C�������8��_A�S�c���y�� �)15{�LAF����,��ۻ���|����eU�ZT[L�pI`6��WYc�~
"N���ˢA��$jaj)�NC���_�%�z2&LjJ�:[��}�ld���~���4��L0�|X�ͻ�JY=��Hd]ȣ6��^�|��0j<�c'�j�?��q�P���T8vأ�Ee�!�#g�ph�Q{�x;�0��a4vh�*D�Ƞ��S��F3p^��v#x��""��-C���*P�%��́f��;���3b;Ft��<��	�/b��"���e�+/�x�D/p�������.��`�����YD̗*�GVB����l�PA��p�^�+M����O���A��މ����G���m�A�/��䘷u��1	��I��xr�� ^x�Y�<��@�A�F�o�W���d"y�n|�/�-��4߫J�X5��J�|ʜ���&���_֋��13nv��;#%�0$o��@ޛ��M��t���r�=��@d+�������]ߦ}��VM��k�u�<������;�{o×>��k���/����������Cx�k�����h1F�����ӟ���9b�0��)@6��rZ/R�+��ل:�%|�Wu2q.��]�+�'5	���0I�t�#�j!{�u�
���b��B���nL����H0�0��	?�s��SO~�$��c]#�n^��C� ��k_T3a�h�]��26��v�49�H$F+�W�J��M�s�ip�c;�1�:;\ac*)x��I]k��!� ��F��g���\
��*��8DO@C��jI�3�@cI�V)� 4x1�V��;qF��$��B����ݟ57�Tɻ��ݖ��v�����-c�Fq��D�m���jof,�GJ`�!��!F�`���o�(��\k?x�;��g���M목5孆�5�J�I�BA���'i�nN��ʣ LgG��	7 ����Ӻ�EX0 4����o|���������ޙ5��A�V3ZU��ؖ�|�(�"�C�@V�gF��"�!����K��ʰgyx�JY���-���dP��Un�ӟ���W�co{�!�mz�47$�kP�<$�߬鴽߲�V���o��et|���~��՟�;w�G����s��<���e�L��	 �d�Ru��~l���X;��:��}Ϡ��ZD�y�)���P$s�L('9aLzM�b������!m���	R��~̪��9o$Z���!czT�^)5���%���;�T.�rbh�ɱ�GYX�<��Y6Ia!"�3 2�ĜE��a�#-��a��y^�5��!Da�a�E!�#�f��mg��H�}�1��
�=a���u�ц��Ꚁ�G��'N����#5�U��g��	D��;�5��7���2��S�d�e�|C@�-c��L�`A��D	�/��S5$�6on���{�uG�Q<��=~���JHPd�ݯM�1�A��C���K햯|�{�n�j�����%�ȆN$�B�m�"�+��s�����Z<�'���3sz݇��熃U�7���>����#E���~������c�;,e��V�#�U�<����
F�(���2�'�W���3�z�d0h��ʯ����:ÆĞ�y�Sm�ڰ�۫�f��x�����?������>wƱ����/]��/�6�y!�l�a�����O��5s����1 B��4A�0ɇ�ds[�h�2�X��@�`�7<�����6U�1��v_3Z"t$[&���L��m^�vpD�g䌞7R���]�Y�_�X����-U��ύ����$S#��yP�S{B�c�6=f4�i��q0c4���"b\;45pr'�f[��������    IDATJ`j;q�s�� 	�k�p%s˨���nо��'�mD$�٤m9TP�<�d����I�_�q�Јĳ�X^/ȓ�tX���XD`�/?*<�����
؉�mxl���y�Q���N�^�Tڎ���)/�$�>��Ŝ�,�����1U?'�%C4B���䁲�l�輋�ùo����������>���e�9��y�Ec����L8C1��X�xV��tod����8��+l׳�<�<�XZ���K.�7|���������a�\���Z�j��jF�ʾ���%��o�<މܭ0D{�(�����݃�����|jP>��%��?����//��=��_��:+�z�u�4��~Y�Q�������/��}�Gq��}t�6_��_z�5���o~��fwc��F;y�o �I�h�����q�2 �܃eR�M�9Ź�m��dn�]����AQ�&�e��u�bT;�S[�B���	 "4��z��K�Wr����Mp�ƍh�I�*���J��c��tG�Ĥ"9,ڈ�{�}D�L�+)FU{B�P��b�qZ�f���Q�>Ǎ�Ӎ+��/��	�q������vv#F���k��vp^��n"+�M���[��#��\�"b4�EF܉p5a����>��<��ct[��-�M���pv-/|A��-uPb 5�N/bԈ�y ;�ԡ:�-"/th��bE8u����a{D��/��� -��w��!Ɣʻi*K���O`V�1��	���j����.��G^w�Z�����s?T����eԈ�F�
_~��*�T-�ǪW{�%ψ����|���O}?x�{�������&ο`!S��XT�����_&�Ѓr�!�J8\Mfԍy�e�� �]a@i��σb��ʵA�\A��=���P�ZKxW�V�,{W�	���!ufd�CQ|�T���G��+|CQ�
�� ��"I�lv���<��n�܁���{Ñ���Е����߮;�u�0��l�;݋��� ��> �1���W�v��g^�1f�T ���ɩG�GRni�W�|��Q�v}^x�)HR�M���	C2�?�v�ڣ��	�D��_a2����3�{Pկ�� ����9�pH��t,���S��X��,��wB�#�a�
~��,_���+��JZ�]�Ǜa7�׊`����y��<1^���9����V�;�eaj'��p�F�pf��Q���oxT�C}F�n.���#�ڡ:V!x��ٶ�P>Tщ��q"������`��l�h4̀8���q�)i����ɝ�R��[��ϗ�V�'�1Q�>:۽5я��w4����y�*&��U����@����qޅ���}�[����u���P���h �C(�%v��ar��s������8Pz��=� ^~��`�J`\���W�pp��/�����_~<=�t�ZN����at*���Ʒ��}EAL�|�JR���ȁE|�6��?�9�Ȏ���V"�T�'W�T���Vbo���ӳZ@���������n��}�CK��N��e���){�m_�����������w�Eoj��X�<�ƭC����X!���e ���>� ��e<��8X��M�OYŝQ�h��a�V��i�y9�
�{�%�@q�5�;�D]:`]���~����A7�e'��]���</��+�rҦ��1���QP6A��[�2�	�c�-ьa��Ԝ+%$R}�:�1k�����v���E�-$<�Ox$�/�N��hL��	q�yQ�7�T�g����p3w�M=�ԃF�fw��} pN���U$��ʃij< �Ou"��g[�n�� ���C�(uk�̠���c5��� ¸r)9�C�̦oD~�Ľ�cr�냀�,{F�g�I��)bŘ��g���$Y�9���u����=�F�	j99]j2.�(\ǐx�����gJ3µ�m\p��X�?x�x��o&i���Eo�W]�+O6�}���>�����m��7*Y�+�_]{����i)�(�'��,��3!SrnQuL� �Yc��C�tM}���d.������6��^� 3���ߏB2gm�_�/Vn&�����7��_��L_}�y����p�qŻ�������1o��7���M�h�[��=���~���Ʊ�
?���`�RE��J,�1_� ��mZ�������v9�z�L�4*]�j���J�n���?3C0��������EB�j֞7�CD�^�fc��j'�Z���>{�ֆ|]?�dCd�S9;�w�z&��� �V$�[ϟ�qr��r' ,�2�e�s:8�j��KHޤ/T��Kh\��ܿY�4O *Eq;�i����I�ޝ jd��k�j p���1�T��(L�����>|F���M��(;�6�z��7�N�1A�v!���J�-:e��-R2�:	��m�k!0λ�����߾�+���$���ʛ���f�I:N�*/J�j���F�������[� �������wI��*��u�G��+�h���?���}k"��8�Z��hˈo"H�ÅS_�]�#�fAA�U{9(��_s-���<v���\�������`�ʁ�I��2k�k��=Q
ek�*ښۙ����[���'D\����G��sG?�>N1��g�P*�^��i� �=Z� v���6�%�J���%�G2�� �%# �0��ӰJ&��H�"��0AQ�V.��̂�j�u�`��!�����"-.թl�
�0��0���8vAjӰ'/!��f�g��-�ٙ�7c�3��j_��U%N~����HY�Z�
��fET�S[�ɀ�/v�%#,#�p%������34��F�]�T$�D�H#D�r�D�X��3���R^�2�J۠�_���[�e�`;����[=�S=�%#��r7��[F,ڈ�y@��Q-�O�/f���J�J�-�?j̾��cT?�
�۽���13�B#��q�E���7\u��z��;p�ݷ��`ȗMM��
���O9V�Vv:�t8z�|�����6"������/�:p���ŕW����[�����&�@T�chD�󜘊��B�ʾ�7��LB�����_-'kT��Rǀ �����2�P���u۞8@�w���AI����lRpɠ俶W���:��?<���P��������<�R�������������W�ȳ�W3�8v�h������|���]��+��Id�@Z�!q��D\z��-%��	# .�3	͘ ��(-@S�����L�B!�gm��Ш�*�b�>"-�@�*A��9I�#��L]/��*�՟�<fc���0&5U&�!J�]��d���m�/�IJ߮L{O"�NF9�z����KR2z�;�)t�d��׺#��9��3+��B��LpGj��]�_8�q'<�;���QQLy0��#ؐВXx;�����g���BϘ����s-�/�8�GU"i6�Y�ø�wa��Tʥ�I���}�χ1�]�t=
�d��"p����co<p}�ϭ�����L=����	�U�Íz@
B���������.�t�_�[>��7h�+�� ������N��M��3���4���4�c!K�A���,���~S��4� �%����Z�I�B�Hi5fkƹ�(��A=�β���Ny.�[�������ô2(�{�	CN���(qَ��s����e�11� ej�.ӆ������}�xhM+ �ɴ��CyG<�c�������kZp�F ��Wu;a<S��m�:u���@$���%
�0���d󊜉���W�t�p��W�S��j������;��\zB�J����Xhʶ��������i��Y�]D� �0�8es���@#*��K_�˘2�FD�؅el6k'�D��H��!8
�����K�6����n�d��
�T��~�WZ��iWF�[� ���g4�= q7�<�=�x��w;`���A7����c��'��6: G�Kp�$$�^~+T��y�"b��2���bW7"�������z,ڈ��~I:�!�a�{"�gl{��(P�F6�!�1D��6d��g8��w������ͯ��X|R�)�'|ID22����r�a��q�L����v}��X$x}�rҞ�_~-����>�w_�n��'ҳ�?�4 MEp�S�)�T�Y�Lc�S��}_��_����,�{�6Ѫ�Ŀ�A�=��t���hǞv��]=��p�}���+')=�<E�~�ɺ6	��@�2�{�eu�
:�ܝ#�s?�>�����|��}�>����s�E��CW����O�u5�� ��!��ί��� �܈�!��OYɬb-UWu%�y A4�Z\&�A�e� ��r'��-7��t���ƚ����|������ccqN�X�����zA����js8��@�2.�f�����lj����i؞\7���9�4.mx�[�wyÝ**Ḗ��u�mL��ȧ�xH�|����ݩ^���BE�6
�gIl3�	�5��	�&nY$��VP�"��H�T��:���X���,LDd1E�z8���ݒ(��qXl,U�Ԓ����O�Ƅ�ߘw���S4�D����T��_�Q�x 61�.Ɂ�$ ���+q��N����w��g ҿ�и�O�H����ppC&�v=���S'_����m��~����/��K�'Bas��w�o{�����7}6��:X��:�yѐY����| ʭ>,�;X#%���˪�y�sQ73d�b��u��JU��jy��?�f���a��W�����dNW�<V�O9�6w�vw�LڻWZ˔�2�wr߷�~��W^<��H=�}�����#0fy�-O 4�k?�f �H���L@�oCΕ�	*����f���8��صyX�1�DM��r�1�@'`�y����j�#`>���(�@.g��dgbc�M
�.#��K	����Ϻ�T@eľ?��_�2 �a6�67����"b��Bca�*u"5�Dx�k΁�M��w�<��N��3-B��.�~2��@vF�����QB�s�D�	ߟ�l �#F`�C�9E����<�Թ�5�~Ψ]Nc�g��S=BǈJ�w��l�,bʕ���ɛ���L9N�]dQNS`�%�OdJ���q��`��9���WO���#1�Fd-�_ʪ��ק�*q�?�l�.�P��G��C��ݞ�<�܏������_����}橴��t��K����9X����w��T��U	cSLW��K�ْ��ڝW.��]�H��a�*�:�Jv��	W���c��'�\���c�_�{8+Q6d}���UU��s��u�A�����{��_�y��[�PG�#��q����p\u�uo:����gL<0�`��\�k�8�M �ѩ >d��f]͈TmDy����S�s&����vH�ɥ=�(�גz�`B�$�I-���6sF��*B�bw�	��"%I��EC�̙��)�8�!@TƻK�DZ���TC1�T��1&B��c���w��f�4qN����#��TI?m����7n�@W��@5;�G��_����:��� �;�gpǠ�G>"����c���{w����=��5�#�c�'`�� ����'�pE�3��J�3�P�8�F;�!%��e`<rX.�;�e/�s�1��h��"+d|۠�TT���&-�ތ�8!!��Ʃ����8������<�-�w�וy��᫜W�˜L*M�ԆێtM'�*��1��W_�M��g��9�O=�=�q��qם76q۫*�k>��_��}���Cw�K��T��SU��� 2w�	QAt��t Ѻ=>�-�X�S���I
7f:7!��^e�4�|G(�gm)�f�$�ع����{��R�l!	qqٞ/�˽]i'��r5=И�Ϯ)�L� �3���}���o��/��>=�;�|���}���~�_?�dOL �! ��~����ә`G�g �[@��[VOu0k��\J�}�zc3����!l]�%����a�Hbm�2#*��S�ON�.����:�:q	\o	�b��d�KYəD�ƀl�U� r)�b� �s_ۉD�Ͱ�x�Z��Ǎô��z�&�K�*xl�#������=d� `\Q���  I�yij���qtSR��1;�2w��q�5aR��x��c/�{�hZ��y�Eb?�尊y 6*��AS ��m-":�'{�3@h#\h�'{Ě�kN��Zq% xb�_��lV;A�O1m�Dp+��8���3+,��� �������I�`������'t *.p- �B
55216�T����7����ݣ߹�� YG�7-��P�����R�י�gZC�H�1���3���ϱ�i�`,Z3��!��r��o�W}����u�W��ǲ���h�CX�����F����e�s�QK�Fǿ��3[� `���SZ�����{��h���v��|3�V�������832C��!j�3`�R��L�N�#��Za�3�Z&�]4�@ź^>t�w��³�u����[ u��w^y͛>�W2��3 c Et(p��=��:Ng@�v�~�`�.8�������	(��M#���!eXK�8�b���d5���;��9�!y	Ȓ!��=	�!ډ�UO
�SJ�C�2�P�5m����@�F�	K��9��Ƽ�I	��d�M\�g��{DflNeS�Yd�?��C]�|��Xc�Lmk��!0'@A,�����ȡ��Z��S=�X���p�����L4*�/e"��E��'`�A!���<b��iW�݀qE��WM3a��<0�E���2�������H��1b��N��`��iw�	 ����X���cE�$0B�i's�$ݰB	�i� %�Z'�}�U�<�����Q��*Ҧ7L|�����V�T�F�q���=JD������0ŖaR�t�Z�\�\q���s��w�ffNY�*�	���#<W����X�%��Rk�W��/���{�l�U(��'�������P�߈��u�z���q��ڇ��6��<�\�1��m�u�kн{����!3�����'�F��'!�N�?x�]�=r�C��:o_n��w]��7^���|��S �&�� a���Ӛ Џ�c@S;X<�WP���v��`	�k�+��J��*ŐFN1<p,(��!hA�89M���S���d�fu�[*b^�f+�;�0Y�����I	�sy3��耚	�b�i:c�P�IƚJ@r�#�@S	�`[@�2��� U,Z��DiX�@.�wj�X�!��8�&;�a�q����$���,x $ɟ@�����Kx!��A�8�I���h��c�*qM�Nь�ԣ넀�ۈ�N@E�d&�Q^���N\j����/�$�	��9��d{P!��gTEy�	������8D���]v����c�{�= ��W%�̽j����v\ڗD���-<+΄Þ#��+Bld��(��Y�^��s^�w��#�����:�y��Z��e ]�L�񈥴^���G���wqg��}�1�ղ��bO�ڇ"N z�> ���s�}ڧ]{�#��=U�>������=��ӪT6L
AL}dL��^��1X��˓��'���o��/�� \|�ێ_��+/z����� ��~ �����Ӛ���@G�F�ͦM��Te��̙��2��s���$�$���UM@�s`e (�J�5h�vo[P��U��!�Q*!���{���%�7�(}�PToa��[��$9��#@}`�l�";t=!�l��G��s"����}DU;̦$�I�5��)���p���r9�|T�v�Ӊ��RT���JB��dI�^��#p����b ���RD@Xԍ�b��(D��@5!�ED94a�4S�n7p���\Eh���M%�˝���$���"b{΢aQ����̜���2@�E"VJ����7K(CgQ1"�w-�d�>�R�u�[\SO>�N�|%�W���Ɗ��'1\l��V����n��j�]"��D����v�c\s�/�ʫq߾,滸�K;��Xk��V    IDAT�O���-�TAC��0�Sɠ)�*��6��^ہz��*�)I� ��^�v��t�m�*�2���j�{	�>Gɔ� z�&К:xE�ₙ,K�{���?s�֭c����{�q�K/<���yֹ����+Ώ��	L0�h^�!��5�Oȉ:4 �t*Ҋ����T'Y�$$��%>ޑ8�B�r��癓P�Us��&`�Q���O ;�X	rE��?#'�!�������#���rJAb.lWp���Y4�1q�|0RIT�$A�G�4�&�ƃ0�MO8�S=o:�z*��m�؞��TW��d@@��&c�*��z`z�B�0���DSR9ĝ 0�Q����^rt;M< ��j*B3�b.RG��T�E�$��2+`�
�5[��eD�'�����6=\%ž?��_8�(���h:b��K �ڍ�U�ˢ[?t�u�����_����0�׹�h���LJ0b!?8���.ű��t������!,�f63�$7���Z���ʞ���\��'P�VN�vRF����W>������3�k����u�Wq�-_L����:5�ZQѷlWI�S�
�a��_�dAǊgK"�o�
A+��jHO�2J�ˑ��CAZ�>U�3����iҕ!wV�8Pr�w
����\׬b�ʹ��ϩ\����hp_����Nln�7��G���c���Йg��x˥o?w��q��x��F6��2���sͳ���.�W���^�|g#-�6R9H7I"�s+����T��	p�� ,IL���
4维	��U��V�� �u&~x}8e�#���·h�e�]L6b�J� ��I0'T��$���Ne,�.;V��s�! ���5�0��a�Y�@O�`GhW��1k&ˀÇ+t-cw7`:r�ІŬ2i$�O�@�i��S���}3�h�4���N�߬�	�{D�Q�A06Yh�ڬ$�?D�F�"�;��A��F�r+`2uhw[���⭓<1Ka0���,ޙ3拈��aw)&�cG*8G�;�{;sy���f�WJ_��R�EO�jdRF&� 櫠��Y�:�@�@'AqH��)�]�  �κ��{�N��3O?	�2��LTH����#kA�u}�5������d�	P�;R��ﻮ������� ��/��/k�9YU��a����^�Q��?��I��m@;y�/�(y
�ϭ�Zk�#�����"X2_�g(=��ܞ���>�OhU��l�^�<]Ku�O�����R�z�qN]*���tJ6���Y<���!�u1���O~��{�� 3��o���+�s�%���#k j�F� Nk�[�mU�%èQ6۾ �8"�뗁�sr���@? agM�D8m�x ��8o�&�K��g�g
�-�� ��(�b�F���X6E��wՌe�Y DJv-�U@$��n�9��N1��$f�1L
�� ��*_T�^��I��TI�mW�b����<m�#ƛ�2b�@DX.3�	�Sq�[v�z�D������Jv~O�;��w#��.
�����Q>CT��'`[�K�j*�?cOXlGx !F�qأm�v/�m'��}���H��ڞ1i'N�pDX�G6����.����Y�9²���٫��B���x���嵌���D(D� �N���p��\O?~�G����y�&�Dt�����1������/٣��č�������_@s j���}_��ߤ�����4&7���q�.BKh@l�d�J� ��􍳩��\'�
��j	���{L�C�81��E���)��2�el.&�2��"�yP�NFi������Ø��Ĕ}�r^A�?cCxP������|��#��O�?��o�x�W��q��M�3��������?}ӷ0d ,���O�8�����g^������ �@ $�J�@t/m�h��I�	l�RޠLB'���`.���D�HXm���Eq�;Ό�V��%~��p2����2�N����BS�49_f'���6[��)'R�E6\J�J#���wj7`�E���u�z�=a<���!Σ0F�P�U��@����u`�Ot�ۈ�a��R���<��!�ƣ��-Ȧ��.�D����Z;`�oE *`p'	U��*���G�ED�����#3`:���A4"Ȅu�1�.�ݫ�**���s/����I��ط=+8��q�D��_����>F�����J��AB�[=��cg]�3�_p�zz��'��3������)�v)%G�`��D����죐��DհV�&.��z\r���o��F������ '�2��r�Q
��XY�ү�Z!���k!��D�L:]��Ļ��z�$΅�1<l�k�ڕ��1�_jn�Q<#ܴnnX]iò�im�G��Ş��� �Ƙst��ʣ[/�������G|�=�}x�	v�W�n6�m���1̱ޯ��f  ���Vj#n!2\ DǨjJ���	�h� iOJR�m��	 @��@�>3x���m�E�VՋ"�@9IE��6��D�� 9�k��]­�N@��� ����]�j
� ,@�y��(}@�J0�1K43_j�� 0z̗�c�1jD
w@�@5��7�d!�;БJ\d�|�P��	�N�B+��9PK� @�=�'�g�Wm�f�;�р
�[�"C_$I�v�&X��h-�=�y`,��
���8�	 �D:��EDpc�����ũO�����L(3�C�v@���:*���=�e�M}� �]���<F�<FtM��̑q��~"��3O!jE�=b8r�9� � 
�/�s;QJѥt<h#r��>܇�;�%�]�c��߷��};n���|�`�p_G6�0��ܘR�d%t�³~x�j��y��Rq+Bzv!/���|��M�22$�N���ױ:?�����Ws	�ʹ�3���C��)�)�xPizI��0`���
��+�}\�w$v{ ���&/����<|��+�u��W_}��7��c�� C|��=@��ã��(l�}dPO [�5��D���V��Kl��ca{u�B%�}�J�6Aq��90�fK+b�uR�i�#�g#Bt0HQ��'8��l�`� �<�{'�f=c�R&G� �^r����Ɛ�ET9A}�~�W<� �-a4��ɘQM�"�O� ���9o%�n�����]��|f�=���R>5a�2�� ZF�A]��0�q��P���Z#&��.���R9A\���h#�&PCFs���Q%�^z�M���!��^��T�M� Ef$�]w)�㨔1a�Ȓ���
_�}UC��d#�ʼ�h�|�y�$��D��� ���ҳO?	����}��풰Xƹ��&�Sõ��Zq�*�K��(�d�����K�s`?����� s��TJ��`�m'�F��R��fR�Jf u������2�}=���Aʤ��Ј�*mN�lwɱ7�c?|��4��?�!e,���m�R�WAyا�0,cK��V��h=V�������>���ޥ�s�ۼ��.��替�l(s��Q?��g "�6ZV5��Y�X�r�vq�4���8���$�4����"Ȁh[D(q�N���dD�/��"P��b�6�#B$tA0�]êȨ��]y�l}b;�h���vpZ���L|���46͂.JGH�DY��E��p􈗱���i4�D2��P7����*u����O��DL��</vR�a/�':q�KH5�^q���,u]�]q��!��E F��w}@�"�#�<����=�6╭���"���{�E%A�~���+�̫��T>�2�����߲�Y�aH��]?��	�ʱ����\G� d��H��a~��ށ���tDY�n�mO�	Vɯ�.KB;T[��*\p����W^��ߺ=��u��G� �S8/�_C&�Cl�����~�qX��j��?�v��ӫ���Ro��xW2&�?i!̘>�NFH�.�u���3W�ǡ|���B��l̬��F�a�Q?	�+7� Zz�I�1������?���<~�ŗ��4s�%��!��1? 3��?���Ӟp�@q 8OI���w��m�ފ��)P&�J�%������<�R7{� �3��YÐ&6F~.�&:�������Y\� �Q%���.6�:��RZS9� ,ZƢ��zB�I�*U�{R8a���,�l��U� ������`8z1�m�!"TD�Cج�s�<���<��&�1�l{Q;p���	b��G+q���@�c7��>���7���:�K1P��9�K�?��H��Fp˨�����<�c�WO�؞G�,�<���U�1�o!2:{��A�LC�6\��爒��D�?R�l���2�@�9 �F���ᣯ;p=���x��'һO��2U�$B��>���:��M��4�w��"WA�����K���3�ݷ�w���[`s)}�� p�j�X�\ǊY��-�^��I[W$/�P�`D417+��G����Ԥ�UHO)5f]v��E� �FJ�[����D���;H{)_rd���*4��z𜍧�k�Ѡ��F�Ƕ�s[eyǏ�_|
qk����?�	��/���'�|�D0B6�fr��|������wc�c��NY�t0+�z���Ԛg%�S9/MrK���e,(mfz�#�7�Պc��	p ��JE���U���>bg�=����L�̀:e�uî��۝:�y�:�F�z�Q�t(��m\l(����M�5�����N�x�����cq�GhxD2�z���R��ƎT��HD_s��!L���L�d�F�U-��@��d�q-��� Y5b  `�}�V��=%�}����j�0���K��0���e�=���6�|K����A�2�N��n��"�^���V)-�;O���`R'�a�������p�'���~O��� ̬U  ��[[����L�}�1(FG4�~`���*��=��^7S\p����ލ���4�*5��Uf?3��M��+{�2T��X~0��ʇ���_2�幒1����{qPe�c�E�{,S<c�z��A���[�g�9��K�ޕ:�(D`�y�lc�> .[�PJ ��N�c_��ݲ��>	>>C�ĭ���Σ8��K�]r�%�"k �5�"���  �a;<-�+BW����H	v�����t`ҹ��} �Z?B�M�O�;� ���a�L���٩
Y�Z$���c�,{ �&�����+��:䴦u%�z��4���h����B�(�A/�#al亙<�4���%3�/�8~���09����~�$�(ӕ�d��D��!
�0&�]赉�X��
K��qRF�&5�r7�<�@P�`c�N��'�c@,��8U7��]��y˘/�)�����5�=LJ��@e��P��Cd��ʛ�w��Α��������<�:�6��o�  ^x��Ĉ:��=�15����`h�J�E�̃�(��d��p4�h�sI<.��*\x����?�{�}{*�@��l���������r��	������rY�����0�CW���wQo
sf@�萓H4�֔��}짆X��hún�>�P��A�+L�
W���:��Q����5��� ��q���'�x�;}��UU���g�q�䢋.:���p��pe�����0 ��"�͜C�I��z�w=0�-D�0jd�/[yGn0�M��e��|����H�{RӶ&��N�^[8�e45�r�z}H�4g�����%L����������$�O�XT��MƼ���}�X9���}����!ڔF�{F�Z��S�A�1:\�n@c��;!�}T�?�;���`�����ܣ� qH !��� x�6<0�F�v y���FP% C��p#ya�� 7r�S��V�r%�p�������$iy��fVշ�s�~o��e�{����`�	1vX,a6�@h��`(<Xh�ƶ�c!E(��68�DH@��a40�C�L�Lߞ��z�پ����?�|3��|����]��﫯*++++���=fV�z'�qΡ�5JB��6@;��g��(���tNf��E+h�Ԓ����'��z�@0�3�!|�غ�@p���X#��5����`w��o������<�sD���^�w<�8u�h���/�	����C��Ť?�����������c��:i��x���?�����"���}���tHH��sr3l�׷�����8��56����K��i0\k�%oK9�VZ��d�����-��j��'?����~��'����� O=��i��&����
��� xП���4+
�|_j!yi�V4 ��Ծ��q��=�p-o
e�� �m�Q&6U*�p�5�d��Jℤ$�깁�D�;F���^����Z�Q�/����4�'aw�ѵ��vY{�A��Y�!��a��_7��zI�S�PXI�ZX��0���NԌr�P,79S,���B�3��.��VN�3 �
�����!h!�AR a��Ԧ�~f�� �����N�� 4+�b��,N���Zz�C�E�pz�JC�mCQ��!j�O����� �c�~�Xi�x4�)��9p�s]ĀLBR����,�G�?��w�ޔ�VG��Ȉ�H}Oz	��.��i?���1@_
e���`�v��O������b�fL�erR�3���?�Q1��"=U���1���@�"����:"0$N��=Tɟ}���9�` �Ór�6h�r�����-7o���u.�礤�(��!9��E��Ȅ�p@����>����������7��r�8���O���j�4M!	���  �ێ1�������B�M'iYm0KW��8˴hP�d��B��*�8V�S#B��Ƅ��z�6Ձ�	@����XtH�:�-�y�1��Jns#��R���`�d\:�|%�k��Ǫ�UsbgJJ�S"I�,5�k���Qy����gXZ���R���*�?�`�7(��r�փ�r� q
tA{0o��m�w�����; m-�����5�PnX��t��t�bT����ý�bj�6�-��"�.�L(�a�IN�����ڶ���"#�P!��*��c��`5�<������`�ԣǾ?�;�p�����S@L�1�UFL������u-� ���,�9zB}l:��o}-����A|m Qy�Lm�¸�Hd&;Y�s(�{HZO4�MJ3ר������z����K�	�����y�9�~����&P:�u��!36
�����zo�{פ=����� 8�+�?8��l��^�|镣����g�y�c��$ � |A��!���;3��j���b�u��&�	�H��<��|���@�������*�4=ۼ��M-PX��2�Mp�L��@E�z�O���ԏ��i.�#kL�>'d@��JK�}1�ؚJ������;�&;r�9H$}R��"tSp����(����QcBF�Y���0��U��צH�U��WǉR�;��=x�a�a&L�HU0��9��\U.N�{J��=l��<hbQ7������f������>�8�,I�C��L `�3��62Gt�)�G�6N �Y��j����Q1_��I@8.��}pzV쁓� ��}'� rr���i�9�ƨ0B�'B�A��@>\B8N��^)��@����?�6�H�Q��!���`�W4�s_����9�+pgҨ���0jp���3�;4G�xai�(�4�}�bda�"Yֽ���刾��;9��p��/Csj�nl���;;�S`u�6~X���_�ԧ�hڞ~���>������^@� �&����������C?u�������*%���XZ%N��_�IenI<����G�$O�B�h(Q����pg�	���!-�B�
��R*�i}�F�k��B���8/�)���KB(i�Bv�~R�N�ҍG�N��밷�0���h�Ԧ6`@ ^r �2��XU�P�q)�զ�)�δ(O�����K`��R V�.y��`�Fݮ�����    IDAT��V�` %�+�f$Aڒ�=7 Z�$� TS��n���<��b:���O$�وpo�aYk2&Y��Ҡ�F��h�$6��#�xT�p�L�dN�	�%�_�e"����$��wߑ5j	 l�|�5E ܾu�i�����L�]������k}�@���z|���̈ɩ��^�fx��GK�@_��;��	Jh=)��8�ݴe�x��X�����cB�H@23P��I����lJb� h��o}�~��8DF�4p��d?�ȡmX$Y��j(ݺ:���Ķ�7��{�B8��u��+;�w�<}��QǾ��<��%G�n��A �ƺ@ ��O<��m?,>�(�x�kձq%&�+�) I�J$JE54���덄��o@pF�V��|%$�qr�1�\��K�#b>v���A��K�T�++e�a�����ܐX�S������c���)�PM�,���_1������O�lIl�FS�x�ใ/4w0gJ�̀�9�P�I��w�bf�V�ʃK��Ю<܁�x��a&�%��H2�q!fn<hj��i%��q��akf���r�Q9���Zy,VN%=�3w R�<��K� ��FQ��CL0#�z�� ո�ęT�j�%w�zs%�IC$���?i�g0���֍+aM+MRK)[��TC!Ih�	!�ș��}����H�����߃����o߻����?��B��}I��^;N�����Ǹv�R��{�OW��^3A ���ڹl7��BfJ�hKmr��K�F��
8��!����f[� �Q��=����})�_�'��<�ڐL��'�.�Fy���7~�g��6�_z����׎# O>��)��$`�xݶ7 �O �=�1��6s����&		��`�1�b37 �$:�ë�I�q��L�����ai%���iRkā��F���TN'��J�����d2�h�U�%�>|�7W6VT�2��&S�� �c��ʣ^�o��]ea.1�i�*奔�D�0��
�c��8���$�!����N@�0��q%�z����{���-���P����cP�ؿ٠Y8#����MO���r�`z���q0�%���b}(	N�����K�v�E�QF*9F*(vN�N6��Q��4�b�e���!Ӆx�C1���^x*(��k��.�
n�V19�ԫ��I��Ǿ9w�ܐ��Ns�����Q�O�L��P4DqyWR��x��2cjF�\����E_q�����x/}�9�&�����P�w�2�0$*���7Q���Z1y���/������c{%x3��������7^w��5�M�L�[����<%�>[rDX{z⺆O�DC�u0>`
]R�R� �f�o�o֋�~�X��q���21[<b�}�y鳷o\��E�|ϗu�[���>�虫W�nc=������! d���O�*E$�Й�M�h�K��Ҧ�=��G�4]V��=��;�)�P��td`����	�TUaP���XՒUn����L��*�����O'� ��}�3Ο*E�a�d/�L��H�6B}�C�2f����G���l$Ea|X����#}	eE(A�F���ĂJ#�6���N,����X���I��
�08�	������c��S"�w:��npf�b:3(&%�7[L�R��U�%19��f��'
,��>`aRb��f��^4��"Eaq	��Sx^�I�>!
�Fz I�@��+xRr4��}}6u���,����T����������!���<�ٳ��=W+�`X�6�.&	T�+oV��{��w���>�<vv�$����{я�?���ReNRz�f�>MÛ��HMJ��ُ�S�2�����ȡ���!��qx�����*' �[��`_��YӱßUk s-�P�6�CS�]���/k��q��!��k��ܼ|��c/^����㏟�z��g���ی��[+��Z�,�Z)/s⢝���� �������1��Ժ~�wc8c�lS>z�̴������H�� � ���/�ǲ���BJ����&e��t�kGP�Wu����r8�e%R ؔMiЭhdeu'Bu�B��L���-��:��9,W^�%l��� H�z�7�$Mq��̂��G}�a�U s/��
��<'��:��H83hL��[F�򒂶�X4��E�x�s����Q%$���a������P�%;�u�f)������8��u��{ �~Fȷ�yͱ��V����\��W������ �)뤨�	����W�b&��'r@$�J O*��y� S�f�F�#ߛ�j��� ���������oz���K_����	�8����n�b���O��=�̑��O��\<_��`�S�Z?9N֍�h�i�����S�>�Q�:L�=��?G��P؉�}	��2�:97xL7�!J��!���"����X{������h����/�e8�� �$�J[�κ��7�p�֕+�w����ŋ����J r?��x�_���! ?�Sׯ���>��unˇp;cE�N��t'{��p,J�Շ�U뤄� ��N���ݳ�v>� �m�M���:��F�� FcU�w~���p!6H\���ۅ,v�Ƈ��p�$PUvӂF�n%}h&|L+�d�u�ƽ�-���\?��Za(�ĈڊJ�Zm� ����o�($οbqسFr�M�.tcC2���c9�P�,�[�0h���4$vz��~����΂��[E D��a,�B,<�B���/�M
�tbFb��C@/9��u�q�)6:�Xs!�Q,��5�����2�٩�?�7f�' Z.�X��õ��I�M�}A�\E$�C��!Ą�;�lFfz ����~8�-o�\|��Pl�r�%|�S/F;���Hx*";W��DF��y_"�������;�Mr����=\I�PZ=|-1���,��u֝��`=��ϩ��V"�5�[G�܆d�[��QZOf�5�E�3�v�;L�o�'~��w_KoF7����nw�t:-����|��~�  ����|���+C L*�§i I�K���`��4C IP�3��<U ��C:�	�Az��<U�� �Ң*��cT+���� R�4D�#�h��N�޳�G�����ɽ�=[alH
�$�Ć�|���AS[�P]��wX�oq0��u�dd`,P�lT �����ŖEq��2`���V��f@_Kr�,�N���0����+�G�x�F;s��ʋ_B�����7�u  ��*�N [�7-^�l-��D�tN���!p^|6�NU�r��@��U}14�����	3,���!���������[�F\m(=�͓G��`�8���NO�����F��	�ڷ������:�z��N5 �F � ���a�����ҧ�O�Lu��R?�-d��q(�2�t��}�o����ی>FJ�� �{@K�6{��G�b5�@�I��O~#���O�1I�g�tܔ��$m�90�p�p<`�~���Q����e�IĿ�Z���ς_x~��ۯ��j4��I+�Gk ^��E �ϗ��`�z�NT��%��`Y���[�H��VPXq�S鯴���pKR)����s�,Z ���Ԣ,���8�QU)iv�u*$of�2��v�ę��(�p�_J�։�L�q���Aq�.�&�ꀭJ޶��%*v�ؠ:i�5�pJ��y�'p#����0���|�A˰�A�r�K'	�T�@\��0�!P9n���n԰�z��=���bաn����o�@��/b�����ׁ�����ja���|����CQ�N=�9$���qH��1�i@y���.�*���B q$�����E����&�Kٜ��6�Wo�<}|���m�ܿӛ�i@���!;2�|C@!���{��ʽ�9Y��es�� ���꺖� �#�����G����u���VF|撐)�&�ΐPo��W1�~��8t�A��췬��%��D����|MId���A�a=z�mċkÁ��a�E�Ü�j�ah���ʃ��ۥ1���|o��px�ǔ (	x��zl���������a�u�.��2�(�h��K݊W�5��
1I�Yo "q�՘�$���-�x��1
�aIb�s�6�E|�Qi1�u뱬YT��¯�d����$ _m\����BnN\���N*�M�x��ü-B���F���:���8���[ycA����y�ٴ�}4<w�RnYy;]�
��D]��ضB��툀S%x���0*��ckbb�}i	M'�&���9S���U�u�ƶ��7���GhI�+��]r�ԂJQ��]My�I���؞�i��6�p ���@2����@��uǁq��#8s��cߙkW_����2B�,�H�*v�&����7b ���	��|���@I����:�?�Ex���+W^�f�ӋG�r�`��g���y~����O{�?�����;*2�_�C��m��1q~o��߸\����qv+��x��?������-�N�5�u_{�s9Ep����ѽI�� ��������p�-��ŋ��>���	�D�M������7:��}Bi��?K��&�򗉪@!�u�VΑ� EB |� ���u=74���1@�M�7��N$�W
P7�Q)��F$X��0�#{��� �I�Zǘ� �I�J���E낃A'�� 
�l�HB�Fhv�a�żC���m	�#��
�,N-�'Iۻ�B:FFP�ؐ����mH ��-�jL�;���NL4U)9:'c�9����§�t�!���cTʳ�l��s4%t���__s��$?��݅ő`�q�!1#��M�U��X#a(6x�{5Wq�EPO��/L�� p<dc�f��}_$@����x�LM�Kw��g��3@=V��5	��Y�� �O���x��G�}w�>��z	��WC�JRH���w���uH<��^{<�%�<WC����x��d]szτ��?>�u7�fˉ����9��Ў�SmD��^�����l�����Z���P���_��M��{;wv�ݾ{��'�r�q�ϟ�=��#'�^��࿎ �.Z�7�>l,�����Ì	�~2Ou-��s�
(��� I|ƆP�p�q��$;�賿�c,ji��4�Y�H
Y�Hr�G��f��PҷS�+-�y�A���8m���9�3�K/^�W��SJ�*�N�%�[D�b/� ��{%	�YP瀚Q�}8Mb�� �l�V['w�B�6������?���H ~�3%��asfPv���KX2-v^"*�O�D�� �x؛.���j�?����u�Uů9�s)X^}m��i�W�	.o#�@c�"�)F$R�֐\�<��Y5��h<;�u���7���
�Y�½R�׹.>&Y� 
iX�8Ⱥ7�[|-�y�
���=�̱���/��g_�����H�/���@txIV�JNf�?����>�[~����9���fa y�����txZ�sˣ$�����$�:3�ih8O�=�XF��b�����\ �]L�8w���ɫ��ܼy�q'O��8qb�7M ���������V�2L%OcT��c�J�\�eD%��"��9L�) �5��] �'c>��(����xN�$Oh:���� L�r�T�K�R�[}XY�,��{ LA���h����]p��xߣ<�0!E"��uShpJJ #��d0M�L���0+Eݯ��[��''@�zv�0��*���
1',�f�cl�,�{�!�+���[A�$tχ1s�:O���A��@8���0O\pTI�����,�
��@k�<�����ќ�?GfxP��V՜���[`Y@�#���!� ��}[��J)-��g�\B_�����r^�����$T��.>ql�/�z	�/_�~C�K�C��^��A8�Ǡ{��������� u�(e=$	g���F��:�V����3�0���Z�G�7mo8F�q�Зc��$������Wy�8�����c��1]X�ݭ��n^=6��ӧ'�Ν�"�zٿ7M ���s۳��5�"���Z�I�;?������*~ �H`�� J`lE�3�w�9��%�*�	'�3�T��⼨��>��MG�aOm��I��B<��l=�#��¡퀮�kYn �B�bbt�,XKh;������g�
��j=��0�IM+�h�мoGYҀN@ߑ ��K5���e+�V:d|��O�xX��;})�S��e���h��
8�&`����V6�Z�}{�j	� b� �MQ)�Q��2�:�q�<�s�5DyN��?<7����TC�?��8���E27��^�f�gQ�DLߌ���󃃞�6���r;�JY�v,��<��u .ԹD��oH	u�]|+z������KR�)�����\@��cHe�3e��:�	���nE���O�W669�C�6��3%�Ȩq �-^w�X;�:��۝�յe���A���$d���c�2?4�G�Z�%� hq�����q���zA �I��ؐ�u�������  .\�0C� hY�ו����i�ʊ�3����1�P��JWfƸ�Es�@R}��F��qA�*{�_��Na��G�B��SƯs�H4�ƃ� �A2�>֊7�f)ܘXN<�aU{,V�U�h�*l5�e���)IOK1]m�$��0_z��� �c1�B�� �Y�DjﺤFp��=�5�E��*��\� �N��.����t��,�`���u����S*��Y�[ t΁!%��)$ve����(�����hc2�y!t|�t����c����âT��e �$� �Q�f$32�Ȩ���P&����y���u]5L��{*��J�~ ���އ�=�����p-��<u�� ���J"K��Z������T�]��q�xnZ�1�-�#���H)�1gd�ƺ�V���u��/����i/�1�w8Uq�	8�% ���9��M�>�;8����w��U�����?H��]��*�{@}�M�X`w���d��j� ^��G ʓ��~�<,}�)�	7m(�2	>f�xQ�낮�{� �g�1୼	E06V��V<���'��c�$u�[5�=�$2�(��iۥ�����,V����co�0��A"�2rGA%-!qOX)�"$<
a����vh��I@e�1�1ȳ�s�j�!jz���*l����	rS!T��5с/-�gDp07��L;��[��ee�Pw���,	���lQ��=q��C��(5�B���U=�E'G2e!�g�e��|"����]Dpq庨g����Lj�&�l7����!9kq��.J�&A ?��p/0^l ��{����
����x��'��y�Ⱦ��l㊪���'�IH���|,5���(�Kbʁ,���%e����2����4e��=b��ki7+ ��E�u=����~4�G�{��k�	Pb��:)~�ό\�p����������
�Gm#�|���umW�xBm����G >�������?�W���t!��!Y݊Vok$U����D"��JYD�6$r���Ǹ��}����T0��@�Ш��_��4ȹ�[,�p$�IeP���F*I~��ؚ8��؛��u8Xz���"\���EctRME*RD$��=�\0�`F�ÞP�M�	���d<DݿU�`\� R�v^b��Y�7�M�Z���_�10^jS~G��̢�vdЮ<Li���db�4O������\I�� �#@s�)��:�`f��"!@\��؃$�${NjeN V���:P����=������ �LE*��8b����K���s,Z��4�j��C���d�s���"�{�lx�~���\~�e �?�%z@v�}�^	�j� $�._��gÐغ��dݗ'!:R��ԝ|���Ch�C§�����H~���}�;�O���Lz@����vD	�R$���    IDAT^����g^���P�1�ɦk]�K .^����#���v��=���u��c{�   �뭧�cГ68�j�nD�;I�?X¨b�����Vl���Q�Y�Fԓ�JK(�b��[���&�����&7!�h[�.{1W0�g"�W�� 
K���3��H�?6�:Q`R��_z���l<�6�jx�4E�5_�"@"H�AJ��m�r����(�2�R
<�j^�:��
�v���=D�[M�BDT�.�~��s���h'�����G��K�9�c4&4cw���V�z�B��pjfж�ESBm����2&�I�:-\J>�1jPm@��@���H��yPr�ѓ.��G��S���t#$���[�c���0�n�z�`�Z��V�.Kz�s_L)ڽ��́��"���Q����J�={��c�}��%\~��8���H��3�7�@$���MO�8���4s��F`�]4�*n�u��5�I�8���o�̲�}d��Ӑu+<�Y�:m-�Xs|"Q����g.�VQ��&ߙ��8�Y�.\g�׏�����M�!b���Ο??;��Ƶk�r�_���N��/��!	���_7_���s�y��^c�+��t ��]_Y�#OI����G�T�O�g�󕨔	$�|�ĬJI?�9�,0_q�X�<�?uc�/ Z��vx�ag�7�&�ʠ��M���3GoYl�kq�d�[�-��uR�&, ����Z#B��`,a�dLǢy ����|���+�0!���P�EЋ*�:��+*�T-n5mZؕ11�-(-�R��I^�I`UZЦP'O��J�jL`"�t��c���J��^���1�15h�G�<{8o�ȋ�Oo�g�9t��9��c�è�i�j���8���@L.s5��Õ�F��<w@ֿ(K��"��u����ijԫe��ׅ3���h�Ojv��i.�p���O+=gc��Ad�  ��]ą��o\��8h�L�y%sO�� �2�N���g��6�CjCC�L�n͖��NH����d��Va-8s�o�r�g ��{�A��ǂ���ߜ�}�O�ػ~�A
��*ﾒ0�0ɜ@u�����0��o~�y��;<f{(���QmllT� T����ßs{C  h���9b�.:u�X� 35;�H�]G��O��a@��VGV~j��L��+�1���Ae=�WRHHU�EVF����wNB�:��O�Y�u�$`26hV�rj�]�(��$��&;��iq�~���ǲ��"+D	I�2�i%Ġ�Ŀ�(	�4(+�:��~�a6�-hN����A�p��j�C�Y�Yz���c`�l	Ӵ@[hdĜ�$���2`�����&S�E+����V�˥��ǹ�K�[�91 �� �C3;r+	~����L�
̜b��j������jk���b��ר	��(`�c�d� Z��Gӓ�:���0����1�`�h�C? �(�qe�b����$�w�0N
����Ξ'NO^�_�lU��l^tK��%>ܗ�$��3I��IEn��ם)O@�Hާxn�q.�2K
�}�a����s���)zc��럞���|���Ґ�`���˵�f{�%�O�el�>;�ؚ[|͛wm۵�k ��q1�L����(��{�`�?��=�������ò�,p4�(6�l,ϩ�){i��g1	,��繁Ũ�^}��,�؝;�Z��嘱,�����ll�I�@�:�g�PA�*��� P�sfQ�6����Ʃ�{����.z�{#�
¤2�e{ �DqUIH]i�����~����	��j� � <�*y�fjqp�EY|R醴ˮc�g�a1�Y�
��E'����)����Ġ(�wZIu쁲4�/<�-��acY3v�7�@ {cl�Xy�@�=�@~D��ZM
����$�X����S����'%�`���e+b\�9-���kaH#�58� 5���6����k����w%2�����V�6�N�j@�z��=������3G���r�;�oH��{d�O��~0��7 �:	>���cr�����v�Nq�z�'}�ϱ�B�o����a����q�}HT� ��{��8�n�V�{�C2�������qȵ ��q��B���C�ʭt��ΰ�˶\4+�' EQ����;�n$�K ~��]����ŏw-?]��(�u�}�j-L�4���4����U4�/H%��I�A}��Jt@Y�a鱨=�K����iL5��3�nf)�۶B8Ξ,0�0�XJ�� ƚ�TǞ,�q�Ĭalݬ�s��|᱿�1�.�N��,aTF��T3�����1����y�h� PJ9a�:�h�m' o�,+�}pw��P������p��F'Ӕ����Re������T���dLؾ/"<�@���t�� �-cE�tp��ݦdPw>.6.�prn���{6�\m�!*s !t��.�`�e��*�t�������8ٰsU6 �:��]x��w����}7\oP���2��%>J(�:VA�0���P�U�2��,���2 no���[�Lz���%���' �b����~6�q�K����~��^"�]�>>�th~��vX��7�[��%�m�
��z�|�}%�C�H.��:0 7�,�S�'" �G�Gz3��#�I��a�#�G�����G��s������rq0?u�ܱ����9xS�zo��}��>b	�kZ]�EZk��	l1H���_����%���{��5 ���
c0*	;s�|��vY}p]=M�b��+M�Ή��u�o��=.�'��*H��	dC�=�:�����[;f�-!���F �� ���oEi`����3S�Ăw;P���Y�Дz��xXH��}�f����$t���u���-���*�u�8q�D5!&L6B��PT�k����x�PY;�^�Q��@UaP�:`0�,Nv����X42�a����P>����ђ>�i)�":�M�(�����.�T�C��'	�'�>����4�J�=��&s�S�H|�{$*�T�
�}�ڎ���1�.<~|�����kW�ت&-F���$�ⰛU����=@�a$j��k��Q�۟;�𖁧��N|�_�kx쉷��p�����?�]<���3�Qp���8�*��@����|Xz ��A��J~�q�iD�gP?�<�D<V���+��m�ޝ��;���N�e����5�� |觮������-��5 ��r�E+Ui5�*%��$��YT����u@�2 UϞ(pbjb^@�̖!�� v]'�ݢ�@N��$r��q \-�Mܡ�����Sc�8$�S
8�	4a��bt��yk��N�1vv;xx�`BI�Q�r$�|���N-L�M#%���ҷQK��,@�D��=�c��J���P����`�pw�asbPZ�
���?�U�{�R���GF(J`��$y���3���m����v�N*K��d^�,f��@5�q�4:��Q�$;��`��9��A$'%u}d ��73B����Q�Wp�&b�e�X��i~P:/.�aŌ�~3��'��D6����h���: `<�mk ��V<O�y�p���8q�<f�'QUcS��w�C۬0?���ۗ�s���\Jd&���'x�8���W/�捫ؤ��'�	���(��g7Ե vD7�Ph�|�c<g�E�Ў�p�z�W3��w�xח�����n\�o����g�G�}�V�j��{Iۃ�(���|�c˷�����Z��83`���^��m@����g(J�~b��`���������]�{�ڝ��o<踐�����c�����  ,������ ��1�j�eI 	  6'"֭:o�"<�� �Nr � 06'e��1؜H潪��*ry9��a�,`$�r���mp�e�3��QU^�Yx��dUh4��l��I���-LX,Ge�@X&TFX{��{̹
Ԅ���տ��ՄP�� �m�@aP�:�W�*������P�S��`�05c�qr���N�v_43�� ��ؙܶ{\<_bZt�A���3��cw�C�R��N4��e������	N�3x/~����i 
+�0*��=�;�����	}&)�X���Dx��r2)� �� ��~�<K�
�L�OɑP���r��: =��y�����aLp�s��.>�\|�����;p��'q��'q���8q����z\�b�<������O���� �ǿ�[�_N��j��g�?��g>��ׯ_o��3}0詓���FL4I����SΕ��v9c��'DZ�{R�:��C��7��{�? \x�q|��>Ξ�������^���[��h�CD��30�/���v��J�b��x������d����|�{ދG{
 �����w������_�ӏ���<�vMv/99	�	,@�aK������ڷ��k��� �l��>���x=7��|��0���j��C�iM+C�DZW2�v�m�]6H1�&�B��co!׀�15!�p`�!�_Y�|s�Uñ���d;N��4�$�s���'�������0=S��6�t�V��T�&��a4�x���~�Ş��E��gKy�bf��4%`逍��pR9�k���CE��T�������T����s ����A'�{=`W��A)��+F�1��:0������Ӓ�4M�h\�8l�,��A�1�q�dqX6>�y���yq����*�QGU��o;]���)5{"a�N�AY����B.�\��o4y�s��r���J������w��?��~��@U���?�%N�:�'�|���㉷�+��;�?�lQbc�66O��'��{��o���� ����'~��~&�F��-�:�0N�:l۷o� �~E-{��j�)�7�	�ሔx�����߀f���2�N ����K��>o}�K��g������o�N�'���C\�ԟE�!�{�5>$�M�#�� `�2<�����5��~�����]�˿�kq��E�����{d"�>$]�L�>Оd�'~g�5:����1w�9m�o]y � s����7	 ��WȔh;Ƹ"LF����C_����*U�@��?!>ht=P/h�8u���d:0Y��Yq$q44F$̪$��Z��A�4Ȃ5T��j�:��"8�8�xl�,q�6�@a�o�Ȁ�
8A�)P���-h���98kP�F��g�e��y��j�Q�ρ)�ҥ��Ab�40�Ǩa��@�2�����9ao��y�7�Pt�Y���t�`Q��̢u���H�D0<�eѵ�m�X5�Ъ�����$\����R!P��T�G����E
,�4�P��p�6/��@���w�T�'%�.���)-�z�>Bi3�������P`��������}�{��sUU�ԩs�p�	�| �y�g��^�6Oa���RS���LfO6�m�޽�A{���kϖ�2	������+��5����9���\m>��}���uxf���C��� &�5"f6�]{�e�n���c��e��m��|��1��<=��S�k��������>��4i�u��Ov�8������ S�/��� v�o�y��!���phxS�zl?�wo��x�����uwLxճ�7�Ǽ�JUA���DΘ�\`�)娂�x0{�b`N�,�1@ıOUJ�U�`aY�h�M����u�D��y�=K8���bU{<T3N��Y���YJ�C
C T(��e�Dy�� ;YX9����6���Q�4�}
�zЙh�a��l�۷[l�w����l�s v���G�2���ш��5�b:&l���kkjp��`�QR i��0>I�+�!$yH�j����/�h)��0:#���ێ�3�r.�)!�	w"0e���
�_�n�ZX&^vM/|\ �ʲ�Q;�emO<�����Ƈ�e�X�ZP��F�#�_-X��/Ӑ�J�	��
;"a��dw�q*�f�?ߎ��Cd!<�xu�OT��6>�����K�鯼p���5_��`~���\���v2����8U����k�J��a�D��������<��g��g��<����?�H��uءRH~�p��jp����T�s�������e������� g׮][������/e{�  `����u0�$QJ]#ښ<�t_���H�əJ����1I�J��g������%@��X��"�JUB��EU����G��&<�� �p�A!Y��=�j[��''R�����rd������1�xs$y��;q*tɾ"! 4�N�P�?f��9�h��P�@��*��+�M��~�KWj�	\��Kz�K@��gA@L uKX�κ1Qڱ!e�|%	���2hu�N�_�5e�O>D����H�_X�ucM>}�MȅD.Iޝ��"�~�IB�-_lp65�Kq�K}24K�j^QM��h�	k�0_����B�4pVJSF3U���u�M&�U*��a1k��j����N�442�.�k[�ҁ�&\��r����W����C��-O=}� ��~÷��W�'�������3�~�$��{�
�쟗m�)؞9����Ox�w~�c�6�[QN��G�k~���F�pf�ɵt1};�}ƚ��;t��C�z os��z Y6��">o��I   E���o�sM�w�JFi���;���ˈz�hZ��7LG���*9fo�7tt��0I��J�H��������ԂH��4؜�6�����`�N�m�=�&�
�h$��r����_kpv�qz�1y�aO�Bj\J)	��P��rN��P�5��~�mZ`�E�6If��"���^�+'�%�F^�������?������elNꐅq\��K��t�!�H�b��0�ږ�8��`�ds$̌�(�ַ$����?V`�����	��.Rux�p1P����1�pn����'BS/�=#�!V�'��9�%��k��<}־�E��]~���(�%-K �`,Ø�ĥs]ϑ.�X�8vZq#؇-aw��t>���hj@<{���+� �c�1~�_�sx����� �y�t� �7}˷�έ�����!]M#��2$q�7t<%gM���~1����g|�7���o�>�^���1,j��d�z�Ń��kJ�`�'��#�>��Gm��`6��� ��0k���� o  5��J�n����N��  h�Q #6�E,jqd0&��ey��Խ��w������b�M6�,5p�1	�������`cB��ﰽ�lD՝;��*��bd�j�  W��{;�c<46�U�~��Ԅ��P�8�u��f��D�bP]D
_P���Q�u "��٪22(H@���K��'��>� ��h���|��&�����R��mG�
��A4��&$v�+`
Au�ᝌ]�}�} � �6��UfG�)�f�@l�N�JE��K�*QFuF�<���B��$�d��qE�@$.>����|�����~	��+�Ox�q����h<�htt�BS�X-��@P�S҈$����βrDs�6�;��|��{l�l��Q�Kؑ��������z	�����7}˃�����~�U�������+NO�^/�gc7�i��iso}���������ؿ|;���/����w~�7B��P?C��L{�w�eːW�=ˇ�~�NV�>���؊�P8����& �m����y�Æ�o�>9���*��x/�h�*�u��3������,��Qk:��S��>�X�*SQ�B���V8����f������í���$D���BTr�hF�x�K��WV8�p�z��l!@�fk1#�2VNl �����d�E+��
��e�t tU�7Us&7�[N����2cz� 0ٰh�{Aj_Բ,wJ̈��$�;���J��:=��0*����|�.��	Hv��q�]U��S�{�=�����t�ŝ���CDiH�	�'i=oC��G�����8Wr	HY���~�7��w����K��ڶ��:Ԙ���    IDAT�*�EM{�;x��O�#����_�Y��G��JՏ�A R�`_���g@��rN�Ŵ	*��
inč�$,r�*x�7?���k��'�N�S���ҋ/��g>�o���Ǚ�G�E�ml��������W�����F�	��>�f���x��4Ӯ쀷>�.�7�s���9�ܿ�i����߆ �����'�=�I��e�w<�o��a�s��6�|�Z�透2|޷7	@ؼ3/��:�_1_16ƲV�J�yQ+��6 Ң��?'lL���T��X�������A? �~R+i}��,-��D��L6-6�W�<�0��`{����c����+y�%�0�|!��L� �����02 m�=n@��e�sr;w,�F$�z�DK`\��AA)�@䵓}b� \'���O�U c���=s���c��NYLG����Ƌ�#˳��F�i/H�j�}���V
6���LF�{/��.�f���p�'Yǜ��\H	(�q=�X�:�RjaIC�2Q��J� �R����-�)I�D8(��s��g�ޯ�[8�Г���n\��ׯ��Wp��uܺu{��Q�+�V+���V+t]��m!>S�������˯^�r1����>�Py�  �s����l��)h�N;�C[���9;/Q�h����:4 �kg\!��@wHT���������?�ի��?���ַ�������]ߏW^~	7��F�����A@�����Y_�i3 Q���� _�u��_��K��_���/�+���?��8 '���ʄ��Mp��?q��������ks�i�ƣ��h����&ۏ�䵏���^����W,k/5t���=�"$q���������=a%�p��o������b�uS�U~hcw��S���
���=�X2�S�:U�%��cn�Z�ֶ�0���',X�c-z�FO��$������Aq}����	p� ��$��w��	XI*\{�&E`AŠ�]#`o9��{��	�}HU�:�xe�uB�z�@��QG�m�9�i:סn=
�,}���A�w����nER����2nM'�g��C���%:�='/��I)hu����P�HRLI�M$A>���P��Q'���{C�
H�G�3���O})��}_����zWn\��>�Q|�����|��ԋx��K`�$���a���ݙ��A$/D"^x��4��_���ׯB�:�y&XE� ��W`U�Ǽ
���A�B���u�u(���z�w6>�������іՙ�#2�w��J�	!��`�,�#&��~t{����^�ޢ�m����6� ��6!1K�����\��֭��23b�;"2��[���B�]�V�97O����o[��+ a��� �;�������S�y1^����?���i�����p�h��\G9�ۖm;�K��OZ�/.���
|������:�*�q�~Е
��Ժ~�}��5��b� ��;n������I�m���͆�ߜ���Y ?N�4�C�V/p� ghmx�6�)�Q�=��4¾�n��
��Y��vE)P z�R�/�"y��"���`�,�I��ĄF�%nq"ɟ�v4ΙH0sp��sV{����(tB�ܖ���fF�RGD�H��jϢ1aa�J�DM��"�<�"���[���Z20�K������(!�I�	��#B���d�����E�$^� i[I��B9W`fK����E�V��n(F´hY�5�e��O�pO�cY�x�(����L"F^8���8�R��U�y���q,C������G(��� 2NI�\)-�"� P�}�[A���^��K���=.x�����/~_�����/~߿�5����5ۀ�Vm��Ҿ�D�z����wc˶�Y �ȳ|߂E��p����`������jԶ��\Sd�r��kv�����,]���ލ��i���1�'ȱ����p�m��W��U�>a��|8$H��%��U��{x�K~�׎�7o�*��ο�?ཕ�ͫv�9��:D%���X��M����>tR����~z ƅ��<t��5"���#I�̲`��㿑	(��T ���?�a���E+���(( ��($���3X��6��偤#���a,���-�0��H[J4�D����Ɩn�����������`8^ 	)(�����IpB��`l
��"��&���z�H��0
�����|�D92�	tWCuH;� � ttU5� ��R�VH ���Q `#�yfFɠ���
���XZtK�B��T5,J_bYc8T�t��&g� �B��=�����-W�^����;\��m�����K,�b��
۰[���xE��vU��o�I��������~���o�����?|����>��Ve�Q���O�/f5w�!���x ����n����y�G�;�,��J�{��F��[Rm�)X���
d�͇��N������I(q�@!�\���f�u�y��׾~�+ <�/��Wpۭ��w���'���-:U�+0�_�=\�������>�7���_���;�"G'�ȕ`��R �ĥ�y�ļ�ۡRE��D�`�AV�|R���~z N�r%��7�s���n��%
�P�uQ�宵�N$�L��ʠ��I�yT0�2Mhf�p�x��(~5�2p�B�{��/���7d>V�d���
Y���
j&�n�T@sG;gRtw,�bq��`h1*��.K*�4rDFr�FC��R(!/O�3P��&"�ۉ��#��ˌ|�0#��d���.
4c��H��ܑI�@n���x)`<4Rphd��#8R �,/K�?m*C�nRE�v���J�.��J� F�̯q��X��Np\�n_k$c I�{�D��( ��́�޺��2�=n��gF���_��#)�S��ó�1���S3;��G��e��a�܍�'?�O�۷�/����*��"��5\�J�jWD��ؕ����EI�f!x ,�^ص�h�7.`4?��s7���f��^��`�D�1ņ��1�t��V�U����ez��u�}�2�-���]Z�{��F�=�<�Y��b �~�E��%��M7~9��*~ �n�Wnc/@�o���<^��ם��/n���G��c��ͯUS��s��P9ѕ'�W���o0����ؽ��T��XR�w��n�Ȧ} �x Ɯ?�vZk}���;I��B�y�CF��r�݄�P���g�2c�o�ߔ��P�5���#G��	�ԂV�>XpR9����i�)E#$
�ٞA�
��\JPP�J0����h�.X�/�ܱ�\��ޥ�[�%��h(G��P	��L*�d�tD?	�N9�R��r��E�P
I��)�Y�V#���`��bb{� %$�K/Kh@�PP9#�V)�#3����br6X�,.�J��R_��NjX"c��ف��u\�����n���B@E�-*B�N��,;
��i�gIƖ��'#�o�<��)� �k8���<ß���X�1{μ ?�����<��-�vۭ��?����-7����hg�kGڢ�<7DՂ�/)#�[!A���`
�Y��l����_e ��`�����]=]������N���c��D\��U��:�`(x���`�����w'�z�[���sqι�p�.����_�">��+�C2+��	���O��������I}�����7���|+
	zp�{���C=������T�T�h�,�S%4���v6��������
���]qš��_��=�6=���HHY�E%� c-V�V~񕅭?�H��j�k&A���HZ
S�N�p|�`�/��Xꉪ����4�1G���0�m*aK@�3����5�`���+˫�ӟ%ʅ��䝎B����X���h�� �J5����%ͯ��,�
4�({#�V�~�(����%�l�@k`������s{��3�M%��v"�����b�@7	vd`����F�3��H4��vSae`�k:�=��dL�4�J�ٚ����0�-,K�Ƙ�03�%����9W}%��Hy�D�!g应>3�x;�u
�����+ ఠ����4 ̀�JU�4�p� ���(��5���Ի����y|�+�Մ��W᭴D;w������X:[��o�h��!�B�)�u��reJ���NR8���$�f	^+��R7��:��%�����
��`�D�KU?R.b�;��=0�K�}�������"I���LM����^�/\�	���W^�ǺT󊐄��<���������u������G�����N�ܚ����^�{вb��W�O�l�t:��k8�GI�G?��7��l���c�6�G��moy�}o1�iR-|���Aӊ0�R贔[�P�٫���%/]� ���ݦ�nKc�L�-��L!K�0��� /r٧.o�[,�,̱�o�|�HQrqz�I�@��dO�3�ݏ��޽Mt�D�g�u���g`B��R"�	�˥��,�r����)����4�9������Q�,F��-�����Sl��0�
�;���o��W��d`K�[��zv`��F?gq<�L[��V��M+���1��~��3����9�`�o������h6���, >l��_U�/
BQJa��@`Y2F#�����
�1P�q��]IaH�k�_�{!��,1�e��?�dl.|���uT��s������? ����ԔI��W3#4��id'�J�l#��PZ���]b���7�J�MQ������.8%�ڍ�,������-�O�$2������X�1���Ds0��&�kr�F�T�P� '�J��;:����>�s���W�������ϻ?���	P֊<Y�~�.��&�U��{x��/���s�����^���i�?�(F�%Y�{*=�_�*RPB����b�((N��g�=��v�A4S��C�N{ N�J��=%�&_ �菤@��W|���H,�?��c��0�,����	���3�픐j�V�_C �u����(0*{;&S�K��{�ي��4�j`Z����Gr�.�趄"�,l鄆1̪A�ՠT�	�X���N�d4͝hM��,,� �y��Bd�Z�-��t�
��[���X]�ص3E������B�+�WX�"9Ô�h����B� ��H.|C+)��(�� �;
�����t.��
�>�,E4�NhW���i|��W��B�c�@D��@4�E[��30��M�X ��{�aE��Ļ!����(�������?����!���ХDY*�XYB�jS���
�_�����G��jd� ���"���]Pe8c߀j�僝��ȟ�~cVy�︫�_Y���3ѯU�bI�96}k���]���X�L@>�����-�����?1��s.yn��Z��G��t������ؙد����K^��'<�o�}�Z����7G����Dq~BM)��(��b/�`MgY-������?T� :=����J�Icpē�0D ���CA�g�0�Vh:���yW�`[1�_��}rj���3	�ؚ`�t�vS���C�� ��+`q��Ё�o�8�����Em�eR@#M4�ww������&]�FS��TH3�ԾNI��ŭ@���Txp�M��j��-Ş]Zm�Ձ��V�����W�,��|��s9n�}��0�]wq��Ksl��	Á�X����84_`TH9_O:����4)aTX)��������-%�f
���`8
`_�{�$�1�O< ��,�\��>��[���嶇kE���T�B���~s%W�s���4%�u���_:5� �ƾ{�
�Y�]fgd	#I�/���V
�b��??�tqs����ȍ3����)��= ��	jn�Xb���Qq�uX
�i�g ��}���{g]T�TsP�킲W��7�w\ɼ�?^���@��n"�K����o�G?���S��\��ů�w�#OH�_˨]���|>.}�k7�}��|�W���������B]���q�
�x�)�Q�ߘ���@G�J>�agOA;EY y;�8A#�)���M���U�s.���2��B�U`���_~E�p��q|� /������J	7R�d�0��8��0�T�?����y��%b�9���>ʕ[�i���)� ����OQKn��ق↰�¬�R�G��ɼ���jk-t��'Ԓ`ot��GI=k1�ՠ��%��6���D�6�`0�(\1��U#��J��K���D�@���{[
�ʒ��2���GM�Ձ���D�+���LR(d<��xU��Xh4�`�B#�UM*Z��{n����
_���$i.����=�`ʮ5�_*!_p�P�ʒ�	�]�&���h\��?��O<5� v?@b� @�%�Յ��B}�R�2�DÏ� ��-��
_�'��NP�&�ͻ\���EeAz߱����� �-��r@��P�ۥ�dP�w@����Y�����y��YHƦ�����=.|ܓ7�
��ů�7��E�t�B�yh|6��ƞ3��K_�z�{��Ox>@�������~��v����N����ѫ�Vد�|��j(lw�>l��� �㖝� ��jo|�=����.�N˂�� �Df�
�����:��(X�G��,��"u����dW�	vmM0;�����y�������3�w`����Cqt����\�E�NJ��!��AsO͉IÝ� �ՠ�lXeJ�r�
 �#�#jd�H2`[4��3�`�Lu4����K��$���pa��A�g	�an�����𽻆��M=����3��J�K��J���� g�a!���=��dF����C��w�7RB�Eh7�l��h��#��{4�����R���"�-F#�<�b��.�J9��V0�����*���>��={
����
@��Z� �l屰U8,k���{���p��A 1�B��l0'ad�$������O������`�X[�r��=��x��q�9�g^Wk
O4y���p~��;+�����W������ �������Q�J6�����m<����\�db��=W�S�~�*a[�޻��>CM�u�8���H/����A_�����;}
�O��Ǫ3?nM+|�4��D�U#e{��G�$p�j�v4���Yy�K,��88o0� nB#Sx���ػ=��		 MB�!}|�ZBdq`��n\��w�QX�79,[�%��'.��t8��M�&4���Î�I��4J̐���&�$Y���;	�d�-g5�؋&p���D,�A��_3�?b�1*������z7�,�/����+�0� �,
���T�>�`����h��m�f'4�R�<6`re�Y/��#����: �+�)`dv~�Be���:��Q.�@��T),�4EB�[8\y*�@������	�3�~^��?ąO8�� ��
ne��K�2BQj�Ń����q%��"��S�'U�x�����J��0�a??��)7��=>㘼�P��c�j�XQ
gu}}|D��D�����؇��G6	�����_�Uƅ@|�- x�k�]��� �|�x�[���(Ƅ?E�T� #%�n��
�XQ�h^�7���L�+�v�4��dz N� 6h��Y"��e��vCeyQ���_1��Иj;׾�-��fȋ���p~%��0['����u���&�1�(�-��Wd@iL�{�����t"�\'�2�xB+��lCN���L8��L�^��B�N��u,F
�&�m�-���|��s��6��R�ɖ͌�I��:e�tܽ� /�j��:,L�WK]6���B)��}Q�-�4ӄ����l���,KXG+B�!��E!T�d$����+%���>��'J@����a��B�U�P��X	����ot%P������(��epR¿���[��-��ڵ���M�YZ<��Q�E��%�|�'w��,BM�Y# Ǭ^Y�+�d�ͨ��G    IDAT�%IR�u$�������ռT��7�����a�脑���3�X�פ���V�@E�k-��Н�X��k��
=�)x�#ֿ�S�3�����o}��U,j4$;�ٗ�^����~>r�?⊷�UM����3�ɑ;�*z��`|}����)����p D�+E_��wVn۰ӧ���'�pZؠ��C�����%��t�,0t,s�X�YI�J%�uR�r_Le�&��5eX��>^g�&L0�B{B#Մ]S�)����޷7��W���x׵Vbm�|��������@\ҎP�Z���D5�J�˭��Y�}"W�������x�CdB��&��b�w[
��Ed��4"��0"8�#)�{|E(}�Mk+�̈-E(�E�� /�"/Kῷ֗S���1"tKg���z��DCPÊ�
����k9��H��Bc ��8�(�R�G�&x���uJ��%Xw;ϸ �����ݛ���~����wo3��>/��U�Ç�>���Ă�Jlճo�(���aX���y��W�1wp�_ǬC�����1e�C�%�j�ֻ���;~l�Z���b�B�	0:~|�a[�o����mX'16 �OE����|�������g<���n��;߈C��s���\�����q����|�K���7D�~�ٯ"�����3���=~��?*����4�p��;}*�O(��I[��'��Aί�4���QYQ��V@����%Uh5ۧ��U ��ǭ3b0��qƶ;�$�Z�M���B�P��*�;\`a����(���Ʒro|o`�c2�N�b⧕��cs�0�W�0��D,�F�C,ɹp��
HA��
^��6�J�wwk����r�~��#��ٍh�!.Np��+����B��L!����JYRY��"f�
Q��R��OXc|�<�3Q֒Bd�`���؈[ԇ	B�^8��j:,���8��l�~�e�����EG�pNB�����ſR��K7|�{�[��믅W��އsν`C�4%ʲ���G"|u�>;��+� ��r��H(�E؏틓�  ���H������Bx���p	�wt�Z��Wȟ½f�`��Cx���Y��������+�����㈮����'>Oz�sN8w����h4pӍ_B����ǳ.~1��cOx ��w��5Ŀ���#���@T���ߪ��n@4�ww�$���FS�/n��S�~R1 ��Mڻ�}��?�ʮ7���D�i)؁�0k�+p|�4����B��0�`K����`uh]�� )F���f"�Sݩ����h�}�P�	� ��Y��_i�u���Y��,R]bx�*��ҙ��n����bbJ^ne�Z̥s-�U�*�x�Dp�:b�0U� �/A�0:h��l�ָ�p�c�b��S�ž��G��,�:rE0%L2�7�H��W��R y���ed	!7��O����7�(l���0Z� \��ܹ�Yp �Z�*~Y�Q��\Q�2��r&�@u�$T�Eq�؅nx����'>�U�>�7|�-��~���u���[q�оM��	#Fp������A�OE��y#+��K��o�a
���;@Y�u׻�pġ�Xp�Gv�jR"e�m
E
&� �� F�A\���!��U�tM):9U�>t/>s�6T ��^�����?�Sb��3O��o���W�#�BN�f�
�Jh�cm�ϳ�ə��p�b��q��)��PDe��͟��Mp��i&�������� ��D�tv�����RK^f�ۦ����R��k
ER>���:0��p��3�`$�wˀn)$�������/h���m��	��&MT�rSg�%c����`t�*xh��H��	�� ���h{p���J��T��ZW
� O�u��,���<V�a�v�m��=��#Ö�i*V�W�VV���u>��Aoh0Z��/�Xut���A�*N�5�DI����H�[0,D���g�[���ݘJ��=M�ɵ�Rb�NՉ�ƽ>T�)%!f�V��ps#��E�x|.:#T�"<���������y���>��y���߽�	G�BR�6k�����e�?�W�Ӟ1S:��"���`�{�0^��� �Wb�� ���JC�y\߭v@��5���6�m1�1���E��/��n<~~ߧ跓�"�P� |�c���>��M�۱s�I	 x���w��M�m~ҊYT�ER� ��q1��iކ��	�U߽��R*�����I�����)��?k?���\o()B^	X1�t��b`~���Y�41H+$�@�b~� =8B��pY�R���������t����X��J���4R%��J?L3!�)��R`2M���/
�*�ޙ��Tw��
�E��Hw4�'�Źj�������7�`��b�@30;��nZ�}Gr�2�,x �Q��	�#.x�.W�/���J�(:MQ�|��"�}|e=a�c>Q`p�n�_��S@B�gY���0R0Jcaʊ�>�x�}����3ψ SJ�)¢H��U=��\x1�uɯ#�6b}�O⊷�	n����H|4����̦ϻ����\���pxL��F�s���n�%N�A�X*�j�Ie�y �i�l�bA���2����WQ���M�f�G������E�T	פ�Ǎ{	�(#���x���?��?�S�?���>s-���7��A�krԾc�?�F��%�L����2S9���pu^��n���+���g�I� �V N�����O�����9��t
t[�c�2B]1���T��
ݶB����+1tqiO*DV�e�s7�U����eg�4Q�S;ArF[w��&R,`�Xk]�[{a�lǡ�t&�J^�+�F����H��T1ѱ��`�!](1�=C���t�+v��aJ #A���5d`dan�w,�ČVK!M�Ĳ>z���R��+-<�-)��
d�b�
��(�	biK?Q��
@�a΁�h��%ݍ_<(�́	�>��"�t��@
%9��e$�h��b��bMT��	�ĠR���#Jq(o��u.�qɯc瞇o��~�_»��g��;_�\���Rd����6}��$��H����ca�CM������E�f�w�z�`����ȟ'��9	��:\;O$U( E�F�ߌ�5�Ƅp�y��L'��:s6��8�:6`����$| �珔��~�CW���=/�枤�ڝ�߆w��-���;�6O�9�����Xeګ,�����BC���~u  �oj`���再6�a��74~Z�����u��{K�X�Y4�Y�`���eB�@XX-�J��<��n����]ơ�F�E�fg3���bP;�1{���l��V1wt����E�	�L��	X��RU���E2� �98���L~:	0*���E�o�HI�}e.G�3��L���Z�&@�*$SB �,��rF�*�Bx �9C103�aK�D[��B���Ai�,K�Ũ��ՌU*1�YR1Q+�$!�F�Ȕ�DVN��gc�\��'NK2V�
�D��t���V�R�h��8����������T�i��g\(A�~������y�ݷ�=��K|��_�	�,\�W v�܍m�wo���R���<���@}��5�� ��)� ��f������6� ^�O`��{餣(6>&���Hf��.Ļ����`L��.x@�������)t�c�a�p�U���O�y�81t�������Ǫ�Pů�&������c%����K4.� �Ĩ8;*>iY]��� ��Z �
�_���!��������:��h�*�}BQ0/:n0�-m	�ܞbvB#Q@+��*�T�ӫF�An1�hp������C$�t.w�������[��ԡz�"1�� DXX,�Mh�vd��.-�4���&���J����s�p`1*�pl���q��ҧ|�v~$<��ϲxzp!
��-c�T��-� d��/!�Y�R���kK��3Z�VC#˄�G�g>������г����b�KA��HN�1�`�,cyi%��v�p�&�Y_.R�z�	IJ�qI����`'<�)��Y�G� ��@/�]���=��������ᰏ��3��'�z�#_����a�m��ٶ�����h ������;v�b��<�ofT�!_�/İ�x���g�(t�T��W7�'�؈�%`�-Տ�Q7(Z_���,��1��@����@|��Մ.D�=W�Z�!X�u=|��H|�k_�ǯy�	:�y{ߕ�w�����4���J����j��)��?���H��q*�)�7_������DM����1k?q�7f�O��?��ͫ2�u#%LwK=
im .+=��F�0:�TG����PXX�;+��3E�/c,�n����;�A��%��H m����m"���>�Gr,/	i���Ҍ�i�E��N�J���L+�W � =+�v6�c �H�EU��Đ',�������	��ل��.�@��P 
�B�dt�5�K��"I���¡�%R-&�̄Fo`1�%XN�,��%��t���T�t��)�����PM���o�wak�`d�(�n ù��v�vo��({Q��%o�bX- ?���k�D�68�)�������;4[>�W�ݸ�=���P�+͛��2�V@�;�f������U�������Є�2�ʡ�����Gl��z+���r�0�>��×R-��5/3��IT,=�?0�G���#�np��T�!͕`�|�U�9?�]+��Ă>�ӝ#I�<-�Y�cB�h�o|�W�iϺ?s�p���4��η�X��>Ɵ���UN�W�cp7�o�gm-�� ����	���"|�f�kc��5J�M��pX�X����5n�= �����捥��_��$�N(4��Ӣ��9�ԷM%�>�`�L�8�o��g[�BVj�w�=�}���s�h>�H �S4Ι���]l;���	A�'	�����ɔ�U��㑏}+�X���Ҏ&�g�ĵOy�+CQX�z��ž#9n�c��o�����|_�b�k#��7X1(K��9��d��b��0�Fb��c��o3D��D�ɶF�)ɤ �頀د���>Kl�(�!c��=6`&F�nk\!Eg����
�,�jt��ܠ�	�D�.�����N�Dְ֏��3<����G\�������}���1&t&K����z�(BYB�Md���<vl��������x��z��A1�ou��x;[���Q{���(x����Z2f�y�;�Ҏ�2����셓�)xž&`�5�u=��f�0YW�sr|�衋����e���5<"���n�7�~���؇+�����[������0 U"5���~_���W-S#�V�VY`����+��k@��u��F��ድ��������m?��m�N{ @3���|���ȾH��ht�W�ЫX�J�XX�h�%�Y�NS�ӔŸ��&an��Jy�4H)�M' n�]�[�}� %{.袱=tewQ�"٦�;)�����C$,���P���T@���Z@�(��m�Զ&�Bzp{p�c��KYs
D�X˸}�Z�ػ���)���24���-���*, [0#W��2V}~S��� �[,��$�~K�
Ei���U��/.���8ٻ���h�T��Sނ�yܢ��Y�⯬�ha&%B�Z�Un� (l���*gm�!�������m��}�m���ߊ{��?
��&��R
uי�����ܑC����0p� ����4�e�PyV��� �j��	��� �ǝP`प��D�k?D��~c[늝ہ	�hX��"���^o�5 �?��c���q�.3�BȨ� b�%����?�S�~���Y�ڥ�	ǿ5A^N]��?䟙1a���� 1�Z&����5�S�ff�mWp������\o�]re�� ��x��z��+�R/��6[X%l��?��j�?/�-�������fFؽ5���`�����r�~��Y�%J}�Lk-�ơ{�P�����'[[��(4�l#���A��\=$� �`���n:�<!�+ TX_! ��j���H
�!�C���Br��N��`h18�Xb��ӓ	v:E�4@��a�x	r�G�*s+�K��DK������-�'�}:���0'�c���d���='oG@��NqQ�P�X��KS2ƆضoL���T���n<hP<"=|���ǌ�'�
��8a\V� R���G?O��_ܐ��(r����u��X���wJ��`7b�l���羗3���ǖ	P>�Q�R&�����k�I���H����7� x����e�}���;վ�oG��3�^��<���s\ਟk]K>R4O����x��&B>�,$'A���p_��3�m*y�c����c�e����ڧx~�+I�6�
Rꊇ��߉�ѣ�-�w��l�;�s����˨�c}��xN+ �u���hn���s�����SRܧ��[%��90��Xƹ�2l�N�X�����P
8|�����x��i����{����Z��n�	poG�P3M`hs��@�P�ԂZ禤�!����+X��%wnE��2����T��p�x����Uq�J�F���j`-c~�D��ٕ��R�1�@�R��R8�P`����3�_,C
_�A!�pa�1�ա�섖R�m�D}%�:Q cMY�.�j�PD�j����	Y��6�Q箤�gm,��%����^�����JR�K�PJ���s�;>c��s'������G\�����kޏ�����\�Z�c_��������(��pߡ�N��I���mq�VD��4�� �A���)Δ^Z[��q!遅�a �$	J �UU�qi⵾�u��x�`�"0��������B+k,�u��x���/	A��c�)^���n�~R� ؏{�+�W9׿v�%_M�_;\�O4h]�)n���-��_ ������>�ٓ��mߵw�f��߿�}�����=���w'n����������xJa�\�h��	:-�m�8�l���Jt�
���d[a������D�\������^+�p�PS.a�c�-��Q ��&`W��.��Z�bP��~�R�T�ح�.H���ɐ4v�&���!�/�m)��P+�{�B���\�VCae�`��1�3���<g,�4R���Aa���& �F#K �F��*K�p
�ܓ�6f��V��>=)��;&���p�5�ȁ�(�]��˴��@��ri�p��V��F�"�'�b���XH�u,����������_��ٻ�;7����A�]��>  �4C!g��m��t�---DV�g�D�'Gd�\Q'	�x�H)�����!c��q���X)(��1 i��ӎ �����#�_~�n�A��4���s�u���~�[��~�z�&h��4�*��~QZ����9ތ�`x�8q
�V�����7a̮����zs�]s�h�����h���g��s�9��w����ո�J�C�8|�����l�A���ܷ8�(��	��	�y�F�E	�/�{GXX��11�[�}~���֙Y�\��[X�b�N��K��\��������3�y�~4�-G@Q���x |�)�����i�Q;Iu�^�j:��<�g�8kw��P3;�}+�t `�[[688_��|���G�>R`�s`�K\J�� =%�KV@�2���9��T[#K	�N[��Vh6��^O.b���q��0�#�����
���t���t�M��`-�
�Tnby�Đ�e�� ��J*%�LR���z��s�����ߋo���*D�b��
�iwśbKc�񮻠Fm8�cii@\��? o�V��'�ج*����Hz�X�	V𘐥�7�m3:�٭�]��'��5��c|^�B���?��T�	��Q�}��& Q���c��uι�\�ʃ�.r�.��x�S�=~����    IDAT�-[�z`�7���"T�j��o18���'��u��
|���Z���Zwz�֩�����;r䈏�[TJ�Wr��� <�f�}�V�9JaGn���&l�N�}Zr����*g9��ߦ�][RLNIS��V�ޓ��՘8^b��K��O����I�_�������F��mg���S��P�B~�f�T&��"�p�x�r���[�$@W��g+��T����e,�Ś.�
�HN��_*��3��бglM�a��0̥�ù��9
oMB���%�<�����G\��!��EQ��*������"'�-�d���ĥ��uB˻1���!2{� ��Z,��z=�O΄�2�	��3/~-�=c��Ǯy?��;����p�-ȖaKF	��̃�A��aˋ�T��t����9!Rt�n�[<H"��y_��"��̃�܉�u�h� �F�`����޳�V�q��N�]k��f�G�>�B�c���Q�X�c��M��+kZ<>������#�9�x�K^��-��9��m���韹����TN��Ϝ�*?~|�u��R�?;���k��p���� ~��;;9�lv:����� ��/ݿ��+����ߵ6��4��� Ύ.[$���I�3	���R���
,�-�.ݮB{Z#ij4S���u5��������zk�U����ء�dW���z>�ܭr��F
�TuB���sJ iH�_/9�(��
���4��T��/�m�G�me)B�4R�-#����Ow%׿�P�2�1�-������4��b����O�#�a!¦T˾ȏ�73af��9P���0�Y�����Za�S��-nR�H�e/��5��9��X�	�P`(�
+���x�3/��>�6|����������H��1�$�!�?'@�������4�����4�zkN���e,P͇ Y���0GleN�C8�:'s����~���-'���=g�ck�>�S���ܡE��߰޾\��k,q�[-�	Aߧ�����0x'���>�Iƕ��a�g����x��O\�D�IOy>�����#�BY����9��6=��T]�+���.k�|&�5�j���D�� ���D��ِ\�,Kk��������t�A�?�ba�$�v�F�?�-�,�X�[4S¹������pHw�r����r�?����o@���d�~X�xl�w�hfJ��ֹ���' ���`��F�/%y�#��&`d������}��[�L @enU*!E�m�FF�K�Dgmk$�2̞���g7�Sg50�R�`�q�oi* ]Q�@_X)q|�ġ���(c�g�̄iT{߰�j�E)&M�FFh&�A pm�h��~'J�AJS1U|= �f=����F���E)l|Ñqu	��g&�P�p���=XH.���>��jO�g��rt��>k��*���/���Y�$�_E���)���@��'��� *��:p�
�!�  �8T}������s��<��m�����`��3DX:=�Sg�XҬ'�#e����_�k�� �Ǒ7&�l-��w����Whj.�x�<�^��x��_��6kO{�s�܋/�������p�z�����}�	Es�FI"��a��%�?n�Nw��lo�UG4�q�4�'���[�A�ު�{~�Q:V�g�ْa۔�J�vohq�]C|��%V�J���M4����O��#��DW�!$�"�9c8t��R	�ܻ
6
Љx�z�J ���>��U�� ��D)*��B�F��Z��Y2P2���ݝ�G��jc϶4����/q$���Ҫ��j��G8Z`nAJ�
W,�N3S�V��`����L)�D�>� �X�JK�A�HIfq�3#��HT��#dBy!\����Vpe��r>���\h�������c���I/��<���/|�����k%��	�K:c�Հy�Ό��7+�����
a8�ʑ��u�:���ltBT�4B+L��@]��P0w� �9�a߷l݆��mUܜym_���۷1�G��o�����e)<����30�j�#��_�#� �ס�����K/�e�;3KnԞ{��}�Κ�?��"굿�k�  ��O1E�[E��<o���o<�A��F߻43�uS�1�� ��=�J����j�^�0=_%�+c���g�@�	���Y;24�s�%�e$�@t��?�����61�*���N��3l���-�����NXA��
�¨ƻ�(��M���F�g����Ei樅=V@O'H�6����#[���wR6Xt����}[���.X�ۿ`��	����bF��0L�5�M��H� �t�M�tc-2��j�?�q_��@�@	��'$	#�D [YQ^�q��uµR��r��9P*�ve�=�O�43�%Z��Ƭ�`6�ҩ�?1�=����|���0w߁PAS���%U�5�x:qU�\��n߹���F�b�((,�,�ނ0c����ޱ����%o
{�6�&�޷a�;�	t�����OU]���wC��"�ޙ�����^�Әp���	��]�R yƵ���V����ux��D���g>�\r�Kq���uu�]�ieMzE���7^�D�����
��3�M���Ӥ�}P�8�mzvצյ�a��R���i�)j�# �����S��+���G
FYJ�1�`�+��X����<Z�[z����%P����B������8���n�V[�[q7�s�����X�͆��\U>����`�bq����`�+��}`��  j�Y�)(�Տ!�KF���k[�G?��sw70��hfJ*��x���w�[�F�=���
<Z��r!V��0�iB �=x,y��[�5!�L��Y�Y�r�����Rr�#�/
T��Di����y4�ἰ(K0(Ї<U�3�m\�����m\����~ ��B_ӄ�h�y�����:P��9ܮm����m�U��
VW��<��pq���~e��=}� (���Y�~�wt�q�9� �ܿa�u��l�D�Ct/ܵ<���n��K}�%y����]�}��`��y�/1~�X����װ�{pﺟ���uxޥ�8��ݿ���/Ş3�sDѻf�����ؾռ���0
���Ol��7��
����GA[wn�� ���G�����p
��|�f��SI����+}�}s��o6����:�/T�%ca�`�=C�u�{z"���T����폞��N�;�J�!�4�ד��J���� <́vlm�	q�{}0���/q��>�n^��V`��� ����D��ne)Y�t� 6R|g��p���9���	�M�PP�޵'�{�V/JFo`��� /%�Q��$�+�荜��F�~�2�,�u�����DB ��$m0I��>� l��5��bR���(8`ʲv��@�< ������N���}����m�~�|轮?2oi"X�FF�2B�)��(�ʦ�[����V�����z�����|�) L��ͮ��d�T�Ѽ�nĆit��|�rU	R������h!�;֏5B��g��q�,8:&Ƶcǎ���~�DU�#��n�ut�5�8?6�� |�=|�^���u'M��Y{�ӟ�K_�J� �\Pͻ�^�����������;_�S�A�����ߚ�|Jq����g��s�9��� �u�?"%�t����?|����y�l���s���38x���Z���),#��,M�:�w�������3:�f�jg�9/EwK��w�1���Z]�~ߢ߷hti�@�A)	[��6����7D10B�� [��XX������Qv]չ������WI�R�+��%ٲl��2$�Ħq��v @L�q�p�q�%�^'����czCl�[l˽%Y�m5V[j�S�U���Z��j�ڧN��],y�1J�sj�����5���7�9�#{���E>m	�:H]�Ndy!"_Vr�+�dSh����F��h���~�@�������@�h�[vE�O(�� J���e�.#_��R>K�[aZ�N����u	��)C���M��ĆŘ,�ӎ����K$G8?B�G��� $��?��$gR
\���3F��=|?v�x ����c����~�*!��xCE��lҙ��J���Ao�I�b��"g,4�8����M��4H�h����Q6�`���$�r	�TuΕ�/��H�Z?֗7�QŰ�L}��`��3@h�	��屗����΃qy5U^q�b�9�|�-\�|�/�p��j���������V��X�p1.��j���=�=tvn{��?��_ڹ�nȵ�稜VK��]���&�ں�|/�)��4͞S 3� ��7u�w ����C��/��ϥ� �8^e��NX<�As��t"�#}>
%ǖ�d
��(I��o���	��e9P��o�ӔF�
=�Q���	"ȅn!D"}��H�-)��R)8R���!tC�n�p}�b9��D������K"ݞ�������o(Qj�2���(��$���B:��h�cR28��.8�MxT�	p*J=�Ekd*�@w���"Z��H$�Pf�thS!a̸"OB��U�L��B-X�@X�.�	�T�#�+�,��� �$!���1U}��V�\}�l��X;�e۳x�W���Zw�"�-qO-"�tࠜ�"�"�H�X�{�DċP!W���?⑲ٚ�����F�CKUTͱ���T�r) �ά#��UU���HD�ADb���D���\	gS����7�[���rcH�2�U���9Ԥ*�B)�-�+\~����, O����;���[091���V��~ �}�/��Xݶ-[���p3vn{N������j�:b���<�s��O$ƙ �l�}�����̍,��q;@J�͹��Kk�� ��
 ��;�N��8��1�Մ��X>��y{�}$Q�M[�Cp��C�Ѥ��� P,s��<��ǰ<1kI=���է�����P�����!2�����r���	�"F�qQ˟K"��BK�z���%��(�ҽ�B�BI��mmq�1?��yIЀ�z6��ʖyL��@�QvJ��[S�B*I�N
��uJ��D� ����0�<��6�cS�HJD\��\j�KG���t j�#�;`YE�U�
�\*��/��Bi�CJ���8(���d�l<�`y���@D5]����v���C����q	[Tv��"b�e	�dC!B�`C:G� ��YK H��^�c�:Zg\ޫPF�4�{ c�Ad+�`�8LIL�E:Q;!@N�����*��%�>g}&��Oy}��我�*P�鎧����x5�*Q�v�?��ѿ�{n�h���>�����+�^�g:tp?�� ���'>�_�}�u�	�_z�=����W:"��iNR>�����#��E����i�Qs)ge46����7�� ��*��y��d�t�^�u�]�<ޜ��ƜQ���'O�8�� ���`���)�0T%^��-�E���k���7o�2#�8�9)ԭ�"9/	f�P��zx�3�4�$�ܑB���tW���0wa
uYKF9"��0^r�������<�w�1~�E0��? �2�����_��&J!&��M6ڛ!ݛ�H�Z}*Qa�%��s-�#�8J��R�R9�0䋡6���8B�"�"R�TN[�
��,"G����	XTmLB�YG�2ZVƟ+� ��}�`�<��B���/��?�̣x�� ��ȟK�_6��D�m�,��AԶE�B�YK�1>6
�ыE���
�Iو(�>Ur8"�����G�/Pǚ��AM  Z�*�������`y��~�s��l�K�7��9D�����e'��|�ux�M�6U G������yB �s��~/=�e��744��nA&ۀ��?���Z5�ONXզh��Jφ�B~�Z�-[03��� 3� NLL����E��Q�; �����;>V���X{������������><�c�l��o���tR@�*��~����<�������� ��;c#;?���,���"��-
C�C(���Ca�J�um=�ɡ���yv�
~�q�=C>v�^��=y;XD��+2p�#,��x�ƺ(�6�N�~��Nc�bv���:���	a�(p�ED���4�P�LT9x.C�j��g��'��(�5�H]�$*�A�j����L&,$"�@-��FN� �MwE*A���J��2Å��{�����~��~�YT��-+���K�&���t�-Iv�5J��v ���A���9�Ԁ"���� ��)�pb�n^i��ʁ�׹n�_�@��y��� �j@Zi���*H�3�ԕ�����Q�D�1#@R���0��[���xٚi��>��ѝx���v �o��8r �?�V����.\w�-�	猃^K܁1�G�Z������p�P���v�k3?���{#H�t*���+��sF8� �NG1��¤�?����d�I��9D���'<86ŜIt-H�>k�zYi�� \)Nu�p������ب�P`�����e@���fY[$�)�Z�	�@�ڠu	�-�a�%�XڕF.C�^֜S' _q��Ů7�ض'��"
w��z\���J-��q8/Ȁ)��.Eє���Xhn��ISضh�+���0�F$�_�N@��Pdp]a �@$���aT����J�]i�T��������EA�HYP��C&���] ���/������g�o{@3�-*�7[��"���D�qy��|#�V��#�U�0} ԩLc�ՓfD,柳0��(!
��sc��ؿxOHt=?���@�X@�1�s~�kU�J�>'��z>q� �Tw$bs�4��c�^3��^��?y�[o�+\��v�����~��;�=P�7�� �&����x��G�=��8x��_��������E�G��2g��3b�
���޶�t֛�����i��ӧ�N�29 
8�����p�~;��b����{���9MZ�,M>+{�z<�.cr4��Mu�xe���m�"�:&`��11`x�8
G'�=[0.�< �%	 �
�S%�d�[�я��ӑE��.X���fG �\�D�=4�H��]�Jر�����(��lأ�Ө=�m	y�C�Ó!�e�E&i�!k#��H&)��?�����&#�H���sC�&����]���C�[�LU���=$W��H̑�>�sKJeAKv2$���ט+�Q�-�x�{pѥ������C�<K,�e� $ǀ���\2Q�8R��ohBr���\���X^:��q�� �*���!tD����|��PIKh�p�-�����팳�o���}e���(*��)�猑	YtMe���s��>��D4:`Dӷ|���?V�����
�����T,����hZDV����~<��C5�w�;��;���L�)�M~7�@�������2�i��(!�>�����Q��97���f�������e	 Gm�Mw�; o�����۩�����1��FsNDa����~��<�E��4���̟�Dc����O�!����?^ s9@-��	0�%HS��) e���x��W}b�M`��в*���lQ
uK8�F�9�>�X>��S.��Q¶E��1Y�({�d1D0$�����ZF֗ѹe	�l��!g���A*%��� Q� %����<?�)�C�=/`�._J��R�_��E_�H!)
�����~A�tl
�&H$E߄��e�2
6#���\z��5?+/>�~��zR����M��30�2 q�0��i&�t�YðD��)�hD�xz@�&f�����C&�	c��c�kNah����[Z����f�'��&#�rĜcr|�wb�2���S�[�tN!	�k��_U��?Sl~�{�G�|�f�??9����lפ?��,՞Qc)������ӣ  p��_����Ͻ\=`��T,��Ͱ,<��k��j^�m�s�55���0J ����J��y�M�E��ޑ�r�m��Rg��X>��.N�/�p��|    IDAT�aA���pE-��@����@a"���"��E����r`2 ʀ'��� ����0���F�+���nM��m��\�|1��x��>��tq|��d1�_�|ID��pN N@�!c*'OE�L�"�"��Z�f,��B�_kś8*W�u䲤R��2�K!�.C�H8��_�s�ad�WQ
�\G�rue�2��C�HR�"pD��R>�����^�N\p��5?'O����׍���ʄ�ʕ
Gr�Վ��b�È���ym�sấ��e@ΪF�D9L��y3Jin8\�8*�y-��ye\������l�M1#DH��.c�U������4�z�XJ%q�ڨƕ��JHG 2�$F�SԚ���֏�%.^Q����}���߉N/�C6,"�hT�nQuB06<�gg@������}7K�n�)��Y��0 �Ш���$��B͋������2kN�L=zTkb@�pV����4�h�����䠏��1o���-� �1��r��_B_��3�t\�Ê�갠#!��J���/gr�E�|O�S%p@"�K7��*���k�J" a-՗P�� ����9)t��bݚV,L�>c���y!�C�b`���S.�<��dg?/��~(�
]P�H9ԖD8@*A�IR�em��	ah/@4�!���}��CP*�(��l�#H�@� G5}������Q)-�[)[�$:�i�pW@1�5�sl��ښu�;�=�g�|DW(׌�X$�5�!��< ���҈(���^;]Y,L�X�����&4m����0�]��02#Z�8�>�0U�C��zI��-��f������C81�Ŕ�0M4Z9����'Dj�X��n`��@���09�2o�y�|o��t�?�lش��}y�7���w};�6��6?���&D�-�-�=��<V������q�%WɾaQP���]S��APs�Gߑ(�vּ�90n���>Ƕ���###�#G�Ts T
�����î��w���G�<p�m����@ё� ;�p��� MQ��1��f�_,����!��K��D�p2��k��c>P���v(3x'KpL��� p� G���  �-+2X�!�uKӘ�h#iSE�TFyL�a2���O{85�c�� ȗ$�D�ʾRѓey�@)̀���-��Ȧ-؎0��EA��Qѐ��!ݢ��J�l�,<W8�m�i�/��iYD�x���\� �i ���D��΀��9�v�5X��ʚ��W����c�E�� �hP�Kh��J�]E��>��q�9Z�:��Z����FF��qT��,)T���kn]&*���|�Ƙe�F��=��}'ᖧ��� *eP�<�h�l $Z�~�������ר�]�$X���~�a����|��+*�x�m������ �Ɓ���]�F����ԖԧP�J+���=�ǳ���`�
���W�z] %��/���[j:<���9��b��  ��93��ѣ�G������Z�w ������N��k�eJ��l�n�`Q��OC�?X���2�2 �"՚Ă����$�DڂE��D�������9p�MI����l'=L은wl��̇����F�XB�ד��H7�X�:�K/�a��'$j�y��B�B�at<DϠ��!c�Bv�$S��!�� �|G�L��8��6ሎ�鴅���L�B�2�&����J�&T }�}\WC?jѫ VB���Ð�Ʀa�\?rLz#eM���W%w��A2I����h�щodx�l{^�G�s�X }�3�gU�c�r��M-hj�5�� '�E�)u�~�*yf��EX#U������0�R������
9t��#�+�ZZg	'	�]�ʠZ�ejz�GFڌ৹���V��̊�G�X��7��hf���!���׸�?�y/J�"~v�����6�G$�$KEe*�������ߏ矞��f���nE*�H�J&�b?�<��T���92vl�H͝�h�L�9r����BΚ��+��<������ء>�^ڑ@g��d�`p4D��8����F}t��C��B�>�Ykȶ$0~���W��(�p�R����Av�!3':'�2�bA�Q1:�G�Tu�RH��A�6dQ9��E� $s���R���՞@�&�&)N��pz,�_d:�"e?`p}ɗ\�l�Bҡ����c���責��!��:� �#,J�t�Ԯ(y"p�0*�3���_��D$]�:�-{H�Ӷ���A,�@� &O���[U�J�v��Y����}�����;_�����&�O�Ch
���%1�u�j ��Gj�> JЌH��4�T��ʉ�WG��"\��i��9a:�7ц
�9�wC����1} 6w�<}/Td7jѱ��q�ى�(����^��:�q���cM�oN���ط��{���&� ~~���~3Z+��T$<�S\��Y�:ʛ196��<|?.�x�J��:\����ʋ8�w\}����z�)��N�A�\s-��X�tѪ��-�鸊 ����?+��y�M_��`�g���9�O���(�s�t�:�9��z���m�(���@l�\g���`u�m$�T�"Wo�4�\b�!X�_��4�sR�� �ȗzO�8�k�;GQ:�/�Вn  �N�u�Ud��dcUW
k���`v��D�ʗ4F\���!�|���(�pUˡ��_���DC�
��J-�َ�N�,$��I�#`Q�ʽWt�*X�x����}�����0�Q4��M�#��]��{΅�����w`��+j~.v�x��WEf���>���}�0`Q�k �\� �Ԍ} N�G�z�Π	9��"~���Pm���*"`.7�_,j��Ӟ�;��*::��_��x5d�+P��r���4���uc|�5�c���u�U�6��K,������<��}�[P�$A�S�`A�S�#~󂑂"���O����׼�����w���p�.�cpԂ8���u���cc5O|���W�n�\�p��*�>��I�:+�p�?~�� ��Á�|�C=&��څ,p¦�}Q"�s�����=Z `XI�-ɡuy�z�|7��$�����r�HdD��8��;\¡���1��D�$Zk}]"�����ަ�Y�6��KbIG��l�2TF���R��r���02!��"���tqi���r� $2�����$����LZH��h�kG.A��:eH�@�����2��	���0��|\�����$��-Q9\���c�ګj~N�8��^��"d)�C-�4��	���C��4G�1U	��zϤ�����%�7�k���&�1мӠ��)c�*�N5Ci:<Z�B�N�\����蜿0r&�k+���`NY;<��w�w�^�'2W��7צ�[���7PO��މ?�mf���{���݁�݇�\�8�,��:}�D�
g��_����[��׿�f\��J-,���ш��B�G��^�y�sh���KV��-	�~��Y�  �; gm�~��NP|-��Ρ#��:���p�X��sM8�]¡mc(t� �&r2������04�-3��|a<=>ı���C���K�.C���W_�c�c�=���$ȃ���C|{=�[I�G �C���`QGsZ4�,�\���5 7N.��嘘16b<��8ʞ��}�?��Nm�*z	B�(�X��D�`�Vb=�p�Es�9X��U��0��$��z˥�ϴ̭j ��	��7l3���8$�k��ҕ���,�ٹ�l.��P�lip��3abA*���yp�W��D)�j:�R�|@�e�ԥ5z�$aP�w#G �`�,l�1S�b4eD��[��������X|l͆N�L�m�M�@&�aV��ɜ��7n,����?qP�5�sP��O��W*�{��'�xX?Ge��XD����"�U&��Jvn}���g5��t�*�����Z��;d�(�6J���~��g��l�:w����*����Y������:҉��g�e����dh�;^F2�\�B]�⍓,i��F�|vK=�Z����$������
x!D8"�p
�$� �,$���i�=��]����KC���7��X�Pߙ���d@΅�p ��>�p=��As��N�&:�c�e&K�8B.�/�?g��ȿ{>C*IE]�Mt�U�EM2@��x�CnD��ɹD��ZBNY��|�*��5���$!2��g`[�e�bB� 1.8�Nu2T��erw���1k΢����[������P?U h��V��ͅ%�}/�hP]}sM�0�~�B@���0�(��#K"ơ1C�)6F�50#�u�Ǳ�WTL��nll��]x�t�\�r�U��0����8�2�� 3�����R�HT�_q0n��̤? ��G������s���-U������A�kA�Y@�p=�q��W��k�������ﵝ��'�A��� `��/���=�bα��t��y]+W�t� �j p8���_�Lظ3��q��x���S�>:f'�hn�#���M�z'q��A�Ce�C";/����H�I!�"��)
��@Ia���,ljDǼ���sM�B���)�����1x��'�
��Ѫn�[,��IQ4f-�79���LD�2� �;E�=1)4��E����ޘ�F@�Eʈ�����rg�0��M�pD�T�F"!B�a���]���c�}�X�+�B��GA��3�Ԉ��r�! ΑL�d�ƚ�������^����������N9+���V�D���#�H��(��dg�X� b��e"�Z����t� 1��5�[�L�5������@FG�j�g��ES��14a��&�/��s]�s��5S(�{U�F�N��`�LgJ��������cω�T�G�*4>c�=6��ǀD����Sx�������tö���7�@&	����Ж���KV\�~N��^=�C��_9���M����w ����?�ޔ���I�^΁�����7�c��4�t�E��/���K�.zw�a�TY*� ` �GvVu2�i�!lHJ%�a7�0��F,_�ECNh0)�Sv�G|�=R�K�&�og��e���T�	.�|��g���IR4�[h����`�>k!��S�Ve<]O��B��� �b�c�U�Y� U�.�|��L�)��&H���o:%R��"��? ��:����,XfZC �^#X�4n�|]�7`�ҋj��;_y=���>��oB8�%œ,�����蜧�n�̤r�L*���\��~+��XD�ȴԦ���+è���	L�0���UF���@�������c�vE�_U�S1�h�0P��sP�D���]�.�J1F�vL�U���~�U�����H�{��gp�_G_�)����J�F�U�a���"��\�?p~�`�T��u��[��dF�q�~��7��Unɹ>��E+W͔��</<p���PU���" ��sb����ksϥi	8\�Ј�KRX�8�L*"� @o����1| ^b��9HуM9�p(B���1@����4�o��M蚟D*I����r�ӣ>�*b��<��-`����l�#4��P����`gSMuښ4���	0����g�}ah�%���fGQ�%��� ��h|�Z��$��6�#��RBYв͹@72C/�~ ��� цX�V�M\c"
fX��
4�̙�}���/h4AoΖ���8	م�&:`�M���1��ʬ9�5K��I�''�F�Jlb���)��DH@eN]���k�f��h]��ޓ3� �v���΅zP%��� ��*Q|��A�D94����*nK�{e:@���oć?�y�����ԑ�o��~{vm�N�������NA-���,��c�C����3�{�M����$I>8�;iӧ����#}�8�7�v,Z�l��;6�g�El4��s� �w Ή��O����_.jw�̦)��c`,Į׊��.c��4���!���e�],3L���.b�<x�(���A�<дkvRZ& A 78+�@���������d��Sn��/�'<�z���^-��Ce��`���="r�!��'Jm"�E�M4�,4։�����*׫��]7@��P�}�R(!vr��6%"ڧEL8���&�Q"�l��O���ڐs��&97�!�`��N���Hdѵ�v��������Z��&DK?����,R�9�T5��&�Ȉ�j�Dk�*�cBP�Ä��-��ՃN@Eo��p[�yN9�����CN�8VsMs;�k����U���m^;���j��1��ui���(�z�FY⧑��N�U���.��v{�R��{~t'����T�?��'휐ʵ���wFǊ�����tvm���5�f�n�П����"�|W ��%|�g���Y�v麅�W͘�߻w��}�T�J�W" g����sf���7&�	��%s#Ya��?�����Ѿ4���s�e-0.X��'C�_@�`�8�H[@�!�.��+�g@�V�(�Ii�8-	t\ьM���+�l�F��ˇ8��b��"���C=.�!�PHJ$ :OO ����e(Zl4�ٰmY2H�aga��+E�-��R9�d>D�����<ID��ѢTE�.�����G�"���LQ�R�j�h�AC����D��\��Bx��5�е�bt� ��}u�%�۞���k�D ��#`YJqP�0��4�ș;KCc�Zj� ��>����ƾ���c�U��i��)��2>�12#j��6��*'<z�v���چ����	�c��!WE�S�E��C?�{B��b��RN4�*u�@��s�,Y��}����;H�������?K9��4�Rs4�[٭�J�]�g�[1�3@8�}���.�Z��>�I��sɝ�牄dHX�L$`��B�.Y�f��e3" fL3vL���  �; ��x�'OJ��Es��uB�1:��ڎ<���Ѳ0��k�����\��q4e-t�/���Q����7!��T�}�GJ�E�2�YiHY�_��ګ�qC=v$�M�(��at2��>{������a%��Hy_Π��)��aY�A}�Bc��\ւ�G@�XD��L��2C��PQ,1Q��� �t4R@�Nkn�&T��K9I��e{��v�W����|�-�ˮ�j,[uyM���@/v���݉�*�KDi)��1d�-A%��YǦ�\C�j��9ubJ�\�j,7�W�L�y����{�m_�*��
�cy��>ty��-^�u �ԉ�Lf��S�V�lŌ�<�"�TC��Թ�,_�?����k�uC�����w�1��g��mK� M'�r���"�*TN�rM�T�`��8�� W]�ĭ��M>X�����t�kJ����Fݜ��dѲ5kg:�����_W��x�>p~L?����1F�w{�5��`��ӣ��2���.�g���tv&�L�<��C��?P�; �9�Y�&(�{��7���<Xчv b����$n�åW4`��f7٢<�]�\�ax"@w��7N��=�a��"~�"�qa$]_��K�� ٴ�\F���Ӣ���� �YC[&	~~�tj b�s����*�W�\�#�>�7��*2J&RIIt(�B(�<L�"`&�}���G��4-���{}'^ݽM4!��6�(�4�r�D�>T��B��g|�9�L&�I֜�@�!�5!�
�,�~��k�_*Q�XzB�*H��@7���4�( ����c�j�k����j]�0TNf��V�UI�ն��bs%ѓD�g:�V�;#�.�m����
w|�+8=����)���%�9#@��Q��ȑE�:è�C ���G�)�� ��O���c�a�g�.�s��R�$��GAo?Ǒ��W�oX�|����;z�а��WF�8��8� �s�����
E���l�����{wNb�d	ٹi�D�    IDAT,���楐�^@*!��ő �^��5�Լ4���� ����>�� �A��:4h��qa
�.�Ǧ�갤3��������^�ap,����\��Q�$s?�eGJ���MFmR��S���YH�,ؒ�&�a����n9D�(D{J��j�_m0�.���1E�S�<�!f�{�,!'l;���8��+����z��"���Y,Zv1/�� ���+(��Z��V�<r���?�o�0�D���� �(���lR�L����gפ9)42��Z�W5�jny1�ʱ��� "#�y.���Z��V��(@ȣvĬ�aTC��+?����Uһ1"����S����m/?�;��e���������_�\Tr �kj�_�G���%)N�vV(��Ɂ�1%�����q7���QsΩT����>q��k�w�AC	A~]�p�l>��Y�l�%�.�ؿo��믿n: ��9����y����{����=���[h�tn ����W_���<��	��Ԅ�֣�ђ2D����1��Bzq�&��1�S�/ct�(X�TuRZ� �zs�Rش�-Ϡ��F���
�^��08��䀇�!�y��/�j��б40�ܠ,J�NQ�"-�I�� C��5<a�C.��c(�B��_b�\Y�/	{,�t앑	Yd̈��r@Je-~� %S�wfb���W��-5Hw#Ãس{�>��*z�۞��*R���]Ud�j�-�` Mͭ5?o�R�B^_O�<��U�>F `��9a�1��$T}��̵)�@#8:��x�r,[�*�ؘQ�����slPj���2	�ʹYs�F��_�~F9�#������-l�����Q�oI�e\d�b�H����	0���˭����e��޻P(�Nt.X�v�G>�����
�]�Y~v�kH���N�X٦Ɩ������ڞ~��+�p~�������/��_Ow'],���c;VMX�-�a�%��5���+s�3�H���g%Q�8;g�`h4����qp�J�� �VQ��P��"�o��nEW^�EWG�u6[D�Э}%��#>��<���,�"gF/{���B�`�u�ٌ�l�"�e�*�Q��WQ*�HCUZ PB�O�����Y�U�#DD����D�"��H$E��E�kg ���,���P�ݿw7v�x�q���P =5T1T��z��QS/��Dd����jΧX( ?9��幕/�� ն׌�����u��~���Wa0	�.��C{g��Z��p���g!��)�@4	w��E!�z�\T^�
����"v�K��'?��32��Rw��N<���u*
��B�Ǡ���������_L�j��sj��v��p<x���{�q6^�죟�쇖��h`�%\/c�4%��M'�v�,^�zF���wrǎmJ�!D�+�9���D��q���|p���{f7�sZ��\�^�4꣮�F�Ά�s�i��NQX �ﳓV�Ra�l�w�@G~�}�|L�����j!��	�v�PȻ6�,4f)��Pq�#�]D�@�Q��!�f������Y*�,�s �ۜml6�D��f3�a��8R/��"�z�+��h($ӆ!���9!#*��PQ`c�\��
����B&[7�{�������ņ��B�ݶ�Ϫ0����'*TBqL+Np��?�]+����� ��ُ1x�_B�BZ5�!ΉvH�d���KN5�r~���Hł���Q'01>������'f�<���{��R QZqcc}j~U��*CD��U�s���߯}��#��o�𒷝�u�����7���ؙT�������'SAJ��ȽA�W#�W�%z��<������@���#�6�3�x٪D�u�_���sA��ѡ���c�y�	VǼ���������x3Yr��p˧>����R���/>��o����cy�A�	 c ��!�+ଏ��[`\vaz[��W���;Zm�>eq#>2I�t�+k#�� ����B�$m�@��fd[SH�ˇ�,2�M8�����J$2��a|.��}�s��æ)�"���mQ���_�@5��?���2�\+��MR&��4*}��շ�1���!"|��
�J�*	��/΢� ��e����2�����zs8���\���5�ϻ�]��* aX�6�c���VD�j���� ���ĵ���fO�x�����?@>?!�cD�D�&�W^*��I<S%0�x��<~�2F��KV�Ņ�ɩ�����q���#܉����f��Xql̠�9�r^���Y�|�������Ψ���?�	��+�B!���%��C#�KW��6��Q �>1� �_�Su����}�(.�[{{O�3o~WkǼ�5�O;:�Z��U�L��t�ɾ���D	���%'����?�����Og:�W�q�kO=��т��a��P�p
	��̀��o|���쯇G�K�-Nu�^�±^#C��>�UhZ��u��d*��& ����'��i:���#�s�w�����d1����xX�"���ӰS4��P�2`�EА�":��S��,��Ȁ�R.��2�B�7��Z7@�D����<!�Gee�E�J8�P�(:����s�@(4,���ļU==x$�C�p�@q:	wr唈�OTP�6|_t�[��6G��{���2�� ���0����ldlԼ���y��X��!I}c+��gלӉ�G��w*��G�\3"F�W�C<���7�+1ê�����k��+^c
���\��"<��1��P�6߼<����Ȕ�����D��	�^�W\s=�|��X�bFTY�G~����_���}M��Ѩ��l�C��hpY�ǧ���@ ���r���DB.rB@9TS�!�qׁ�_�~��_�uv�_,�Z:}=,�]K�~��_���W�k�+/>���g�x��D�mp���y3��[�n?ː��.�x�c�{'�o}���@�<�[��pm�����c��L����O��� �aΑ���N΁Ӗ�X>�	P���jN��=	��p���}.�M�(����e&�^ 6��#�V�L&Ơ$?e�Sa����*4�j�#��
��>pm-�Q� ����$�/�A�[ �� �n��F��?:���ߨ�5�["��\�?��O��iz���/l�O~p�8%�-)������ۄO��s,,�1=�J�����	��s�<!	d
B��RE5.�	�/_I��긊�Vd��W���.�x�k�����_ޯ�KA�jm����X|t�:��*O���o����?�|��>�+��n���O;����C�����p��^�d�t�U��(?o:4*��+�O4V��ӑ!��� �[ ;A2>F@�w±��9��#�O������I$�3�s�.��a����_r啳f���=�4ѹ�h7�������w�[}�-���Y5�4���L���_^Η<Vt��(�0	��8�����[d<�쉗
[7_�M��-�$�,J��	��C���`���$��R �8H�	9H�rԮN(��u�27	�12��8�.��H��~�D��d��#��@@�^ ����A8�N!:b������P�<_v֓�]~!OI*�o{�	�ӡ� qc���2������@��Ń���	��H1Nn��_; ��� �º��������V��ϟb���@��&N)�n�Tv���Q6*�N�ѵt-6��&����K}�ص�eM������j#��˛��z�x,��E����z�
G�D�kG�N�K���e���(���<��NK��Q��6>��U��%ǎ1�	s���߃?��ǟ|��X�rru�ϳ�x��{��_�;:�7�(��������T�Sk3}�nX~w	UE�J�P�����*T��77O��r���~�)�ɫ�v��o����˦'�T�����5n�xv��Ž��<966�*�d�X��i�*o��d�?������?>c�_���מ{�ɣb�
�E��8�����*������O�1��G]�?R��u�`Y�
��1��n�g�@Y��&��z�
���,�܊��5bv�����[����I�[�Ȩ/��a��&cy>Gҡh�٘��`v����`�[4n(|��T1>`|"@�������d�q��x���@���Y>��AD�G�$&����!��ŢH'(����GB8$�Bv%ds:�ªah���{�Vy�x=�6v�`�r����Ԣ$Z=�v�t:�T����Р�OT�`[Jy0�j������ƽ�ewZ���\�����C@����Ss��W���������M=V����e"A�
�Y���|���\��������<|�����gq��~���;�h�~����N��(i�9"����h���$�)��(��>!���(q��=!|b�K���O8���w��~��������t�;���7�d�n�������v8�7ú��c���7�m�L���Nn}y
�_����
�s"�W�<�-8>�Ձ/}󿷯?���?�zml�-cd�	�&�kO��,�!A���c��< ��1c#R���ıc%���"C��bp�G[������lX�����H[o�R��;�(�����(��e�Z?��N��������0�`�+(LB��<�R*K�d�^_($*g�ΘT��ߏ$u��o-�Dpc����@:�-����߷��J��]�*#55x09W�l\Ei����JG @~r#Ã��+�_�̈�+�K�K������֢=G�#�3�yչ ���e��Ŭ�ӣ�+׬Ń��73��h���G3��+���{�ۮ��j��V'���w}�c�e>E���h�yF��s��3M�$���WD�F�� �x�)g��[^/|I�v�^��%�N�ŢM�������~���� }��?tf�r,_���LS����cIZʣ���c�����g��7��ǯ�z��\:�q�������[O !� �����?g����[t$���=|̽��86���7�����O��=���и,�L�*��`���$h�L�JA��V�!�`�>K����!|�aD� 85�aV��9��i��f\H���^�ߧ�Nh�;�p\WX�("d�:�ER:��<]��Ո��߹�,K��m��9|�����!s�qh��6D,d(�T�޵/b�A��3�� h����t�|ώ܇ɉ��X��V����{�R @���llZ�jq��xdd�㣱�!1}~yˈ;*�b觙GE�""_�0X$��>.湙��@��ن����� �Z��M-�OGN���5a��$/�{Sq�!и'@"�D�������-O���/x�_Ǟ��h~�cK���5c(I(������kb���? ��@"e@�r��S�
��1M~�6w"L���R1�R��@��o|�w��n�ȧ�i����	uR�8�nLRbYN�E�j���(��F�������ɪ��_9�sѢ����˧
�� �h�_	��Y�Ό�)��������[�䟒	������-c]��uh����1���(�/ Ht�1�q��Iy~�S% �j'�@����]݄�.�Cs�-�D���щ�O��}���']�(�"��x��D��H%��hnp��h#���HPe2NDc���uC��>&�n��R�OE�J7 R�0Ȗ$>Y6A2e!��H�-8�ӟ��p9C(�!-~K�԰'U
�q�!0�	p����;j��݇t��e�Me�_��OI��A9M��`ej ��E4���y5�424���}1�#��$�`�hA%C�V羁iCy��@D�T���Xz�b1�o���[.����2��/X��6U=��!OE��sP�"тk��\�}5�d���|����~����+�����̊�DJ4��kgh �~�~c�R̸!��S�֪� %G	��� ��£���+W�eXr	|/�r"t
 ���p�ѯ}����������{��L�����N�<IB�Z\�eY���0���;7nn�.]�a�迯����m/i�����* �9�8� �e�-�Oﮮ9η�sVO�i�?��(
�>�_T���	 c#J=eP�б�-I���'�q��a��x�>��l��I,��	��^u$u7?�d>4����2�/���E�P�%���,�])!Z�6���\o���F&c�X��˜��q�!�� �b�c���7eg�1
e- � �#?���2�錅TZ����RA��0 |��\b(<�� xD�F��9���������(N�8
.��&H:@"A�8���IƊ�3��v��~�/��j۬N�ΪI\F��D`B"�!���4�ʨ��T�O05�l���[�r=����D`�q#j�����kܖ�6l�t%����Y97z�0"�x%���~�zcMjZ�;�>�S'�N;'5�<�(��s�����g�}�p�K#�h�Y�?���ԅU����W��G��n 7ߓh�J^�*%
N�m`��=֍�;�o��-` �Dj��v>E�X����~�o�}����?��]/������'������#�7�!iCV�B;Sfa�9MvW��� ���^w��k6�� l��[_z�8 �%�[��W���9���>�:��?^`s&G��,�.΀@a2@(1�i�Lg
N�A9�w����XHdlX�ڰE��nI���<�R���~Ra/`�@��Pr�F#�/��@��՘��xE��#����,�S�7���52o�	��f�� H��F9�qx]w �4�t#���5K�.���Xsٴ���{��?���#�ud���$.˒%�d��OE�+�(����+��~u��;&�>��y�1�*7*T;Y�;�ض�c`F�ʈNʡ1���P-I����WK�i�'������k��K�?���X$�h�:b�Qԫ?o2����Z�G��{hn�=%=1<4�g�z����⟿�w������Uu�cE������{��U]g������[�uՅ��4l���b�v��$��<N�؟�_��S��`�16���j� I��:�\�;�N?m�����3�E�b�f��̙s��g�����f���TX�4�u��:�5�5��h~�;HZ�&���I��= 8�y��/?���P�?���B�2�#q�����={w��{��u_[��}�;��HA�۷n���'6��'w,~�_�_��N7��^+���H֭{C@���ӟ��ο������?��⵫��% �Q�#Q诉^���ބ��Z�1 G���-?y��W��oK��测�8!�:!�֑�=5�A�P��y��=�ה�k[�0n{S�ֆ�S|0������?j���׷װ]�U6@���VK�_����ђ�
<l������yc���D/�+1j!S�O�pAH�,wdJ��YJ�@�}�$" I�����MD2F@���8j m���1ב�dZ��N��:;wlŎ훤�fS�P`Cʝ� ��p�X醖�&W�}�cyoi�#�n�g���aY�"�Fk�����`�@F�#{�ݺ-e#��H�?Pt�>�V)c�ꥸ���#��~��+����JKQs�� ˚���`����N�������Ċ���G��'NEFعsV�\��KW ����oQ�ܪ��)�V��|J�|��t ���68ҝQڵP��$�/>��G�������V ���x+�\�\=������}re[G���&�q\��
}�}{w�tBǄ����'7�>�3ν`���-^�c���n��H]�Z��*R������
�Q#�޶yي���e[��Jr�E�a��gt�ka�+	X.�@����s:�:��Z�_��{�'�1�m-ȍ� A ��������0~����jؼ���=!��D���r�r5F��ђchm�&�@�v�s���T}@�V	� A$�,k;�b���=W�!g�  T���0���.�"��RJ|��LԌ���q���j��	0.}�S�;&����Nt    IDATٶecJ9��j��{�b1��'R!8L��-��v=�Αc��I H+�����ha}��2�Y��
f,���V d����0�}�Sd�KK���J���+�`��w�1~u�]ig@}u*�����u!u�D*�b��Z�R׬���^Śկ"T�&��.2k������*~���l0f ���l܂^�4o_Rߩ0���92׬f��' ~�8����#s��s��r"� �QF�
�EI�$F�C�$�j����X��hI�� 'DĩBUN�xI��X�:�̅��{L���8��O9���%/�ط{G���:qT��N�{���@3਒3>�m{��ձ��A�[�T���XGˌ<�N&@11Z�8��cμt$ƌqq�'��E�X��!�^Y���!�CG���|�j+N���ؑ���Vg
��"�?b�� ��"T�δ��	�����p{+G.������ͯ�(��J�A�v������6�]�)k9��LN�=B>�������V���Ʃj �	�U���'�k�� a`�ٱI+Y*��0�<|R�r^������v�&t�:�P�A�R lZ[��X�f~V��mnx���*PK�Q�����3c� B;Ү1 pk^]�u��s�8��wY���?��d\�5������c�k�f�u�8�ߣ^U+�F���[���*cm�3j��57���s��ȴ���Z�����N����W~��}��X�ܹH��DTpPϷ���}���Nr���>�e{]&�r.��.����qu��y�(8N�O�U]� �9��4,��aN���M�z��W[�a��}�=��)Ȯ����#0��&p	�m۳w��R�:rt�ޭ��À駷����1�� �	xÈ�y�;����z�u{[�ձcg�3Oi���hmw �ґgpp�T�:v����P�����@%�VߓEzt俴�
�J-lI˧5�N��b�A"-HUVX[�1IWA�.���k�T�dvcdR(#��r���9�Ϥk C S�����x@�� �ڱ�oX���h �s^�6���!b	~	,�]E"��C��@_�B�9����sJ��(hf?�:���g�Zs�`�䉆56��\S���TI"�j����_�0i�T�w�X��9�2" L�'����A�u���\x�J'�@�� �,��)7��"Rn+&bJ��L*������ϸ��0�r�u��Q�,��V�J���d��O�B"�0BL�����g�7��;W���,�JI>茸�(�k����#���>1� �8KBN�2�J>�>GD����(�f��dβ?8����]��\v�p;.Z��W��
 D����P�s���&pT��޲cKO�3�O�G�B�� �V���
`�#���̱t��{f�Ӊ�c\D����E��\�o�"�L�t�Xg+Ǵ.����<�E[�L��77 �b9¡�=�!*��T�����M]��\���s��:���z��$�M0���	���r�Z-6�
 ]�?�O G��뛝�ˠ�w��y�ϐ�3x�TL�e�n�&�Q ��) �u�������Z�B2 H-L-�q�V ���vw�֯�� y܄�S �=طwO��g�9� ��F�bePS�@)[���칓u
�ya�NR�ӌ@b��+�.6����/ƤIӥ���=I�gD�����e�H�&s�\���w	�#�k�����r�����,��a�&X�����?�d�>�@��9S�gj�j<&tF8t���}l��͊������#p�}U�R�;^/N�G�>��=�������2�r}����}<��Yҗ���z�P�tD������W^4���w]w�p�ժ�p���l��9��CTqU�T ���?�d �Z��_�? `��O/���m�7�occ'y�qB�2�6G�ɻtn��Y�F�x�^)`æ
� �����9�ᢚx.!��K��  ��8��B�1��B�ҭ	� A������X�� ��뛯H8�*#Lp��@���D�!�#� #�0 8O��3Sf� �@ꏶ�OW6�7z�O�X�	�]�W� ƌ��IS��رu굚� d`ҋo�5�w6�!���Y(I� �xҔ�m߶{���س	�J�^;p�]m 6� � � �:̺Z1�F��Oqؒ2�|�KX�|&O��������n�CK���1��� י�+�05\˸�Wa+4��i�A�Ɲ`�/K�[��̜$�bU��\E��S1:����y�@�||Q�w]��7s �y���e�d1rZQO��
��eA�D,P���E�#/���Bw��t���W\�y]y�p�-\�ܖ�f�~OUNT��1�𦔦p�˞��w��pJ�����۵���	<#���ypF� �7r	�NlC�(�^)`՚�{#��z;��9�G�H�K�iU���$Ж��S��_�QUV?���A��#��>��P�e��) 3���u	�:)�����Ty���R�����X����&�s	�1XD!�LUw`��)1L��ݻv"���_ߵ5�i�86���(doW���
LR	J`��)9z�y�ٵ�l,j����� ��I��0/c��IZ�0 S��i�b�T6!aN��*Kq��}��!���y�����\����[^��n;^�9v�B�����,�u��
h&ӄRK��\s[�0ʉ�K�9C�M���Mj�f49���ȑ�h��t���b\k�d�Y����:�ۥ�$@yIPF\]�'�F2w.�y��	�|Ѵ	\2�� /��M�ޞ
 0���¡��Q��5F�7����������̻�n�9S'y�縙���Ct�r�0�ڦ
�m�[��$gh��q�c0z��W��b�� ��C�	0i��)�<��Ҳp J,�]�q��,�W�Q,�I̓���A�Z=A�gp=��`�	MK����, ��V��D�+�)`�<6Nd�<b wbp�M��B�o,Y�����Hig�k_���e`
�7�������
d�u�V�SA�<W[��-�̡�T��.)��خ�9j�����7o��`
C�C�rb��V�=�ؖ~�|���3;�1_���<� < ����W,ƙ��}�;.�;.�K_~^~,��|�j���x)
��Խ��u5�������k@¤��pC񛅰s��e}��E+�z_�M#�K"���/�=w�A�#� �$�t��(A���� �b�6@���@���o:���y�{��g�z�tgrU�Ce�%��*�;��M�@S8&�?�T��wϙ��\��Y�r�J=!r#�-{7UP�P���v"?.�r��V��lǻFr,��5��(�6���`o�i]>Fwr�ֳ�!��>��V��y}EB���B�b�Z=��~w�ge���b��ҕ7.�8��<��@](E 1:�1�^��p�RӒ� ԍ5�5�t�{BhG���<]PH`��.�~~е�+���P��P5�%IL��!���L{b��Y�J�p9#���H�ۘq���W�Ѓ�۶�q4a��b������衡nq���(\r���׊G#�0�����چ��R�4y*.x�X��y��B�Y
�a@�56���>�ׅ�츈��0�Q��4�)��g�~����oJ�#�A������}��ab��� a����y' ��k�����3Olܹkw�s�BU8%&x<���B* oj��A�ǔ|j��\���eKJ��cH�&����6�T���{ѿ��8 ��	���q����wtbr�b@O1��mU��^Cwo$�����iAꠧ�V��#]�顭Ձ�V	Tk1����CT*1�a�F�[7<�o�p��G{G[��s]� MEh'�	*��J�j%B�� 7Z�R�P�
jL]�Gc�=�5iڐk��W@_A6�I#����*� �tM���o����Y�꼍�:q����=�vb��͙y�׀|;Z?��h�"�Ŋ��r�3���zH�L�K��=��F!�	�dX��<��=t�ڹ\��ӎ�ʦ)���a�4늠욥�F�]��J�?d}����Ȗ�M� ��oTd�t2�YZ�0�=��D��9�A�r!.ybE�t��_1���w^y�Mo����Z�������Wk �$U�P��T�8�"䵤�ʫ�7��T �1��k{���~l����@��u��f��kF�}u�z�k^<��]Uy3t8Z�|�y^'�u��~B�>�ZM�c_�;j�����Ȗ��-Ҝg�%�h�5���N-yn���D�������lƣ�T� �kdn|��@KGKG>�LJ����ı�u�kr�JU6��B�n����V�@��c��m��ۃ�d�ښ�7�D�Z�q$�	�$�J � ��­��9���S�Lܾm3vn�� >�u[��ʅ	����i	bۇ�x.�M�@� �Rh?����H������a���C���}.����Le�D��"�l4����Xa�U��)�6���J�߇Q@<��נ�����N�Cg-�@/8���uC.�Q*7_4m��G`��a?��#�����X��8�ˉ�2�Q�ʭoβ�IS8esm�������T�߻��3�z���f�ݎ1]��*a�S���r��[8��n��g���Z�5���bǾ:����@o�Z=1�t����UM�����1��AG�����(�x$P��(�"K:�/1�1!��ʔ:�sS�q��*��d�.�Z� B�|�VMP�ʢ>Q(+�R��[9 y���&c���\�;�`߾]��u��LkNQ$���?q,֎G0J ��6�$L�>Li��[ D�T�����2c�9�"mL�l?�#5����H��a��7d5�Y0�)�k��� \~�{0q���T��ľ����	����6e�Z�y�^��=�@�������Miq&�f�Ge ������ZQ?ϑ|��Ņ�G�Uur�7�t�G`�?󛍿y�Wk ��*CR�))�q\�G��G^8z��?�OKS8e�$�;�����[U���� �3�!����l�y׌F��/��`甆���8:��x�im���v̘�C	�#��_Ƕ��
Q��GZֺ�c�^GGg����/s�5�E�J�bQ2A �b�|�T������9������.����-L!�.z�p�*{����Rl@Ӵ��Q��1jȵ޻g�*�󬣼�m�[�?U��l�5��gZ!0�7�L�<�b� ��9�8�ּU�N�{ ��	]�/�����"���yn��JMwj��ӝ�Sj-�����Լ��SX��C��y^��o��R`H�?t6�0
�a��Ea,������j%YHJ	��~�����`JyЧO�a��93
�j��)`$~��N[ܷ|�[�b�C�G�=��w^y���ۯP���ז��u�0pb��R/9�J�Y�.*��Q�ьeo~�_K3��9s� �����6e]��Ӊo�ȷ䈳P`�4�]�в����Kx��LXQ��@�8n�`L��%g����a��:�J�@=�Q�&���y�W)H\c�C�TcT*	"O�%�b���X�y�R��<#�`LG������ �eCB
�Lh��Z� 	���T�>�4򾒶o����C����{�5*�XJ ����U�ϒ&v@��Ֆ�����3N2��P����[M��[׾tP
|����Q��@)Nh|&Xp����]������0�pR�(��߃�ν�!��=7�/��K^B����E0�H:U4���Pv��s�>��兽���|JO`g��kv#�,��K7�ZW��@Pe_y`~� ����ȥ׾���g_t�p�=��k{�� ��*��䰤���Z�@P�}�X�@�h
�������7,)>�s0�� H���.�K����9��S�ӿ>�W����7BK��q�>��҂i|��9��R�����C葥���,�q�{���[tv:hks�̴9M��.P�Ȕ�JE� �\�i����KT(�@�Tu�|���UW?��h�G�=P�&�V�ݚX�O��1hk��. [�i�;�!8�V,Rf@��J�A�8P��j(�+&�ۍ@�p���-رm��,��s�
�fL�AfY�����̄7�9Zb]/Y�jT<�C��Vj�B��c�c����\��v
���CR	TV�V�L)7���I�ϲ�����RK_�Ϫ�o���A�(�_o� +`��s���# ÎP�.`��;�\�c@����/~׵��:�~�׮���_�l�~O!c(9DE�Q�笒s*5���d�M�)Jn�®E�
�jǺ�w����b�0 �Oh�9W���wt�a��~��J6l��P��0���i3�95���\��4Yj����=
���D�VӀ'��,�&�3��qtv8hi��t _�H�T�Q*E(�%0�P�)�C1ں��OK����Ǖ�PcY�5�D��	�������Ρ[�J��U
���3R���hE�[m���n�n�������31i� �۷`��Mfʹ�����ש���i���2��~� �F>v�`�q6�o+z-m1,�~��P-��G~��Bϐ�r���u���Y[!R%�`�A��Ȳ�#{�=��Nۃ����-׀�!`�6F��*v���!��������C��\�c@n�dl�57}䏧�����ģ�]�l�N���*3��è�q*'�UY��8�[���
@S,����w&��?�����/��!PAQ��q.f_2��8o;��EX���E����'�@[�a��O�1q���6�+o��z���=�!
�j�������!�chos��%���z=A��\�P����D��� s3���F`���3�������D�q�`]�^j��Nr={{����k�k � �
�No����0��ј;n��"����30q��;�o��I������d睂����oC3"4�u�et����A���s��_��'r]Z��q�MIӤ���&�b��~����� �־�ߓ��ݯ>��;�1�8H��gV��L� ��I/�H>^���=;�\�cD.��S�_r�-n��{�����|%`~�u�Qr\�g<.r���������Д9��{*]�lx.)��zoxWP�P�^��F�0n������3cF�ز��WV��qga$Жg��]�]̘�c�8�y�@H7���p�7B_�,��5��Q̜������yU1P���,$T.����R�z=�Q�:�[H�ע�D�ʜ��@>ϐ�R�_r��q	2�p���S {����� ,k��:��n�dJ���k`̱�-�L�c�k��w�� _[s؜��}�)�QX�.8L!hDe�Z֟k���!����b#�Rf�pF �N���Y�S�܏M��6 p�eW�ڛnE��Q����{�n���XHXm��d&h)/�Uf �-`�>1����XhF�#���a��:�.O87?���ǖ��y�ǈ��g�w��7�v�㸃� �+�Vy�����կ����:TtYB%Q�U'�{KZ�@Sh� �v��}9��a_􅤖��Z�}��w8�qF;.�z4N��G-ذ��y+��u  g@[����c�(�'�0a���<g�����e���b�0&F�Q7EMGs��ϧ���4�JH˷^�E~J��r�0LL��Ӡ�>m�@��9�,@��!���{iq(�7	��Lr��߃}{U
 Y�D�?��BL�KF@�?�_�6�o���X�v��S
XR�mta]��@��_�y�ڠ�R�
����]=���І�L�;`�җ����> �?��ν���ˁY�ǐ^��0��hfC.D��o?X�r�,� M�tZ+��RW S� 	��5��_�|v����cDn��Y��П|v�q'�8ܾO<���G��*��3^�=��s�󭼒n=�����Д!��^��*�h���cX�}Y)��t7J����cf�q����Fc�Da$�zs;��(UpIg�    IDAT����FupL��c��m���WՌ@O�b)B=P IZ�M�L	�+�:;t��� M��m=�T�1ʕ�ZZ�OX�r���6�-�z)�
�00h��Αc0r�е���ڡΘw$�\�*�>b��Ϙ~���K�!��M �|��_[���fX[1�N'_[Vx��MY&¶>5+`3���9N]�TȀ>����4���a�U�ד�<�K���!�h։���~��?@F)�ߣ\�l ���VX���A�QJg���Z��C��f��2�\E����Kch�я�!�b�!��?�_8����+������9!v	%������n\"�W�G��d�s�U��f`S��)��U0w�S'l3��|o!�j��Ҥ�]�rh�p0�vt�p������ر��=aD���V�%D j���&������Z� �>�Z��u���=Mq� �H��U�`�.��!T���#��HF�s��:�H��HDٛ�K	��N�c$��cY·��--mC���];d:�B-L&z[�s�S��$o�j�ֿڕ!0���0����-�_G�LR�ǯ}��zHloX�L�����ЯE�ٜ/�>�"��}����(S����l�S�ޏ3�~Z[��X��?�����W���`P���
��Bb��I��T;1��=�k5���%��e�k�a8a7gxJ��{��]	�x�I�?�W���O�_��_��{W�\�t���@%�P���qyщQ�^=�#:k��N���&Д#��Wm\Y���L�ro=�{��b��}غ��z���9���6\vNN���zB��WG) ��Uyr9���\��M5��T~���?B��^�U ��F꺲�O[���V�Lȱ��$���{��_���VC��'�(t4�^��]��i��d���-yxC4�B�פj���1`��Ѡ|�g�����eR�xjq©�4up lX�f ��2�܈����^���bW�jH���r��e��N.��5���{��˸(����z��x��]����}��y�Q����a~|�U`�%���Η������ ��]r<������E~����hJF��s����~�v���G`�/�Yq߽w.��C��Tt����y��9��؞'#����ki2 M9b�|�k�����ٛ[�w��R�>�i}y�kk�8��t�u1���S�zX�����BTj	�9��vG"��䨛�+�����z#	�ZǑ
�������18.P�� A	YNW�Y�t9uy类����J� 5�D��~n��!T��ze�<�m����0 !���A,�}�zc�#�BH�%��YC ��c����D1L:�mpf�V���ZI��)����Ju3hϺ�U�)�[k. ��=5Hj|AN�o�'��G8���]��N?������k�$L���L�da��I��O���}�J��l�x��{4�~�/A���� �p'�O���n�[��H�܇/������/�����sO���{~���$\P�a��9��`%ǣJ�\=��)se��7p�o�4���^B�� ���U��p��#�uce���E�zo�����\U�w���ﭣ�?B����cD�l�	��0bp�Z�r%F�
��P�D�����4F��,�� HP�'견�����عCiOt��#am`P�bD<8� ��qe}�*�=�dOwF�!���h��@kO����id`�K���Z:�(�����n�8�k[�%f�2@�l�ץǷ��}��sk��m:]if�eQt�HN�`������<tN<�t~��kkW����;�
�cD�ܿM��V�P�X�0�Ƨ��.�{�%bgr{�g\���p��m7�uڇ>�忞}���M���K�o��� u1�S�s��<�s��;~\�����ؓ��Y���� 4�!��W?,6���S��rB˙����-\WƘ6�Ic=?�G�'�lw�����1z
!���� �%đ�ש���ː�1�+��0 -�JEF���l��[�	��U��%��t-���o���ug�8"�	��TĽ�њh�3c�����2�B�AZ�,)��R�Y�>O
��
'��*���'c�̡k�l��:�Z(M=�F@�P�?��o�����S�a��}�$`�}� �g�{��~n�(�ǐ�V{����1��q�>1�z�㸸���`�ޝ���C`L�?�y� �	����]`޸hx@2R�(1&VxN��s_�9&;���r�����}�%�\7ܾ�j%���X2��'7�m.C�!���(��Y�U��BP���ɹo��?[�
@S�[B'�Y/^�yE���g����)S��7��𥯕ў���`�x�K�{(����j����8�.�� �& x�|_�Z�Q��C	����0�2U�sy#�U�H 0�s�\�0L�a�Vz�}�פ}�\�3R����0���h��j���k�'��Xۀ��M+e������l�b��'�1d�0��kk�o��5լ�g��5����)�%���Jd��෬v�=�E��>�ި�S<3�B��� �ν'�tN�=�+`ʴ���O~���X�|8��S�e:�4�Pl��0m��Q�ɲ�i��3FX�p�d���_yrS}�I�2`�����\~��-� ?��K����?O"�T�\*p} ��+���s��[:�ϖ�Д��ЬMu���A-~z�h��c.�'�g��V/-��U��2��X��p�7��^���%m>/�� (	P�O���sj�՚�8�0F��B�����,i~�G �� �D�����D �� c)3�t��·��! I"��G*7�>ϲѷ T:�(dH�$�!��	Egg�L�9���ױ~ݪtmU���  �Q:4�d�Z�(� ��(7�/g�P/����/��������p�$M�$�-w���/����ӏ?qȬ���~>�g�;����V��P��ߝf�� Vz�J�RdC�\cdO����3�3^8����A'�����k����p$�>������o/D� QA9.���Y�!Q���1OR��� ��Y������ 4�"t�� �2�ډ}'���f��?v�{��,_Y�5��r�lw0i��|�p�P��R� L�G���.�q��}_Z�\bZ�V�2�?��uY0(�3�B!��B�x�Ba?x��01�B���I�(z+�^ ��� �82���%p&�"�A�hs���HO�)k�:J�D� �aʴa���b��� ��Dp�3��k.歍��*��рh�� s��]�� �H�0���8� oM��Dv�t�8���`�q'��q�.��*�q���l߼DLZ�,G����ં%kД2d�R(l�G�Q�e���Z��8�$�����}妏|�/�d��=���~��<�� ,I฼�0*��^r�����[���qtP�Z�
@S��Bo�PP�w��^����mߘ9��bu�����C�F��� �&�(��9XG�/B�&}�E"��0��t�!�3�.��\�+��H*a��,��1�.��<����;&�zRو�Q$	%�<��/H�8�i0:  �8���9׀+�&��|��Hg(��;�i��>�h��O���f��_�f�AF��W�|�n�ql_z��^�+g��P{�����g۬��1�O�7��B`�T*$�j�dc�5?N0��y���5q
���}�/"�K.�q���}�7�����:��rW�C �$ݶ�X��u��$D�K���M��{�\ăN�) ������O��M�~�/���9J���`�����7�_��ld�qJ�<�z�K�r�[�� @t��H�%�4���AB47pgϒ�����:����]��%k�ش��B,��9�>a�8�y�B1F�#�z|W���\��2u�`�!�s���l�[O�zו�QAsB�.��A�G�9��:����'"� D,�Zxh7�c�	�j*؏q��v3�$��.���4f��8 �f��)��pڿoV,[�Z����R��K�t��DX@.�t<;@��D�73w �V@h��3�ٙ 8��=��u�l�H��3s�W!��	=.�}`7��;5z�9�% \v�  w}�رi�)XE�Z�(G����bt=��f�R!P7gx�X�-�]�ŇM�)�7�1���ٗ�{��=���l������eK��HD9Q���/P�W�Z����U&�����Д7TF��~͖G���C��I��?����]V�^������Z[8\����Q��(�d������I�g<E�l���"�k�DFҊ���Y0H��â�tg�BȺ�� ��\ �H����@G� d)^cj���y��X�"I�([����	��f9�5+�����uj�֕fMJ�~��/��U�o�/0�ů��L>�0�3"�`��� ̵��5� ��k�DRr�����O����0}��.�w]u������n\@�z����	�ߖ�!�I���bSz$~�z�х���@S�|�O�}���_�w��7���j%��?�^�ģ�
"�.Qw��a��()��W�՞��̣��oKSh�.3nغ�=����g[}��v�g��r��.�m��`!B��p�I0�38\z-F�&��k��+S ]'���`���1T�1j�QD�d&L�����Z_� {Ja3���`�9�"�@<L�$(��o6S�����e�\U@H��X�8�މ�'� �|u)*�<7Y�N�A�tb6�V��L���Έ��5������ �p~	�LC�eH5=G[i�V��_��>���&N�������64���ˮ �����k�J��6��a�2�� �"��O��yi_3�����c��������8�<-���?��}�w^��9�~�P�O��zq���~��J��P�g"�{��mi* M��뿴k��w��m[��<��Ic���sRKn�� ��8��3ٖ7�ˇ�3D�	�%��kW���}mA�g�%p��y�G@���c��(c��1��!o�*�N�ʓA\Ǒ�ù*"<o� �q���\4H����
8�_, KE��4{�Y`�I�:����`ɢf��՜@\}8�퍬g����5�c	�U�(�ΠA��{$��22�Z�sd��l_��\��f��	��?�5q
n���A��T<?�{��g�]�
@2�C(��4
R�.	,������;�>~ŏ�-k6�9��Ƿ^q��p�ͷ�>�k��}�-yh�}+���w��N�C��P�I��{�[.�����"�7���� 4�X>�i���� >�㯎�N���N�37��-yF��8�"�ch�1��aN'CًQW4$��@�*K	�|��OT	_ϓ� 9_�R����,�#���8�)��+Q�s�`��ќ$�\�T��hH�u=�[��8�@̀�\�ìVM�ghw3�N7	S�^��>��!��zu�/]d��V��Jo4��95�h�F
�D�eK�����hZ�hy�R)����5��s�j ��[��|�� �V��ꂿ��w1�k"�������s/|Z��q�O���~�@ҥ s4d���X�Ę`D!���̓�v.�g�5�XM����^y�{>��������qͽo巿���� �eN(p�z]�^��)y��*pt�?�T ��(���s������wW���=��q����C}?T�P��yOE���9�9��<GM�	đl)\�ŪL��X�ɜ��"O���T�`�S�7�e��(�y��ŰF��e�^ �:�8��F�+b f@�2]��
��4�MjB/20Ux���8�����򥯠R.g@֌����94���Qd��8_`�@�(������q|���{�����57���� G�LfE�A��o�qW]�ޡ/�ig���_��7��n�kE8LW��PM}b"��Z�?:}��g�HR�)G ����']t�ͷ^r�-�vM�>t�kK�0�qϝK���?�߻/�Uϡ�C��]�CNR���E�����U�����oKSh���̙�8��O�0�"��r�nlo���_�Q,Ǩ�"0U�O�����]��?A$��@�g�\2�j!�"�e'�H�ƑV�D�V��ƍ7 �(O�܏j��C\��IS̝C�C �ɚ�+�� ���=�B�s.���5��s��X�h��D�k`UV�v)�9�q��tf�r=M�� ��Р�^B�&p��:�����y��6Z�r?�6�c)�)�*+�I%�����q����8�p��3]��O��5�<�T<���X�|(!�\�3V���s~����
{Ʀ �mל�u�7�z��7�r©����w�ξ{���+���/���$#�]����2��R\p��z��7 ^{��?�T ��&�O|�P ��;�r⋎΃�ǅ`�tB�����V���� 3\�F�z�R%F=H �;.'���xU�\G�sec�(J�@J �!;�� ��c$������ 
=0a�q�^Ӥ�Sa3���M �-Tp!`
�d@�Ny�'Ȟ��s�NW[�h>���9W���،����t���}Yd��;=�d��q�"�>��e���m:V�R�,�B�>�ڷ'h+ v����rR��ޱ	���W��Ӎ~��!�-j���p�g�����>�K�ڿ��Ř��엶�s���R�����v���z�9�\���l��������c��J� ��:#��9�8�zKz��潊[�m����M�k���Ҕ�����/+�ί������N��jM̪�IK��p8�$�Tb���;�|p&��|^*I�(�i�K�%�rN�L�r�L���K7���W�{�\���_��ǝ4�T�e���y������b�h��H�iM���|�ԍ?����|m흃����ǚU��� Uv�ֳ^ Y����)���4/��(=��L�JJ��ǰl�������LG-�B	ަ��򵫳�V�҇�l��FRC�"i _�Z��~�b��ǟ�����\K{��y΅�2}֖R��ޝ�6?@I���ԉ�<��m�{�cW>��sO����͹�_��)�N��ly扇����o��Ҽg6��]�k9�����0�n���<�k��aO_ݙ��m��M�)oB�{ s�/��Sŧ��������Zr�{�9�,�S*Ǩ�	�X����e&U$�0�X�4�HA�3�b`*�/��5(�1)e��S��)g�7�u�r9,Z�<v��,k� ���G6�H�
�uji�����}�㼋�t�%���;���I�w��2끓�KO���j�,�F&"k�ˇQh��5�@�a
�vX��@G��&�)����Q�̀�Q�� �2�#�Z��q�̱��v1&�3`իK�g�n��0	]&���L�:c�q3O�Y8�[۲a��9栽�&��p�޽b���ؒ��v�i����ˮ������ϱaĿ��]K�����s�o\{�������9�P�˻s�0��"�-�B͟��yGW��ᤩ 4�M-?�m�Ѓ�ʿ~��mOt��a�1 ����ĄЖ�@%��:c�7�uF��o��}�&�D���;� U8� �打��y_3��s�<V�X��+��uIZ����1��qF!�WO�4u&���/bl��A�~��������@�p��ɤ�^X
A#;`��l�� K���f�_�E�q0@oMB�3i����Y�/�*:�1e$���*��Y�8He ����7b�kk��93f^}і�Ǝ9j܄��Vm*��AU���x���M%�A����}���n���{ܦ�����5�{���J�~�S"���=.z�u{���z|���0�Tm���$��9��h* My��o^��}|Au�͗�=����Hlc��!�qY+�2��^O�ҷ�A�sY<��0��DF�G*%PŃg�g�V�f
�5����y�\��:�����g3Mw�z�L�!U�e��F�.	!�+o��{�'sϮ����Ʈ[��  eIDAT��].�#����MoQ�U��m����:��q)m�l�@>����t�~f�ea���i�M���=�����m���jɬ�K@>؇��q��m'�Ƙ]�r?arזM�_����pA�k+���ǉ����~���n���_j�1��9���k������z쁵�v"y����xu�8?D\�r'�k�~)��W���?��f`S�R��ou�p����6�R$��g�|�q�Ӵ(�t���H%@���7w�#�a L� EF2Ѐ��q��⺍n�ݵ;�n�ɧ�c���:�,�:�Tlۼ���3wխ0�!/  �L��{�����zϐk��������{���~�~�M��)5l��M�gS�-3��5�qX�!e�$k�@34)�`�5�j1Ez���:Y�_z���!�>v� 8D�D�1$<����/}���g���o~��g�xҩ0�����W�d��:G-vr�ɼK��9���ƌ�2u��IS��M�xh��W���.��˙����P�7G�u]�z.\7)I�Zh����C<�]��Д��̹��*�W�x~G�%H�蓞G��<A(����I"�WR�.\�(��  	e�K�������9�����1�p�)���/Ǧk�������vd�$�I��L��n�(�|�Ń�W�V���Ϧ쇾�
�(E@[�v����+�}
�$���J�:���uG��a�B�*�p#ڸ`E����:HR�J&��F*k��Ô"�lA)`�KH4�A�<��,����E-�̽w��֞}�M�����xz[[��>�C�K;�o����"O������V/��g�ko�$07��ǤT��J��P1z�ء�+���'p���w���l,��r^�L�y���{]G�:���$.9^�*�w#g�%~�T�.�����u����,Y�Y�Z��ٳܻa�밙�ː�9�,\�ua��rN𽔒����*~Q,,�X�ಀ��)��G�^>���^��<��b�R���ť�#y�����⃷}m�W��ӏ���CiI�p�H*���9����BJç�|�ñ;�N���	�3��ׯ]H��D�@�J�R:��mV�]�z1��҈ �}�1�E�SB�b0z�qŻ���ƥ�9F�NN�!��%���>��o�^�u��b��s䨖VK�9�]~������}?^��aĀ�q��%�S��ި�l�v� �غ�R_פ���8��ڧ�����}|�]w������{��엚���a�B�e��ߥn�;�\����h��,j��V�l��:�M�)G����� 7~�ږ����{]�{4�����*�PH��#��1��@���(��D��4UI*	k^]�=��`����]t������{ �#�Pl@�V�I f�}���?�����P���> �, �Υ�bYz�|��r�h���SIMز��Jϝ���ȌgL@���9H}n9R߿�M+zKӑ�H� Ⱥ	��"&$�~|�� h�О��{�Wsc׉c"nXC,���}��ǖ�x�'����w��rU���k�}��ܧ���*��r�#'@0���4	"H��i����4j�����A*�(�I��TMR$� q�ZBSp�y`H�6&�&����}Ν;3眽w?��c��(���dͽg�>�ܵ��{����W�y��éK�Ov�<��G6�H�	�ղ_���"oci8Svzv�Y�����H s�_<t�W>���C��]�nhx�X�����߱}��SO=�ӧ~��K ��y�+�1Fd>�0�Ʊ��&�Y�q�����U���������8�o-�ڇ�[�Ex�1z�*� �Z��V��4m�Pi��ݎxY���%з+�mr��n�2����G�?xb��o��g[ R�� #�3	��Hk��G����k���~����O~��{w��W �:�_臵$Fo��X���6�yd[_c��FB��
t�)��p2
��?S_Š[�@:K����]����Z�����5<����B�)���lYVZ[Ւp>qCn4MeY��eI�F3�3}�� ��b�D敒1��!���#ձ�y�s�nuO����at�X���Ls�d��*���Z����-9��h`�ʂ	R�&�F�s�8��U�`*q�^�N d��d�W�! ����n7�m�{�����<�]x2@�Q�#+�l$݉xY�ZM�}��mZs�ɛ�t��{�ʃ���k��%��+�Ǐ��(\����w� �<�^tٻp��oƥ�����?�/|�v<��]�omH�-���v��+b	�Io��� �[.K~�{�IJ�5���N@�B��b)_�ugm��������7�Q�v���1�?�z��kڿ��*�c�k̿�����?��̎�槏t�� a�^�K/�.:�Ǎ���3	�̚�E*F2H���L$xI��bdM-R���T��U+b�Պ$���W���� ����0�劵���i���U__\T � j� u�h�Ff.��Ll0E2U�씍0SQ7'^�Ё�H�dp%��:���& t�ص�s���g��gW�(m���^E�c%��n��e��d h/�[	��8t`?~�7/Ɗ��t����-o����Oû&�A���8�z�k��(��O>���F�߅�<�x���������u��
����=��|�0�^�P����:�
�A�� ��z�7v�c�fH7p)&'�q�Θ=�y
����*k�c���J
L7!�ښ��_n�V?��m���O읝��r���㝘 .�h:�}gy�n�����$F%QՆU4Tt����ؘ9cd6�2�C� q\?+�I4>�&&N���gVA��L]�	���(TB@P Uk�j�Fa.R3S�ôU3eKf�T´�����R�5Fg�RK����	^�	� ��~���f\��C�6�h�����n|�����\sß�n��1����߇G�y?�>��k�W��Q	_�\~����m���k/���ݟŧ���CFZ�~�n��50�@�W�;]�{�U�P8v����C��PLr���V��[����;a��ЩF�-�&@��.���L�@����w��؋���I=6�!��Xi�m<����6'R�YZ	0�A�9D�Q��ZY�R]h���+��M���S=H���0�MD���4$C5oF�w#��A���FP�b%Q�fdu��/Z1����m��|9uS���^ ��kc�����_�]83�,sY�$� Ԛ+кZ/��S�}�X�1����v>����Ӈ�"X66��W��^��c� ���{�O�ބ�C ����
J�����{9B������ǵoz+������պ�����'�W :�-kw� ���K(6"�|��~�a�0�� �`�����X�<�=9���Ȇбݗ�L|�b0��Ը�5bqi$����z	iV�\��ˍ0�6G�������Zd# �/�9���H9�i�gQޗ��(��ijT�`Mӧi�dM�,��Je2���8�l� ��?Z�ӓԬS#k3/��·C��w��@!2���'>u'N?�5{�,��܄��q3~��Nt��'�u��;= z��G���Ղ��A>K���bO�#�Bw����הn�o����l#$�����������ս�s~����~�O艑��l� ��lΠ�4)m��4s��a r>]p%_�ƒ33^���\�.��Q2�F��H�7 `T���!h&�fzZ�s0c��� ���I-:?���!��0��z��,2�};n���N��y��M��3���ۺ�TZ���Jw�5���#T���w�x��Çz�K!�w�N��=*���Ͻ���;YZ�7P,鷒5�� ����al!<�����ϝS�yjO�l�پ29�^�''uἦ�Y��`ņ����X�f.���<�����H�djfr:\�V�
 ��P���0|�
7<���|� �߽ge@�.��p�r�в3W�o>��]�I{�o=�	w�y+����.�(���FG@��ȅɊG����_
�슏�a�_:�����~B�4�-�K_�Go����]����CD�K��a��Π�5V�_yh�%:�K�{�6����=��(
U`r�u;>�:o�
�<.L �N�l� ��DT��@09�M��O���_㪥~�o|�^��?ߎw� ��я��߶��##�*��������{{�����a��$���n�}��z��v�=#�P܈�G|!|����}�x�����*�%���mt�%0��0�!���c�����Gn�Ï]=2:6p��17;���������y�]:[�����ҿ����b����wE^�SzXc�²����2~��=�1|��B��D1��ODdNDSy�lh�{�{��҉�7"zuL �N\�
�Y����b#Z�0~�{o�����wֿ�ڷ�?��f��{���_ �<h��#ӻ�Ϛ|�߼��
����b �I
�o�s��@������ �@��Dv
��mw�ݫ0����R�l���R=��CDǇ	 �Ґ��a������61����O��s������+޳�ˮ8�yu�_�&�'�&f���ӓ?�ޖ��<�_3�����C�T�lk`l��?6���Um5���G� ؛ �G{ ������|�jbO#�Z��;�"4,�/�*&���їyEO�K�	 ���._n�d��È�hy��OK��i;��/X���V�^��_[�jl``0��Z-9x���}����ٽkj���|����h�qp�d�6#�G�Wc�yc��EdR�Ȍ�|�'U�5 �(|����k�4������n���>ƭ=X��g��h�fg��H��-�'���c@�td�(&`�J���H�e·�4c��(D�<0��^�Ԫ���VpUUdYo[xU�Xm|-V�7�d�\�Y+ɼ,����u[�jkˏ���	VD� �@��&&�5����1�5�9c2��A*�dV�$���t*��o��SAjmd�#+�%��(��Xu��:��dn@�W�8d�%��`�h�u+s�+�l1��$��9����4�Ρ$!�,��A�2�D$3����ԭ�b�B��`��Jq�&%4�)4��[��������ii:� ��,E����J�B���2�.�ƄV�z猗,(R�h�E0R��J����`�4�Ȇ.B�^�D�z1 :yzZ�6ʰu ��b����J���#h��Cmk��������RM"hҔZb=RԐ񪟈N ���'�J0�,쬁5M��A���@k��Fc1��%pY	ny�,�esp�s��	�8& D�8�D`r2>	��6���H3Ϳ�����2�� ��8��8���Ra@�׳QLg��#�� �>-& D�<��Gz"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""�7��Ej�˥L�    IEND�B`�