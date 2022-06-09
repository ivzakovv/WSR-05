use library_ex_2015
SELECT        dbo.books.b_name, dbo.subscriptions.sb_start, dbo.subscribers.s_id, dbo.subscribers.s_name, dbo.subscriptions.sb_finish
FROM            dbo.books INNER JOIN
                         dbo.subscriptions ON dbo.books.b_id = dbo.subscriptions.sb_book INNER JOIN
                         dbo.subscribers ON dbo.subscriptions.sb_subscriber = dbo.subscribers.s_id