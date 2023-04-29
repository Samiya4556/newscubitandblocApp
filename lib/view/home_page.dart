import 'package:cubitlesson4/core/cubit/news/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                title: const Text("News cubit app"),
              ),
              body: Builder(builder: (context) {
                if (state is NewsLoadingState) {
                 return  const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is NewsErrorState) {
                  return Center(
                    child: Text(state.error),
                  );
                } else if (state is NewsComleteState) {
                  return SizedBox(
                    height: size.height * 0.4,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              width: size.width * 0.32,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(state
                                                  .news.data![index].img
                                                  .toString()))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },itemCount: state.news.data!.length,),
                  );
                } else {
                  return const SizedBox();
                }
              }),
            ));
  }
}
