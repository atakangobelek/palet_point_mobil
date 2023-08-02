import 'package:flutter/material.dart';

class ProposalContentHeader extends StatefulWidget {
  const ProposalContentHeader({Key? key}) : super(key: key);

  @override
  _ProposalContentHeaderState createState() => _ProposalContentHeaderState();
}

class _ProposalContentHeaderState extends State<ProposalContentHeader> {
  int? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 15.0, bottom: 10.0, left: 30.0, right: 30),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Teklif Detayları',
              style: const TextStyle(fontSize: 25).copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Talep Tarihi: 15.09.2023',
                    style: const TextStyle(fontSize: 14).copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Text(
                    'Termin: 25.09.2023',
                    style: const TextStyle(fontSize: 14).copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Ödeme vadesi: 30 gün',
                    style: const TextStyle(fontSize: 14).copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Text(
                    'Nakliye: Satıcı',
                    style: const TextStyle(fontSize: 14).copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: SizedBox(
                    height: 55,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        label: const Text('Teslim Süresi'),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.surface,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                      isExpanded: true,
                      alignment: Alignment.centerRight,
                      value: _selectedDay,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 16,
                      elevation: 16,
                      onChanged: (value) {
                        setState(() {
                          _selectedDay = value;
                        });
                      },
                      items: <int>[for (var i = 0; i <= 150; i++) i]
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value.toString(),
                            style: const TextStyle(
                              fontSize:
                                  16,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Teklif Geçerlilik Süresi'),
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.surface,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen konu giriniz.';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 57,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  label: const Text('Ödeme Şekli'),
                  hintText: '',
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surface,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                isExpanded: true,
                alignment: Alignment.centerRight,
                value: _selectedDay,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 16,
                elevation: 16,
                onChanged: (value) {
                  setState(() {
                    _selectedDay = value;
                  });
                },
                items: <int>[for (var i = 0; i <= 150; i++) i]
                    .map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value.toString(),
                      style: const TextStyle(
                        fontSize:
                            16, // Yazı boyutunu burada ayarlayabilirsiniz
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Teklif İstenen Ürünler',
              style: const TextStyle(fontSize: 16).copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
