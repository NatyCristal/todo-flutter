import 'package:flutter/material.dart';
import 'package:todo/core/theme/colors.dart';
import 'package:todo/core/theme/styles.dart';
import 'package:todo/core/widgets/android/components/painter_componente.dart';
import 'package:todo/core/widgets/android/row_widget.dart';
import 'package:todo/modules/todo/presentation/android/store/home_page_store.dart';

class AddNoteDesktop extends StatelessWidget {
  final HomePageStore store;
  const AddNoteDesktop({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        store.createNewNote = false;
      },
      child: Container(
        alignment: Alignment.center,
        width: 600,
        padding: padding,
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 200,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: borderRadius,
          color: backGroundCards,
        ),
        child: SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row2Components(
                    firstWidget: const SizedBox(
                      width: 400,
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Titulo",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    secondWidget: Icon(
                      Icons.pie_chart_rounded,
                      color: titleTextColor.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Criar uma nota...",
                  border: InputBorder.none,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const PainterComponent(),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_today_rounded,
                      color: titleTextColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
