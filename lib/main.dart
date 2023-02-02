import './imports.dart';

void main() {
  runApp(const FlutterPractice());
}

class FlutterPractice extends StatelessWidget {
  const FlutterPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppController()),
      ],
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: context.read<AppController>().router,
        );
      }
    );
  }
}
