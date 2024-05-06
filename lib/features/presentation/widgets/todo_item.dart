part of 'widgets.dart';


class TodoList  extends StatelessWidget {

  final Todo todo;
  const TodoList ({super.key,required this.todo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {
       // TODO: navigate to each todo item
      },
      child: Container(
        key: const Key('todo item'),
        margin: EdgeInsets.only(
          bottom: 16,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    todo.description ?? "Nothing Todo",
                    style: blackTextStyle.copyWith(fontSize: 13),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 8,  
                  ),
                  Text(
                    todo.completed ? "Done" : "Todo",
                    style: greyTextStyle.copyWith(fontSize: 10),
                  )
                ],
              ) )
          ],
        ),
      ),
    );
  }
}